module env;
import std.process,std.string;

int add2(int a, int b) {
    return a + b;
}
//TODO: find the field of struct


// find member of class
// find method of class

// Prefix

// or use ref, ref Config config
// how to use Type as parameter
template ENV(T) {

T process(string prefix, T config) {
    foreach ( key; __traits(allMembers, typeof(config)))  {
        auto name = toUpper(prefix ~ "_" ~ key); 
        __traits(getMember, config, key) = environment[name];
    }
    return config;

}

}
