// swift-tools-version: 5.9

import PackageDescription

let package = Package(
  name: "OpenCV",
  platforms: [
    .macOS(.v11), .iOS(.v16), .macCatalyst(.v16)
  ],
  products: [
    .library(name: "OpenCV",
             targets: ["OpenCV"]
             ),
    /*
    .library(
      name: "SwiftOpenCV",
      targets: ["SwiftOpenCV" ]),
     */
  ],
  targets: [
    /*
    .target(name: "SwiftOpenCV",
            dependencies: ["OpenCV_bridge"],
            path: "swiftWrapper",
            swiftSettings: [.interoperabilityMode(.Cxx)]
            ),
    .target(name: "OpenCV_bridge",
            dependencies: ["OpenCV"],
//            dependencies: ["OpenCVlocal"],
            path: "wrapper",
            cSettings: [.unsafeFlags(["-std=c++11"])],
            linkerSettings: [.linkedFramework("OpenCV")]
            ),
     */
     .binaryTarget(name: "OpenCV",
                  url: "https://github.com/wadecong/OpenCV/releases/download/5.0.3/OpenCV.xcframework.zip",
                  checksum: "60dab4973581c05d62e6c716c06115ff3717133e785f2c03f56d21a63486de82"),
/*
     .binaryTarget(name: "OpenCV",
                   path: "build_xcframework/OpenCV.xcframework"
     ),
 */

  ]
)

