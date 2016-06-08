import PackageDescription

let package = Package(
    name: "CRabbitMQ",
    pkgConfig: "librabbitmq",
	providers: [
		.Brew("rabbitmq-c"), 
		.Apt("librabbitmq4")
	]
)
