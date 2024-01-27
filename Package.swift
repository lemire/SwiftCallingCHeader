// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "SwiftCallingCHeader",
    targets: [
        .target(name: "SomeC", dependencies: []),
        .executableTarget(name: "SomeSwift", dependencies: ["SomeC"])
    ]
)
