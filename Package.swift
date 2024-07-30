// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftUIAD",
    platforms: [
      .iOS(.v15)
    ],
    products: [
        .library(
            name: "SwiftUIAD",
            targets: ["SwiftUIAD"]),
    ],
    dependencies: [
 
        .package(url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package.git", .upToNextMajor(from: "12.1.0")),
    ],
    targets: [
 
        .target(
            name: "SwiftUIAD",
            dependencies: [
                .product(name: "AppLovinSDK", package: "AppLovin-MAX-Swift-Package"),
            ]),
    ]
)
