// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "VisionLib",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "VisionLib",
            targets: ["VisionLib"]),
    ],
    dependencies: [.package(url: "https://github.com/Sygic/SygicAuth-SPM", from: "1.3.1")],
    targets: [
        .binaryTarget(
            name: "VisionLib",
            url: "https://public.repo.sygic.com/repository/maven-sygic-releases/com/sygic/adas/vision/1.2.22/vision-1.2.22-lite.zip",
            checksum: "992cb7d8296d29743a9243a68b9ab7f2189dc2dc05effd15de4aa0b5149b445f")
    ]
)
