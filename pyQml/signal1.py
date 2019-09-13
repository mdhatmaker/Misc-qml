import sys
from PySide2.QtWidgets import QApplication, QPushButton
from PySide2.QtCore import SIGNAL, QObject

def func():
    print("func has been called!")

app = QApplication(sys.argv)
button = QPushButton("Call func")
# OLD signal/slot syntax
#QObject.connect(button, SIGNAL ('clicked()'), func)
# NEW signal/slot syntax
button.clicked.connect(func)
button.show()                                                                                             

sys.exit(app.exec_())