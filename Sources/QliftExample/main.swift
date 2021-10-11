//
// Simple Qlift example
//

import Foundation
import Qlift

func main() -> Int32 {
    let application = QApplication()
    application.setStyle("Fusion")
    let mainWindow = MainWindow()
    mainWindow.show()
    return application.exec()
}

exit(main())

