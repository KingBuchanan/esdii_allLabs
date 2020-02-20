import sys
from PyQt4 import QtGui, QtCore
import os
from globals import globals

class ParameterChange(QtGui.QWidget):
  def __init__(self, parent=None):
    super(ParameterChange, self).__init__(parent)
    iamgeRead=""
    self.labelredMinTitle = QtGui.QLabel(self)
    self.labelredMinTitle.setText("Red Min")
    self.redMin = QtGui.QSlider(QtCore.Qt.Horizontal, self)
    self.redMin.setSingleStep(1)
    self.redMin.setMinimum(0)
    self.redMin.setMaximum(255)
    self.redMin.valueChanged[int].connect(self.redMinChanged)
    self.redMinEdit = QtGui.QLineEdit(self)
    self.redMinEdit.returnPressed.connect(self.redMinEditChanged)
    self.redMinGroup = QtGui.QGroupBox()
    layoutredMin = QtGui.QHBoxLayout()
    layoutredMin.addWidget(self.labelredMinTitle)
    layoutredMin.addWidget(self.redMinEdit)
    layoutredMinVertical = QtGui.QVBoxLayout()
    layoutredMinVertical.addLayout(layoutredMin)
    layoutredMinVertical.addWidget(self.redMin)
    self.redMinGroup.setLayout(layoutredMinVertical)

    self.labelredMaxTitle = QtGui.QLabel(self)
    self.labelredMaxTitle.setText("Red Max")
    self.redMax = QtGui.QSlider(QtCore.Qt.Horizontal, self)
    self.redMax.setSingleStep(1)
    self.redMax.setMinimum(0)
    self.redMax.setMaximum(255)
    self.redMax.valueChanged[int].connect(self.redMaxChanged)
    self.redMaxEdit = QtGui.QLineEdit(self)
    self.redMaxEdit.returnPressed.connect(self.redMaxEditChanged)
    self.redMaxGroup = QtGui.QGroupBox()
    layoutredMax = QtGui.QHBoxLayout()
    layoutredMax.addWidget(self.labelredMaxTitle)
    layoutredMax.addWidget(self.redMaxEdit)
    layoutredMaxVertical = QtGui.QVBoxLayout()
    layoutredMaxVertical.addLayout(layoutredMax)
    layoutredMaxVertical.addWidget(self.redMax)
    self.redMaxGroup.setLayout(layoutredMaxVertical)

    self.labelgreenMinTitle = QtGui.QLabel(self)
    self.labelgreenMinTitle.setText("Green Min")
    self.greenMin = QtGui.QSlider(QtCore.Qt.Horizontal, self)
    self.greenMin.setSingleStep(1)
    self.greenMin.setMinimum(0)
    self.greenMin.setMaximum(255)
    self.greenMin.valueChanged[int].connect(self.greenMinChanged)
    self.greenMinEdit = QtGui.QLineEdit(self)
    self.greenMinEdit.returnPressed.connect(self.greenMinEditChanged)
    self.greenMinGroup = QtGui.QGroupBox()
    layoutgreenMin = QtGui.QHBoxLayout()
    layoutgreenMin.addWidget(self.labelgreenMinTitle)
    layoutgreenMin.addWidget(self.greenMinEdit)
    layoutgreenMinVertical = QtGui.QVBoxLayout()
    layoutgreenMinVertical.addLayout(layoutgreenMin)
    layoutgreenMinVertical.addWidget(self.greenMin)
    self.greenMinGroup.setLayout(layoutgreenMinVertical)

    self.labelgreenMaxTitle = QtGui.QLabel(self)
    self.labelgreenMaxTitle.setText("Green Max")
    self.greenMax = QtGui.QSlider(QtCore.Qt.Horizontal, self)
    self.greenMax.setSingleStep(1)
    self.greenMax.setMinimum(0)
    self.greenMax.setMaximum(255)
    self.greenMax.valueChanged[int].connect(self.greenMaxChanged)
    self.greenMaxEdit = QtGui.QLineEdit(self)
    self.greenMaxEdit.returnPressed.connect(self.greenMaxEditChanged)
    self.greenMaxGroup = QtGui.QGroupBox()
    layoutgreenMax = QtGui.QHBoxLayout()
    layoutgreenMax.addWidget(self.labelgreenMaxTitle)
    layoutgreenMax.addWidget(self.greenMaxEdit)
    layoutgreenMaxVertical = QtGui.QVBoxLayout()
    layoutgreenMaxVertical.addLayout(layoutgreenMax)
    layoutgreenMaxVertical.addWidget(self.greenMax)
    self.greenMaxGroup.setLayout(layoutgreenMaxVertical)

    self.labelblueMinTitle = QtGui.QLabel(self)
    self.labelblueMinTitle.setText("blueMin")
    self.blueMin = QtGui.QSlider(QtCore.Qt.Horizontal, self)
    self.blueMin.setSingleStep(1)
    self.blueMin.setMinimum(0)
    self.blueMin.setMaximum(255)
    self.blueMin.valueChanged[int].connect(self.blueMinChanged)
    self.blueMinEdit = QtGui.QLineEdit(self)
    self.blueMinEdit.returnPressed.connect(self.blueMinEditChanged)
    self.blueMinGroup = QtGui.QGroupBox()
    layoutblueMin = QtGui.QHBoxLayout()
    layoutblueMin.addWidget(self.labelblueMinTitle)
    layoutblueMin.addWidget(self.blueMinEdit)
    layoutblueMinVertical = QtGui.QVBoxLayout()
    layoutblueMinVertical.addLayout(layoutblueMin)
    layoutblueMinVertical.addWidget(self.blueMin)
    self.blueMinGroup.setLayout(layoutblueMinVertical)

    self.labelblueMaxTitle = QtGui.QLabel(self)
    self.labelblueMaxTitle.setText("blueMax")
    self.blueMax = QtGui.QSlider(QtCore.Qt.Horizontal, self)
    self.blueMax.setSingleStep(1)
    self.blueMax.setMinimum(0)
    self.blueMax.setMaximum(255)
    self.blueMax.valueChanged[int].connect(self.blueMaxChanged)
    self.blueMaxEdit = QtGui.QLineEdit(self)
    self.blueMaxEdit.returnPressed.connect(self.blueMaxEditChanged)
    self.blueMaxGroup = QtGui.QGroupBox()
    layoutblueMax = QtGui.QHBoxLayout()
    layoutblueMax.addWidget(self.labelblueMaxTitle)
    layoutblueMax.addWidget(self.blueMaxEdit)
    layoutblueMaxVertical = QtGui.QVBoxLayout()
    layoutblueMaxVertical.addLayout(layoutblueMax)
    layoutblueMaxVertical.addWidget(self.blueMax)
    self.blueMaxGroup.setLayout(layoutblueMaxVertical)

    self.loadFileButton = QtGui.QPushButton("Load Config File")
    self.loadFileButton.setSizePolicy(QtGui.QSizePolicy.Expanding,QtGui.QSizePolicy.Expanding)
    self.loadFileButton.clicked[bool].connect(self.loadFileButtonClicked)

    self.saveFileButton = QtGui.QPushButton("Save Config File")
    self.saveFileButton.setSizePolicy(QtGui.QSizePolicy.Expanding,QtGui.QSizePolicy.Expanding)
    self.saveFileButton.clicked[bool].connect(self.saveFileButtonClicked)

    layout2 = QtGui.QHBoxLayout()
    layout2.addWidget(self.loadFileButton)
    layout2.addWidget(self.saveFileButton)
    layout = QtGui.QVBoxLayout()
    layoutEncoder = QtGui.QVBoxLayout()
    layoutUltrasonic = QtGui.QVBoxLayout()
    layout3 = QtGui.QHBoxLayout()
    layout.addWidget(self.redMinGroup)
    layout.addWidget(self.redMaxGroup)
    layout.addWidget(self.greenMinGroup)
    layout.addWidget(self.greenMaxGroup)
    layout.addWidget(self.blueMinGroup)
    layout.addWidget(self.blueMaxGroup)

    layout.addLayout(layout2)
    self.setLayout(layout)

    self.redMin.setValue(globals.redMin)
    self.greenMin.setValue(globals.greenMin)
    self.redMax.setValue(globals.redMax)
    self.greenMax.setValue(globals.greenMax)
    self.blueMin.setValue(globals.blueMin)
    self.blueMax.setValue(globals.blueMax)

    self.show()

