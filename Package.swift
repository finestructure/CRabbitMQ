import PackageDescription

let package = Package(
    name: "CRabbitMQ",
    exclude: ["rabbitmq-c", "Sources/librabbitmq/win32"]
)
