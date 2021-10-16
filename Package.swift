// swift-tools-version:5.1
import PackageDescription

let package = Package(
    name: "BluetoothLinux",
    products: [
        .library(
            name: "BluetoothLinux",
            targets: ["BluetoothLinux"]
        )
    ],
    dependencies: [
        .package(
            url: "https://github.com/PureSwift/Bluetooth.git",
            .branch("master")
        ),
        .package(
            url: "https://github.com/PureSwift/swift-system.git",
            .branch("master")
        )
    ],
    targets: [
        .target(
            name: "BluetoothLinux",
            dependencies: [
                "Bluetooth",
                "CBluetoothLinux",
                "SystemPackage"
            ]
        ),
        .target(
            name: "CBluetoothLinux"
        ),
        .target(
            name: "CBluetoothLinuxTest"
        ),
        .testTarget(
            name: "BluetoothLinuxTests",
            dependencies: [
                "BluetoothLinux",
                "CBluetoothLinuxTest"
            ]
        )
    ]
)
