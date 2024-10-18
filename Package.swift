// swift-tools-version: 5.4
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "GoogleMobileAdsMediation",
  platforms: [.iOS(.v12)],
  products: [
    .library(
      name: "GoogleMobileAdsMediationAppLovin",
      targets: [
        // "GoogleMobileAdsMediationAppLovinTarget",
        "GoogleMobileAdsMediationPangleTarget"
    ]
    )
  ],
  dependencies: [
    .package(
      name: "GoogleMobileAds",
      url: "https://github.com/googleads/swift-package-manager-google-mobile-ads.git",
      "11.10.0"
    )
  ],
  targets: [
    // .binaryTarget(
    //     name: "GoogleMobileAdsMediationAppLovinTarget",
    //     url: "",
    //     dependencies: [],
    //     path: "GoogleMobileAdsMediationAppLovinTarget"
    // ),
    .binaryTarget(
        name: "GoogleMobileAdsMediationPangleTarget",
        url: "",
        dependencies: [
            .package(
                name: "AdsGlobalPackage",
                url: "https://github.com/bytedance/AdsGlobalPackage"
            )
        ],
    )
  ]
)