// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "JSONModel",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(name: "JSONModel", targets: ["JSONModel"])
    ],
    targets: [
        .target(
            name: "JSONModel",
            path: "JSONModel",
            exclude: [
                "Info.plist",
                "JSONModel.modulemap"
            ],
            publicHeadersPath: ".",
            cSettings: [
                .headerSearchPath("JSONModel"),
                .headerSearchPath("JSONModelTransformations"),
                .headerSearchPath("JSONModelNetworking")
            ]
        )
    ]
)
