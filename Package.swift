// swift-tools-version: 5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "URLEncodedFormCoder",
    platforms: [
        .macOS(.v10_15),
        .macCatalyst(.v13),
        .iOS(.v13),
        .watchOS(.v6),
        .tvOS(.v13)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "URLEncodedFormCoder",
            targets: ["URLEncodedFormEncoder"]),
        .library(
            name: "URLEncodedFormEncoder",
            targets: ["URLEncodedFormEncoder"])
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(url: "https://github.com/shizukusoft/swift-top-level-coder.git", from: "0.0.1"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "URLEncodedFormEncoder",
            dependencies: [
                .product(name: "TopLevelCoder", package: "swift-top-level-coder")
            ]),
        .testTarget(
            name: "URLEncodedFormEncoderTests",
            dependencies: ["URLEncodedFormEncoder"])
    ]
)
