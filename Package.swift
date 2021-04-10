// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CombineFirebase",
    platforms: [.iOS(.v13), .macOS(.v10_15), .tvOS(.v13)],
    products: [
        .library(
            name: "CombineFirebase",
            targets: ["CombineFirebase"]
        ),
    ],
    dependencies: [
        .package(name: "Firebase", url: "https://github.com/firebase/firebase-ios-sdk.git", from: "7.5.1"),
    ],
    targets: [
        .target(
            name: "CombineFirebase",
            dependencies: ["Firebase",]
        ),
    ]
)
