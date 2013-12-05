import std.stdio, env;

struct Config {
    string production;  
    string host;
    string password; 
    string port;
    string timeout;
    string username;
}

//TODO: find the field of struct


// find member of class
// find method of class

// Prefix

// or use ref, ref Config config
// how to use Type as parameter


void main() {
    Config env;
    writeln(ENV!(Config).process("myapp", env));      
}
