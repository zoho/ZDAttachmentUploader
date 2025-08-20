// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ZDAttachmentUploader",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "ZDAttachmentUploader",
            targets: ["ZDAttachmentUploader", "ZDAttachmentUploaderPackage"])
    ],
    dependencies: [
        .package(url: "https://github.com/zoho/ZohoDeskPlatformUIKit.git", exact: "2.0.0-beta.16"),
        .package(url: "https://github.com/zoho/ZDHelperKit-iOS.git", exact: "2.0.0")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .binaryTarget(name: "ZDAttachmentUploader", url: "https://maven.zohodl.com/ZohoDesk/ZDAttachmentUploader/1.0.0/ZDAttachmentUploader.zip", checksum: "14ec138ebeffe7c26445aa0ab2dcd7ff340f57bcdc73f552cc78597176f03405"),
        
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
