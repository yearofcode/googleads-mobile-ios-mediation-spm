// swift-tools-version: 5.4
import PackageDescription

let package = Package(
    name: "GoogleMobileAdsMediation",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "GoogleMobileAdsMediationPangle",
            targets: ["GoogleMobileAdsMediationPangleTarget"]
        )
    ],
    dependencies: [
        .package(
            name: "GoogleMobileAds",
            url: "https://github.com/googleads/swift-package-manager-google-mobile-ads.git",
            from: "11.10.0"
        ),
        .package(
            name: "AdsGlobalPackage",
            url: "https://github.com/bytedance/AdsGlobalPackage",
            from: "6.2.0-release.9"
        )
    ],
    targets: [
        .binaryTarget(
            name: "GoogleMobileAdsMediationPangleBinaryTarget",
            url: "https://github.com/yearofcode/googleads-mobile-ios-mediation-spm/raw/refs/heads/main/pangle/6.2.0.9.0/PangleAdapter.zip",
            checksum: "09ffb4a64d9b40d023d26c37629b2ddd37f4f9d7c4780570d6d4c703cde493c0"
        ),
        .target(
            name: "GoogleMobileAdsMediationPangleTarget",
            dependencies: [
                .target(name: "GoogleMobileAdsMediationPangleBinaryTarget"),
                .product(name: "GoogleMobileAds", package: "GoogleMobileAds"),
                .product(name: "AdsGlobalPackage", package: "AdsGlobalPackage")
            ]
        ),
    ]
)
