// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "HPOnRenderApi",
    platforms: [
        .macOS(.v12),
        .iOS(.v15)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "HPOnRenderApi",
            targets: ["HPOnRenderApi"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "HPOnRenderApi"),
        .testTarget(
            name: "HPOnRenderApiTests",
            dependencies: ["HPOnRenderApi"],
            resources: [
                .copy("Mocks/characters.json"),
                .copy("Mocks/spells.json"),
            ]
        ),
    ]
)
