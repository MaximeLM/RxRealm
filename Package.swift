// swift-tools-version:5.0

import PackageDescription

let package = Package(
    name: "RxRealm",
	platforms: [.iOS(.v8), .macOS(.v10_10), .tvOS(.v9), .watchOS(.v3)],
    products: [
        .library(name: "RxRealm", targets: ["RxRealm"])
    ],
    dependencies: [
        .package(url: "https://github.com/ReactiveX/RxSwift.git", .upToNextMajor(from: "5.0.0")),
        .package(url: "https://github.com/realm/realm-cocoa.git", .upToNextMajor(from: "3.17.0"))
    ],
    targets: [
        .target(
            name: "RxRealm",
            dependencies: ["RealmSwift", "RxSwift"],
            path: "Pod/Classes"
        )
    ]
)
