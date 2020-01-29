## Ballerina - an Open Source JVM Language for Cloud-Era Application Programmers

### InfoQ Java Queue

#### published January 29, 2020

There are two valid entry points for a Ballerina application: a method, `main()`, which runs as a terminating process; and a hosted non-terminating process, `service`.

The `main.bal` application, without any parameters, may be executed as follows:

`$ ballerina run main.bal`

The output is:

`Hello, !`

As shown above, no name is displayed in the output. Adding a parameter to the command will change that:

`$ ballerina run main.bal --hello.user.name=Mike`

The output is now:

`Hello, Mike!`

Notice the parameter matches the string inside the `getAsString()` method call.

An optional configuration file may also be used in an application. Consider the `ballerina.conf` file:

`[hello.user]`

`name="Rowena"`

The application can be executed without any parameters and will now display the name specified in the configuration file:

`$ ballerina run main.bal`

`Hello, Rowena!`

The `service.bal` application is a service representing a network-accessible API bound to port 9090.

`$ ballerina run service.bal`

Once the server is running, either use the URL in the browser or `curl` command in a terminal window:

`http://localhost:9090/hello/sayHello`

`$ curl -w "\n" http://localhost:9090/hello/sayHello`

The output will be:

`Hello Ballerina!`

For those that would like to relate to JAX-RS, note that the variable `hello` next to the `service` keyword represents the application path.
The `sayHello()` method represents the endpoint. 