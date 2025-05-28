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
            url: "https://public.repo.sygic.com/repository/maven-sygic-releases/com/sygic/adas/vision/1.2.23/vision-1.2.23-lite.zip",
            checksum: "47c4991060cb317f5f163578c9372c40423fc55cd6d079b45e17aa78826393ab")
    ]
)
