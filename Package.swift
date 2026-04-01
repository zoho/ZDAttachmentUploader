// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "1.1.0"
let package = Package(
    name: "ZDAttachmentUploader",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "ZDAttachmentUploader",
            targets: ["ZDAttachmentUploader", "ZDAttachmentUploaderPackage"])
    ],
    dependencies: [
        .package(url: "https://github.com/zoho/ZohoDeskPlatformUIKit.git", exact: "2.1.0-beta.1"),
        .package(url: "https://github.com/zoho/ZDHelperKit-iOS.git", exact: "2.1.0")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .binaryTarget(name: "ZDAttachmentUploader", url: "https://maven.zohodl.com/ZohoDesk/ZDAttachmentUploader/\(version)/ZDAttachmentUploader.zip", checksum: "0ae4b175a50bb4522d3a3d2f9a5e24a0685d3bac03ccca03492eea3cd3561af9"),
        
        .target(
            name: "ZDAttachmentUploaderPackage",
            dependencies: [
                .product(name: "ZohoDeskPlatformUIKit", package: "ZohoDeskPlatformUIKit"),
                .product(name: "ZDMediaPickerSDK", package: "ZohoDeskPlatformUIKit"),
                .product(name: "ZohoDeskPlatformDataBridge", package: "ZohoDeskPlatformUIKit"),
                .product(name: "ZDHelperKit", package: "ZDHelperKit-iOS")
            ]
        )
    ]
)
