#!/usr/bin/python

import sys
from PySide2.QtWidgets import QApplication, QMessageBox

# Create the application object
app = QApplication(sys.argv)

# Create a simple dialog box
msg_box = QMessageBox()
msg_box.setText("Hello World!")
msg_box.show()

# In this example, we are creating a QApplication even though we are not directly executing it.
# This is because a QMessageBox is being executed independently.
sys.exit(msg_box.exec_())