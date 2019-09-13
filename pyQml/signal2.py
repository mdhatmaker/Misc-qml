import sys
#from PySide2 import QtCore, QtGui, QtWidgets
from PySide2.QtWidgets import QApplication, QPushButton                
from PySide2.QtCore import QObject, Signal, Slot

# https://wiki.qt.io/Qt_for_Python_Signals_and_Slots

# define a new slot that receives a string and has                      
# 'saySomeWords' as its name                                           
@Slot(str)                                                             
def say_some_words(words):                                              
    print(words)                                                       

# define a new slot that receives a C 'int' or a 'str'                
# and has 'saySomething' as its name                                    
@Slot(int)                                                            
@Slot(str)                                                         
def say_something(stuff):                                                 
    print(stuff)

class Communicate(QObject):                                 
    # create a new signal on the fly and name it 'speak'              
    speak = Signal(str)                          
    # create two new signals on the fly: one will handle               
    # int type, the other will handle strings                          
    speak_number = Signal(int)                                          
    speak_word = Signal(str)

someone = Communicate()                                                
# connect signal and slot                                            
someone.speak.connect(say_some_words)                                     
# emit 'speak' signal                                          
someone.speak.emit("Hello everybody!")

# connect each signal and slot properly                                   
someone.speak_number.connect(say_something)                       
someone.speak_word.connect(say_something)                                
# emit each 'speak' signal                                          
someone.speak_number.emit(10)                                       
someone.speak_word.emit("Hello everybody else!")



# define a function that will be used as a slot
def sayHello():
    print('Hello world!')

app = QApplication(sys.argv)
button = QPushButton('Say hello!')

# connect the clicked signal to the sayHello slot
button.clicked.connect(sayHello)
button.show()

sys.exit(app.exec_())