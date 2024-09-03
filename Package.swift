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
            url: "https://github.com/oxen-io/session-grdb-swift/releases/download/106.29.2/GRDB.xcframework.zip",
            checksum: "5b19115e3cc0693174b041c00a7ee4102392fdbf18fb66ba64b75833212e60fc"
        ),
        .target(name: "_GRDBDummy")
    ]
)
