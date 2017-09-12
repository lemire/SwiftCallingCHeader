import PackageDescription

let package = Package(
    name: "SwiftCallingCHeader",
    targets: [
        Target(name: "SomeSwift", dependencies: ["SomeC"])
    ]
)
