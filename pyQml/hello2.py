from PySide2.QtWidgets import QApplication, QPushButton, QWidget, QLabel, QVBoxLayout
from PySide2.QtWidgets import (QItemDelegate, QSpinBox, QStyledItemDelegate, QStyle, QStyleOptionViewItem)
from PySide2.QtCore import SIGNAL, QObject, Signal, Slot, QEvent, QSize, Qt
from PySide2.QtSql import QSqlRelationalDelegate
from PySide2.QtGui import QMouseEvent, QPixmap, QPalette
import sys
import random

class MyWidget(QWidget):
    def __init__(self):
        super().__init__()

        self.hello = ["Hallo Welt", "Hei maailma", "Hola Mundo", "Привет мир"]

        self.button = QPushButton("Click me!")
        self.text = QLabel("Hello World")
        self.text.setAlignment(Qt.AlignCenter)

        self.layout = QVBoxLayout()
        self.layout.addWidget(self.text)
        self.layout.addWidget(self.button)
        self.setLayout(self.layout)

        self.button.clicked.connect(self.magic)

    @Slot()
    def magic(self):
        self.text.setText(random.choice(self.hello))

if __name__ == "__main__":
    app = QApplication([])

    widget = MyWidget()
    widget.resize(800, 600)
    widget.show()

    sys.exit(app.exec_())
