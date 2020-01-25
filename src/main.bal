import ballerina/io;
import ballerina/config;

public function main() {
    string name = config:getAsString("hello.user.name");
    io:println("Hello, " + name + "!");
    }
