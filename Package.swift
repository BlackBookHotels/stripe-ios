// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription
    
let package = Package(
    name: "Stripe",
    defaultLocalization: "en",
    platforms: [
        .iOS(.v11)
    ],
    products: [
        .library(
            name: "Stripe",
            targets: ["Stripe"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "Stripe",
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
