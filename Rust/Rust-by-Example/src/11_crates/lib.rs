// In Rust, crates are packages of Rust code. 
// They're the fundamental unit of code sharing and reuse in the Rust ecosystem, 
// similar to packages in other programming languages
#![allow(dead_code)]
pub fn public_function() {
    println!("called rary's `public_function()`");
}

fn private_function() {
    println!("called rary's `private_function()`");
}

pub fn indirect_access() {
    print!("called rary's `indirect_access()`, that\n> ");

    private_function();
}

// // This crate is a library
// #![crate_type = "lib"]
// // The library is named "rary"
// #![crate_name = "rary"]

// pub fn public_function() {
//     println!("called rary's `public_function()`");
// }

// fn private_function() {
//     println!("called rary's `private_function()`");
// }

// pub fn indirect_access() {
//     print!("called rary's `indirect_access()`, that\n> ");

//     private_function();
// }
fn main(){
    public_function();
    indirect_access();
    private_function();
}