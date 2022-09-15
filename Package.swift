// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription
    
let package = Package(
    name: "stripe-ios",
    defaultLocalization: "en",
    platforms: [
        .iOS(.v11)
    ],
    products: [
        .library(
            name: "stripe-ios",
            targets: ["stripe-ios"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "stripe-ios",
            dependencies: [],
            path: "Stripe/",
            publicHeadersPath: "PublicHeaders/",

            linkerSettings: [
              //Frameworks
                 .linkedFramework("Foundation"),
                 .linkedFramework("Security"),
                 .linkedFramework("WebKit"),
                 .linkedFramework("PassKit"),
                 .linkedFramework("Contacts"),
                 .linkedFramework("CoreLocation")
            ]
        )
    ]
)
