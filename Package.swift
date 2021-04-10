// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CombineFirebase",
    products: [
        .library(
            name: "CombineFirebase",
            targets: ["CombineFirebase"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/firebase/firebase-ios-sdk.git", from: "7.5.1")
    ],
    targets: [
        .target(
            name: "CombineFirebase",
            dependencies: [
                .product(name: "FirebaseAuth", package: "Firebase"),
                .product(name: "FirebaseDatabase", package: "Firebase"),
                .product(name: "FirebaseFirestore", package: "Firebase"),
                .product(name: "FirebaseFirestoreSwift", package: "Firebase"),
                .product(name: "FirebaseFunctions", package: "Firebase"),
                .product(name: "FirebaseRemoteConfig", package: "Firebase"),
                .product(name: "FirebaseStorage", package: "Firebase"),
            ],
            path: "Sources"
        )
    ]
)

