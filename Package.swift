import PackageDescription
 
let package = Package(
    name: "Mancala",

    dependencies: [
        .Package(url: "https://github.com/jatoben/CommandLine.git", "3.0.0-pre1"),
    ]
)
