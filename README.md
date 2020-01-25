## WSO2 Releases Ballerina 1.1.0

### InfoQ Java Queue

#### published January xx, 2020

The application, without any parameters, may be executed as follows:

`$ ballerina run main.bal`

With the following output:

`Hello, !`

The output, as shown above, does not return a name. Adding a parameter will change that:

`$ ballerina run main.bal --hello.user.name=Mike`

Notice the parameter matches the string inside the `getAsString()` method call.

An optional configuration file may also be used in an application. Consider the `ballerina.conf` file:

`[hello.user]`

`name="Rowena"`

Executing the application without any parameters will now display the name specified in the configuration file:

`$ ballerina run main.bal`

`Hello, Rowena!`
