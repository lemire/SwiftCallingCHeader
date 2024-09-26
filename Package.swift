// swift-tools-version: 6.0
import PackageDescription

let package = Package(
    name: "SwiftCallingCHeader",
    targets: [
        .target(name: "SomeC", dependencies: []),
        .executableTarget(name: "SomeSwift", dependencies: ["SomeC"])
    ]
)