###############################################################################
# link the edit boxes to the sliders
###############################################################################
  def redMinChanged(self, value):
    globals.redMin = value
    self.redMinEdit.setText(str(value))

  def redMinEditChanged(self):
    globals.redMin = int(self.redMinEdit.text())
    self.redMin.setValue(globals.redMin)

  def redMaxChanged(self, value):
    globals.redMax = value
    self.redMaxEdit.setText(str(value))

  def redMaxEditChanged(self):
    globals.redMax = int(self.redMaxEdit.text())
    self.redMax.setValue(globals.redMax)

  def greenMinChanged(self, value):
    globals.greenMin = value
    self.greenMinEdit.setText(str(value))

  def greenMinEditChanged(self):
    globals.greenMin = int(self.greenMinEdit.text())
    self.greenMin.setValue(globals.greenMin)

  def greenMaxChanged(self, value):
    globals.greenMax = value
    self.greenMaxEdit.setText(str(value))

  def greenMaxEditChanged(self):
    globals.greenMax = int(self.greenMaxEdit.text())
    self.greenMax.setValue(globals.greenMax)

  def blueMinChanged(self, value):
    globals.blueMin = value
    self.blueMinEdit.setText(str(value))

  def blueMinEditChanged(self):
    globals.blueMin = int(self.blueMinEdit.text())
    self.blueMin.setValue(globals.blueMin)

  def blueMaxChanged(self, value):
    globals.blueMax = value
    self.blueMaxEdit.setText(str(value))

  def blueMaxEditChanged(self):
    globals.blueMax = int(self.blueMaxEdit.text())
    self.blueMax.setValue(globals.blueMax)


