# Dr. Kaputa
# PyQt4 OpenCV Integration
import sys
from PyQt4.QtGui import *
from PyQt4.QtCore import *
from Tracker import *
from ParameterChange import *
from globals import globals

# main window class that holds everything
class MainWindow(QMainWindow):
  def __init__(self):
    super(MainWindow, self).__init__()

    self.setWindowTitle("Detect Tennis Ball:Lab 1")
    self.settings=QSettings("RIT", "Hakeem Buchanan")

    # open default file
    fileName = 'parameters.txt'
    with open(fileName) as f:
      globals.comPort                 = int(f.readline().split("= ")[1])
      globals.redMin                  = int(f.readline().split("= ")[1])
      globals.redMax                  = int(f.readline().split("= ")[1])
      globals.greenMin                = float(f.readline().split("= ")[1])
      globals.greenMax                = float(f.readline().split("= ")[1])
      globals.blueMin                 = float(f.readline().split("= ")[1])
      globals.blueMax                 = float(f.readline().split("= ")[1])

    # instantiate the dock widgets
    self.Tracker = TrackerHolder(self)
    self.calibration = ParameterChange(self)

    # load in the docks
    self.setupDocks()

    # load in the style sheet
    styleFile ="styleSheet.txt"
    with open(styleFile,"r") as fh:
      self.setStyleSheet(fh.read())

    # restore dock locations
    if self.settings.value("state"):
      self.restoreGeometry(self.settings.value("geometry").toByteArray())
      self.restoreState(self.settings.value("state").toByteArray())
      self.move(self.settings.value("windowPos", QVariant(QPoint(50, 50))).toPoint())
      self.resize(self.settings.value("windowSize", QVariant(QSize(555, 550))).toSize())
      self.setWindowState(Qt.WindowState(self.settings.value("windowState").toInt()[0]))

  def setupDocks(self):
    self.TrackerDock = QDockWidget(self)
    self.TrackerDock.setWidget(self.Tracker)
    self.TrackerDock.setWindowTitle("Detect Tennis Ball ")
    self.TrackerDock.setObjectName("Detect Tennis Ball")
    self.TrackerDock.setContentsMargins(0, 0, 0, 0)
    self.TrackerDock.setFeatures(QDockWidget.AllDockWidgetFeatures)
    self.TrackerDock.setAllowedAreas(Qt.AllDockWidgetAreas)
    self.addDockWidget(Qt.LeftDockWidgetArea, self.TrackerDock)

    self.calibrationDock = QDockWidget(self)
    self.calibrationDock.setWidget(self.calibration)
    self.calibrationDock.setWindowTitle("Parameter Set")
    self.calibrationDock.setObjectName("Parameter Set")
    self.calibrationDock.setContentsMargins(0, 0, 0, 0)
    self.calibrationDock.setFeatures(QDockWidget.AllDockWidgetFeatures)
    self.calibrationDock.setAllowedAreas(Qt.AllDockWidgetAreas)
    self.addDockWidget(Qt.LeftDockWidgetArea, self.calibrationDock)

    DOCKOPTIONS = QMainWindow.AllowTabbedDocks
    DOCKOPTIONS = DOCKOPTIONS|QMainWindow.AllowNestedDocks
    DOCKOPTIONS = DOCKOPTIONS|QMainWindow.AnimatedDocks
    self.setDockOptions(DOCKOPTIONS)
    self.setTabPosition(Qt.AllDockWidgetAreas,QTabWidget.North)

  def closeEvent(self, event):
    self.settings.setValue('geometry', self.saveGeometry())
    self.settings.setValue('state', self.saveState())
    self.settings.setValue("windowState", QVariant(self.windowState()))
    self.settings.setValue("windowSize", QVariant(self.size()))
    self.settings.setValue("windowPos", QVariant(self.pos()))
    self.settings.sync()
    QMainWindow.closeEvent(self, event)

# start of the program that instantiates a MainWindow class
def main():
  app = QApplication(sys.argv)
  mainWindow = MainWindow()
  mainMenu=mainWindow.menuBar()
  mainMenu.setNativeMenuBar(False)
  fileMenu = mainMenu.addMenu('File')

  exitButton = QAction(QIcon('exit24.png'), 'Exit', mainWindow)
  exitButton.setShortcut('Ctrl+Q')
  exitButton.setStatusTip('Exit application')
  exitButton.triggered.connect(mainWindow.close)
  fileMenu.addAction(exitButton)

  AddButton = QAction(QIcon('exit24.png'), 'Add', mainWindow)
  AddButton.setStatusTip('Add image file')
  AddButton.triggered.connect(mainWindow.calibration.loadImage)
  fileMenu.addAction(AddButton)


  mainWindow.show()
  sys.exit(app.exec_())

if __name__ == '__main__':
    main()
