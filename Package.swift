// swift-tools-version:5.0

import PackageDescription

let package = Package(
  name: "GTMAppAuth",
  products: [
    .library(name: "GTMAppAuth", targets: ["GTMAppAuth"]),
  ],
  dependencies: [
    .package(url: "https://github.com/sharplet/AppAuth-iOS.git", .branch("swiftpm")),
    .package(url: "https://github.com/sharplet/gtm-session-fetcher.git", .branch("swiftpm")),
  ],
  targets: [
    .target(
      name: "GTMAppAuth",
      dependencies: ["AppAuth", "GTMSessionFetcher"],
      path: "Source",
      cSettings: [.headerSearchPath("include/GTMAppAuth")]
    ),
  ]
)