###############################################################################
# save and load calibration files
###############################################################################
  def loadFileButtonClicked(self):
    fileName = QtGui.QFileDialog.getOpenFileName(None, "Enter Filename.",".txt","(*.txt)")
    if not fileName:
      pass
    else:
      with open(fileName) as f:
        globals.comPort                 = int(f.readline().split("= ")[1])
        globals.blueMin                = int(f.readline().split("= ")[1])
        globals.redMin                  = int(f.readline().split("= ")[1])
        globals.greenMin                = int(f.readline().split("= ")[1])
        globals.redMax                    = int(f.readline().split("= ")[1])
        globals.blueMax                     = int(f.readline().split("= ")[1])
        globals.greenMax                    = int(f.readline().split("= ")[1])

      self.redMin.setValue(globals.redMin)
      self.greenMin.setValue(globals.greenMin)
      self.blueMin.setValue(globals.blueMin)
      self.redMax.setValue(globals.redMax)
      self.blueMax.setValue(globals.blueMax)
      self.greenMax.setValue(globals.blueMax)


  def saveFileButtonClicked(self):
    fileName = QtGui.QFileDialog.getSaveFileName(None, "Enter Filename",".txt","(*.txt)")
    if fileName == "":
      return
    with open(fileName,"w") as f:
      f.write("comPort                        = " + str(globals.comPort)                + "\n")
      f.write("blueMin                        = " + str(globals.blueMin)               + "\n")
      f.write("redMin                         = " + str(globals.redMin)             + "\n")
      f.write("greenMin                       = " + str(globals.greenMin)               + "\n")
      f.write("blueMax                        = " + str(globals.blueMax)                   + "\n")
      f.write("redMax                         = " + str(globals.redMax)                    + "\n")
      f.write("greenMax                       = " + str(globals.greenMax)      + "\n")







  def loadImage(self):
         fileName = QtGui.QFileDialog.getOpenFileName(None, "Enter Filename.",".jpg","(*.jpg)")
         if not fileName:
           pass
         else:
             print(fileName)
             globals.images=fileName
