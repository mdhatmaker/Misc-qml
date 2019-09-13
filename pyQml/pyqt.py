# -*- coding: utf-8 -*-
from PyQt5.QtQml import qmlRegisterType
#from PySide2.QtWidgets import *
from PyQt5.QtWidgets import *

#from .file_system_tree_model import FileSystemTreeModel

MODULE_NAME = 'filesystem'

def register_types():
    qmlRegisterType(myclass, importName, 1, 0, className)

app = QApplication([])

#text_area = QTextEdit()
#text_area.show()

layout = QVBoxLayout()
layout.addWidget(QTextEdit())
layout.addWidget(QLineEdit())
window = QWidget()
window.setLayout(layout)
window.show()

app.exec_()