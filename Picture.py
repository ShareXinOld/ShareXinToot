#!/usr/bin/env python3
import sys
import os
from PyQt5.QtWidgets import QApplication, QWidget
from PyQt5.QtGui import QIcon
import PyQt5
from PyQt5 import *
from gi.repository import Notify
import time
from subprocess import call

class Example(QWidget):
    
    def __init__(self):
        super().__init__()
        
        self.initUI()
        
    def initUI(self):

        self.tweetEdit = QtWidgets.QTextEdit()
        cancel = QtWidgets.QPushButton('Cancel')
        tweet = QtWidgets.QPushButton('Toot')
        cancel.clicked.connect(QtCore.QCoreApplication.instance().quit)
        tweet.clicked.connect(self.tweet)

        grid = QtWidgets.QGridLayout()
        grid.setSpacing(10)

        grid.addWidget(self.tweetEdit, 0, 0)
        grid.addWidget(cancel, 1, 0)
        grid.addWidget(tweet, 2, 0)
        
        self.setLayout(grid)
        
        self.setGeometry(480, 280, 350, 240)
        self.setWindowTitle('Toot message')    
        self.show()
    def tweet(self):
        self.close()
        tweet = self.tweetEdit.toPlainText()
        call(["toot", "post", "-m", "/tmp/sharexin_img.png", tweet])
        Notify.init('ShareXin')
        Sent = Notify.Notification.new('Success', tweet)
        Sent.show()
        time.sleep(2)
        Sent.close()
        
if __name__ == '__main__':
    app = QApplication(sys.argv)
    ex = Example()
    sys.exit(app.exec_()) 
