// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "OpenCVPackage",
    platforms: [
        .iOS(.v10),
    ],
    products: [
        .library(
            name: "OpenCVPackage",
            targets: ["OpenCVPackage"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "OpenCVPackage",
            dependencies: ["OpenCV"],
            path: "Sources/OpenCVPackage",
            linkerSettings: [
                .linkedLibrary("c++"),
                .linkedFramework("Accelerate")
            ]
        ),
        .binaryTarget(
            name: "OpenCV",
            path: "OpenCV.xcframework"
        )
    ],
    cxxLanguageStandard: .cxx11
)
