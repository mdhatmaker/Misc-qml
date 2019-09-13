from PySide2.QtWidgets import QApplication
from PySide2.QtQuick import QQuickView, QQuickPaintedItem
from PySide2.QtCore import QUrl, Signal, Property
from PySide2.QtGui import QColor, QPen, QPainter
from PySide2.QtQml import qmlRegisterType
import sys
import os

class PieChart (QQuickPaintedItem):
    def __init__(self, parent = None):
        QQuickPaintedItem.__init__(self, parent)
        self.myColor = QColor()

    def paint(self, painter):
        pen = QPen(self.myColor, 2)
        painter.setPen(pen)
        painter.setRenderHints(QPainter.Antialiasing, True)
        # From drawPie(const QRect &rect, int startAngle, int spanAngle)
        painter.drawPie(self.boundingRect().adjusted(1,1,-1,-1), 90 * 16, 290 * 16)

    def getColor(self):
        return self.myColor

    def setColor(self, value):
        if value != self.myColor:
            self.myColor = value
            self.update()
            self.colorChanged.emit()

    colorChanged = Signal()
    color = Property(QColor, getColor, setColor, notify=colorChanged)


app = QApplication([])
# Register any python classes that extend QML:
qmlRegisterType(PieChart, 'Charts', 1, 0, 'PieChart');

view = QQuickView()
current_path = os.path.abspath(os.path.dirname(__file__))
qml_file = os.path.join(current_path, 'piechart.qml')
#url = QUrl(qml_file)
#view.setSource(url)
view.setSource(QUrl.fromLocalFile(qml_file))
if view.status() == QQuickView.Error:
    sys.exit(-1)

# When programming for Desktop:
view.setResizeMode(QQuickView.SizeRootObjectToView)  # force the outer QML rectangle to resize along with the outer window
view.show()

res = app.exec_()

# To ensure the correct destruction order, del must be invoked on the view object
# before quitting the application.
del view
sys.exit(res)
