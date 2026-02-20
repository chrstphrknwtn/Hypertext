// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "Hypertext",
    products: [
        .library(
            name: "Hypertext",
            targets: ["Hypertext"]
        ),
    ],
    targets: [
        .target(
            name: "Hypertext"
        ),
        .testTarget(
            name: "HypertextTests",
            dependencies: ["Hypertext"]
        ),
    ]
)
