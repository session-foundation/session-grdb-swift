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
            url: "https://github.com/session-foundation/session-grdb-swift/releases/download/106.29.3/GRDB.xcframework.zip",
            checksum: "866cc65aad82614ab98d116f7d19227f06eb24ead66d89f8ec973338b76a6895"
        ),
        .target(name: "_GRDBDummy")
    ]
)
