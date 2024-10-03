// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "BangumiPrivateSwiftClient",
    platforms: [.macOS(.v10_15), .iOS(.v13), .tvOS(.v13), .watchOS(.v6), .visionOS(.v1)],
    products: [
        .library(name: "BangumiPrivateSwiftClient", targets: ["BangumiPrivateSwiftClient"]),
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-openapi-generator", from: "1.0.0"),
        .package(url: "https://github.com/apple/swift-openapi-runtime", from: "1.0.0"),
        .package(url: "https://github.com/apple/swift-openapi-urlsession", from: "1.0.0"),
    ],
    targets: [
        .target(
            name: "BangumiPrivateSwiftClient",
            dependencies: [
                .product(name: "OpenAPIRuntime", package: "swift-openapi-runtime"),
            ],
            resources: [],
            swiftSettings: [],
            plugins: [
                .plugin(name: "OpenAPIGenerator", package: "swift-openapi-generator"),
            ]
        ),
        .testTarget(
            name: "BangumiPrivateSwiftClientTests",
            dependencies: [
                "BangumiPrivateSwiftClient",
                .product(name: "OpenAPIRuntime", package: "swift-openapi-runtime"),
                .product(name: "OpenAPIURLSession", package: "swift-openapi-urlsession"),
            ]
        )
    ]
)
