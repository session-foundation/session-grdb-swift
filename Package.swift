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
            url: "https://github.com/session-foundation/session-grdb-swift/releases/download/107.3.0/GRDB.xcframework.zip",
            checksum: "80ec656ba3cca69897375780ba6c6189a160dac724f4573e5ea95774f8268745"
        ),
        .target(name: "_GRDBDummy")
    ]
)
