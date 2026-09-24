import ballerina/http;

service /greeter on new http:Listener(8080) {

    // GET /greeter/greeting?name=John
    resource function get greeting(string name = "World") returns string {
        return string `Hello, ${name}!`;
    }
}
