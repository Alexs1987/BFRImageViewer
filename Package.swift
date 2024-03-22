// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "BFRImageViewer",
    platforms: [
        .iOS(.v13),
    ],
    products: [
        .library(
            name: "BFRImageViewer",
            type: .static,
            targets: ["BFRImageViewer"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/pinterest/PINRemoteImage.git", .branch("master")),
    ],
    targets: [
        .target(
            name: "BFRImageViewer",
            dependencies: ["PINRemoteImage"],
            path: "BFRImageViewController",
            resources: [
                .process("Resources")
            ],
            publicHeadersPath: "include",
            cSettings: [
                .headerSearchPath("."),
            ]
        )
    ]
)
