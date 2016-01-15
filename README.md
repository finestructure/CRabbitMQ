# CRabbitMQ

A swift package manager wrapper for rabbitmq-c

## Requirements

 - Swift package manager (SPM, see http://swift.org)
 - librabbitmq.dylib must be in `/usr/local/lib`. There is currently no other way to let SPM know where to find the library. Either copy the lib from this repository or install it via `brew install rabbitmq-c`
 
## Usage

In order to use CRabbitMQ in Swift, for example in a file as follows:

```
import CRabbitMQ

let conn = amqp_new_connection()
print("conn: \(conn)")
```

all you need is to place a `Package.swift` file in the same directory:

```
import PackageDescription

let package = Package(
    name: "HastyHare",
    dependencies: [
        .Package(url: "https://github.com/feinstruktur/CRabbitMQ", majorVersion: 1)
    ]
)
```

Build it:

```
» swift build    
Cloning https://github.com/feinstruktur/CRabbitMQ
Using version 1.0.3 of package CRabbitMQ
Compiling Swift Module 'HastyHare' (1 sources)
Linking Executable:  .build/debug/HastyHare
```

Check that it works:

```
» .build/debug/HastyHare
conn: 0x00007fc9e2c0cb60
```
