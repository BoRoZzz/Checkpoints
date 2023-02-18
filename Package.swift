// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "Checkpoints",
    platforms: [
        .macOS(.v12),
    ],
    products: [
        .library(
            name: "Checkpoints",
            targets: ["Checkpoints"]),
    ],
    dependencies: [
        .package(url: "https://github.com/BoRoZzz/HsExtensions.git", .branch("main")),
    ],
    targets: [
        .target(
            name: "Checkpoints",
            dependencies: [
                .product(name: "HsExtensions", package: "HsExtensions"),
            ],
            resources: [
                .copy("Assets")
            ]),
        .testTarget(
            name: "CheckpointTests",
            dependencies: [
                "Checkpoints",
                .product(name: "HsExtensions", package: "HsExtensions"),
            ]),
    ]
)
