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
            url: "https://public.repo.sygic.com/repository/maven-sygic-releases/com/sygic/adas/vision/1.2.23/vision-1.2.23.zip",
            checksum: "ae03b1572e859622e2e374c562928bf2b6f74ab046b35a2aae86f342d5dabdad")
    ]
)
