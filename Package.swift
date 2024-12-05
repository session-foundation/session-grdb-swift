// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "GRDB",
    platforms: [
        .iOS(.v11),
        .macOS(.v10_15),
    ],
    products: [
        .library(name: "GRDB", targets: ["GRDB", "_GRDBDummy"]),
    ],
    targets: [
        .binaryTarget(
            name: "GRDB",
            url: "https://github.com/oxen-io/session-grdb-swift/releases/download/106.29.3/GRDB.xcframework.zip",
            checksum: "0f5d73c0e09a22adf20efbfc4e4fe7b5cd5da9554ef4f0c6dd8acab9cb101cd3"
        ),
        .target(name: "_GRDBDummy")
    ]
)
