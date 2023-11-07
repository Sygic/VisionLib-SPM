// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "VisionLib",
    platforms: [
        .iOS(.v11)
    ],
    products: [
        .library(
            name: "VisionLib",
            targets: ["VisionLib"]),
    ],
    dependencies: [.package(url: "https://github.com/jurajantas/SygicAuth", from: "1.3.1")],
    targets: [
        .binaryTarget(
            name: "VisionLib",
            url: "https://public.repo.sygic.com/repository/maven-sygic-releases/com/sygic/adas/vision/1.2.21/vision-1.2.21-lite.zip",
            checksum: "a7b0d1b4ef8138121c938bad52a5f8febb8fd30350ce1aef41ed263b68a981b7")
    ]
)
