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
            checksum: "a50bf565d814e1ad6c9e81d39018e85ddc8be65a3623520a62a17a29db28dcb0"
        ),
        .target(name: "_GRDBDummy")
    ]
)
