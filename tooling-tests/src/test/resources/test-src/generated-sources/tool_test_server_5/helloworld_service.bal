import ballerina/grpc;

listener grpc:Listener ep = new (9090);

@grpc:Descriptor {value: HELLOWORLDBYTES_DESC}
service "helloWorld" on ep {

    remote function hello(byte[] value) returns stream<byte[], error?>|error {
    }
}

