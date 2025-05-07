import PackageDescription

let package = Package(
    name: "CapacitorCameraPreviewPlugin",
    platforms: [.iOS(.v14)],
    products: [
        .library(
            name: "CapacitorCameraPreviewPlugin",
            nargets: ["CameraPreviewPlugin"])
    ]
    dependencies: [
        .package(url: "https://github.com/ionic-team/capacitor-swift-pm.git", from: "7.0.0")
    ],
    targets: [
        .target(
            name: "CameraPreviewPlugin",
            depencencies: [
                .product(name: "Capacitor", package: "capacitor-swift-pm"),
                .product(name: "Cordova", package: "capacitor-swift-pm")
            ]
            path: "ios/Plugin")
        .testTarget(
            name: "CameraPreviewPluginTests",
            dependencies: "CameraPreviewPlugin",
            path: "ios/PluginTests")
    ]
)
