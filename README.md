# QliftExample

A trivial Qlift example shows Swift Package Manager bug.

### Requrements
```
brew install qt@5
```


### Build log

```bash
i-dmitry:~/…/qlift/QliftExample% swift --version
swift-driver version: 1.26.9 Apple Swift version 5.5 (swiftlang-1300.0.31.1 clang-1300.0.29.1)
Target: x86_64-apple-macosx11.0
i-dmitry:~/…/qlift/QliftExample% PKG_CONFIG_PATH=/usr/local/lib/pkgconfig:/usr/local/opt/qt5/lib/pkgconfig
i-dmitry:~/…/qlift/QliftExample% swift build
'CQt5Widgets' Qt5Widgets.pc: warning: prohibited flag(s): -DQT_WIDGETS_LIB, -DQT_CORE_LIB, -DQT_GUI_LIB, -DQT_CORE_LIB
ld: framework not found -F/usr/local/Cellar/qt@5/5.15.2/lib
[120/121] Linking QliftExample
i-dmitry:~/…/qlift/QliftExample% swift build -v
/usr/bin/xcrun --sdk macosx --show-sdk-platform-path
/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/swiftc -print-target-info
/usr/bin/xcrun --sdk macosx --find xctest
/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/swiftc -print-target-info
/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/swift-frontend -frontend -print-target-info -sdk /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX11.3.sdk
/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/swift-frontend -frontend -print-target-info
/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/swift-frontend -frontend -emit-supported-features /var/folders/gs/_3vlw5xn2nq9ksrb_nflh0jw0000gn/T/TemporaryDirectory.slr48f/dummyInput-1.swift
/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/swiftc -sdk /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX11.3.sdk -F /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/Library/Frameworks -I /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/usr/lib -L /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/usr/lib -F/usr/local/Cellar/qt@5/5.15.2/lib -framework -F/usr/local/Cellar/qt@5/5.15.2/lib -framework -F/usr/local/Cellar/qt@5/5.15.2/lib -framework -F/usr/local/Cellar/qt@5/5.15.2/lib -framework -lc++ -L /Users/dmitry/Developer/qlift/QliftExample/.build/x86_64-apple-macosx/debug -o /Users/dmitry/Developer/qlift/QliftExample/.build/x86_64-apple-macosx/debug/QliftExample -module-name QliftExample -emit-executable -Xlinker -rpath -Xlinker @loader_path @/Users/dmitry/Developer/qlift/QliftExample/.build/x86_64-apple-macosx/debug/QliftExample.product/Objects.LinkFileList -Xlinker -rpath -Xlinker /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/swift/macosx -target x86_64-apple-macosx10.13 -framework QtWidgets -framework QtCore -framework QtGui -Xlinker -add_ast_path -Xlinker /Users/dmitry/Developer/qlift/QliftExample/.build/x86_64-apple-macosx/debug/Qlift.swiftmodule -Xlinker -add_ast_path -Xlinker /Users/dmitry/Developer/qlift/QliftExample/.build/x86_64-apple-macosx/debug/QliftExample.build/QliftExample.swiftmodule -L /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib
ld: framework not found -F/usr/local/Cellar/qt@5/5.15.2/lib
i-dmitry:~/…/qlift/QliftExample%
```

### Contents of `Qt5Widgets.pc`

```
prefix=/usr/local/Cellar/qt@5/5.15.2
exec_prefix=${prefix}
libdir=${prefix}/lib
includedir=${prefix}/lib/QtWidgets.framework/Headers


Name: Qt5 Widgets
Description: Qt Widgets module
Version: 5.15.2
Libs: -F${libdir} -framework QtWidgets
Cflags: -DQT_WIDGETS_LIB -I${includedir} -F${libdir}
Requires: Qt5Core Qt5Gui
```

