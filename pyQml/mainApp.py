import sys
import os
from PySide2.QtWidgets import QApplication, QLabel
from PySide2.QtQuick import QQuickView
from PySide2.QtCore import QUrl

app = QApplication(sys.argv)
view = QQuickView()
view.setResizeMode(QQuickView.SizeRootObjectToView)

current_path = os.path.abspath(os.path.dirname(__file__))
qml_file = os.path.join(current_path, 'app.qml')
view.setSource(QUrl.fromLocalFile(qml_file))

if view.status() == QQuickView.Error:
    sys.exit(-1)

view.show()
res = app.exec_()
del view
sys.exit(res)

