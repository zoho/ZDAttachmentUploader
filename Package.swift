// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "1.0.5"
let package = Package(
    name: "ZDAttachmentUploader",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "ZDAttachmentUploader",
            targets: ["ZDAttachmentUploader", "ZDAttachmentUploaderPackage"])
    ],
    dependencies: [
        .package(url: "https://github.com/zoho/ZohoDeskPlatformUIKit.git", exact: "2.0.0-beta.20"),
        .package(url: "https://github.com/zoho/ZDHelperKit-iOS.git", exact: "2.0.3")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .binaryTarget(name: "ZDAttachmentUploader", url: "https://maven.zohodl.com/ZohoDesk/ZDAttachmentUploader/\(version)/ZDAttachmentUploader.zip", checksum: "8138014c5fc2e12af39daf15efa0815d7cc6c3d2c454b376c6d020d7c04dd6cf"),
        
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
