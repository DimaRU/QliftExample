/********************************************************************************
** Form generated from reading UI file 'QliftExample.ui'
**
** Created by: Qlift User Interface Compiler version <undefined>
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

import Qlift


class MainWindow: QMainWindow {
    var centralwidget: QWidget!
    var label: QLabel!

    override init(parent: QWidget? = nil, flags: Qt.WindowFlags = .Widget) {
        super.init(parent: parent, flags: flags)
        self.geometry = QRect(x: 0, y: 0, width: 500, height: 293)
        self.windowTitle = "MainWindow"
        centralwidget = QWidget(parent: self)
        centralwidget.name = "centralwidget"
        label = QLabel(parent: centralwidget)
        label.name = "label"
        label.geometry = QRect(x: 50, y: 20, width: 81, height: 21)
        label.text = "--- Test ---"
        self.centralWidget = centralwidget
    }
}
