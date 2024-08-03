// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "BridgingLogicPackageObjc",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "BridgingLogicPackageObjc",
            targets: ["BridgingLogicPackageObjc"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Brudus/business-logic-package", exact: "0.0.4")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(name: "BridgingLogicPackageObjc", dependencies: [
            .product(name: "BusinessLogicPackage", package: "business-logic-package")
        ]),
        .testTarget(
            name: "BridgingLogicPackageObjcTests",
            dependencies: ["BridgingLogicPackageObjc"]),
    ]
)
