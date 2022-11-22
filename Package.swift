// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Package4500",
    products: [
        .library(
            name: "Package4500",
            targets: ["Package4500"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "Package4500",
            dependencies: [],
            resources: [
                // Adding a resource should generate a bundle for the target.
                .process("resource.txt")
            ]
        ),
        .testTarget(
            name: "Package4500Tests",
            dependencies: ["Package4500"]),
    ]
)
