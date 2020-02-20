import sys
from os import path
import cv2

import numpy as np
import PyQt4.QtGui as QtWidgets
from PyQt4 import QtCore
from PyQt4 import QtGui
from ParameterChange import *
from globals import globals
import copy

class RecordVideo(QtCore.QObject):
    image_data = QtCore.pyqtSignal(np.ndarray)

    def __init__(self, camera_port=0, parent=None):
        super(RecordVideo, self).__init__()
        #self.camera = cv2.VideoCapture(camera_port)

        #if (self.camera.isOpened()== False):
        #  print("Error opening video stream or file")


        self.timer = QtCore.QBasicTimer()

    def start_recording(self):
        self.timer.start(1000, self)

    def timerEvent(self, event):
        if (event.timerId() != self.timer.timerId()):
            return
       

        data = cv2.imread(str(globals.image))
        print(data)
        #read, data = self.camera.read()
        #if read:
        self.image_data.emit(data)

class Tracker(QtWidgets.QWidget):
    def __init__(self, parent=None):
        super(Tracker, self).__init__()
        script_dir = path.dirname(path.realpath(__file__))
        cascade_filepath = path.join(script_dir,
                                  'data',
                                  'haar.xml')
        haar_cascade_filepath = path.abspath(cascade_filepath)
        self.classifier = cv2.CascadeClassifier(haar_cascade_filepath)
        self.image = QtGui.QImage()
        self._red = (0, 0, 255)
        self._width = 2
        self._min_size = (30, 30)
        self.dockWidth = self.width()
        self.dockHeight = self.height()



    def image_data_slot(self, image_data):
        redMin=globals.redMin
        redMax=globals.redMax
        greenMin=globals.greenMin
        greenMax=globals.greenMax
        blueMin=globals.blueMin
        blueMax=globals.blueMax

        cv2.rectangle(image_data,(globals.redMin,0),(100,0),(100,0),3)
        lower = np.array([0,0,0])
        upper = np.array([255,255,255])

        lower = np.array([blueMin,greenMin,redMin])
        upper = np.array([blueMax,greenMax,redMax])
        #print(lower)
        #print(upper)
        mask = cv2.inRange(image_data, lower, upper)
        mask = cv2.erode(mask, None, iterations=2)
        mask = cv2.dilate(mask, None, iterations=2)

        maskedImage = cv2.bitwise_and(image_data,image_data,mask=mask)
        cv2.imshow('Mask',mask)
        cv2.imshow('Masked Image',maskedImage)
        self.image = self.get_qimage(image_data)



        clone_img = copy.copy(image_data)

        cnts = cv2.findContours(mask.copy(), cv2.RETR_EXTERNAL,cv2.CHAIN_APPROX_SIMPLE)[-2]
        center = None
        # only proceed if at least one contour was found
        if len(cnts) > 0:
          print "counts" + str(len(cnts))
          # find the largest contour in the mask, then use
          # it to compute the minimum enclosing circle and
          # centroid
          c = max(cnts, key=cv2.contourArea)
          ((x, y), radius) = cv2.minEnclosingCircle(c)
          M = cv2.moments(c)
          center = (int(M["m10"] / M["m00"]), int(M["m01"] / M["m00"]))

          # only proceed if the radius meets a minimum size
          if radius > 10:
            # draw the circle and centroid on the frame,
            # then update the list of tracked points
            cv2.circle(clone_img, (int(x), int(y)), int(radius),(0, 255, 255), 2)
            cv2.circle(clone_img, center, 5, (0, 0, 255), -1)

        cv2.imshow('Result',clone_img)


        self.update()

    def get_qimage(self, image):
        height, width, colors = image.shape
        bytesPerLine = 3 * width
        QImage = QtGui.QImage

        image = QImage(image.data,
                       width,
                       height,
                       bytesPerLine,
                       QImage.Format_RGB888)


        image = image.scaledToHeight(self.dockHeight)
        image = image.scaledToWidth(self.dockWidth)
        image = image.rgbSwapped()
        return image

    def paintEvent(self, event):
        painter = QtGui.QPainter(self)
        painter.drawImage(0, 0, self.image)
        self.image = QtGui.QImage()

    def resizeEvent(self, event):
        self.dockWidth = self.width()
        self.dockHeight = self.height()

class TrackerHolder(QtWidgets.QWidget):
    def __init__(self, haarcascade_filepath, parent=None):
        super(TrackerHolder, self).__init__()
        fp = haarcascade_filepath
        self.ball_detection_widget = Tracker(fp)

        self.record_video = RecordVideo()

        image_data_slot = self.ball_detection_widget.image_data_slot
        self.record_video.image_data.connect(image_data_slot)

        layout = QtWidgets.QVBoxLayout()

        layout.addWidget(self.ball_detection_widget)
        #self.run_button = QtWidgets.QPushButton('Start')
        #layout.addWidget(self.run_button)

        #self.run_button.clicked.connect(self.record_video.start_recording)
        self.record_video.start_recording()
        self.setLayout(layout)
