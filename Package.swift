// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "OpenCV",
    platforms: [
        .iOS(.v10),
    ],
    products: [
        .library(
            name: "OpenCV",
            targets: ["OpenCV"]),
    ],
    dependencies: [],
    targets: [
        .binaryTarget(
            name: "OpenCV",
            path: "OpenCV.xcframework"
        )
    ]
)
