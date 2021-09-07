// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "QKMRZScanner",
  products: [
    .library(
      name: "QKMRZScanner",
      targets: ["QKMRZScanner"]),
  ],
  dependencies: [
    .package(url: "https://github.com/itopstack/QKMRZParser", from: "1.0.0"),
    .package(url: "https://github.com/SwiftyTesseract/SwiftyTesseract", from: "3.0.0"),
  ],
  targets: [
    .target(
      name: "QKMRZScanner",
      dependencies: ["QKMRZParser", "SwiftyTesseract"],
      path: "QKMRZScanner"),
    .testTarget(
      name: "QKMRZScannerTests",
      dependencies: ["QKMRZScanner"],
      path: "Tests"),
  ]
)
