// swift-tools-version:5.4

import PackageDescription

let package = Package(
    name: "QliftExample",
    platforms: [.macOS(.v10_13)],
    dependencies: [
        .package(name: "Qlift", url: "https://github.com/DimaRU/qlift", .branch("master")),
    ],
    targets: [
        .executableTarget(
            name: "QliftExample",
            dependencies: ["Qlift"],
            linkerSettings: [
                .linkedFramework("QtWidgets", .when(platforms: [.macOS])),
                .linkedFramework("QtCore", .when(platforms: [.macOS])),
                .linkedFramework("QtGui", .when(platforms: [.macOS])),
            ]
        ),
    ]
)
