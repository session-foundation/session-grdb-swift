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
            url: "https://github.com/session-foundation/session-grdb-swift/releases/download/107.4.1/GRDB.xcframework.zip",
            checksum: "acaa771023029c840863e52acb0cd6ada523e2957e124e426a6de395598140cc"
        ),
        .target(name: "_GRDBDummy")
    ]
)
