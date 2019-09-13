from PySide2.QtWidgets import QApplication
from PySide2.QtQuick import QQuickView
from PySide2.QtCore import QUrl
import sys
import os

app = QApplication([])
view = QQuickView()
current_path = os.path.abspath(os.path.dirname(__file__))
qml_file = os.path.join(current_path, 'view.qml')
url = QUrl(qml_file)

view.setSource(url)
#view.setSource(QUrl.fromLocalFile(qml_file))
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
