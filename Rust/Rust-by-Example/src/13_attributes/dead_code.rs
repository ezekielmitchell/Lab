#![allow(dead_code, unused_variables)] // can contain multiple values

// attributes are metadata applied to some module, crate or item
// this metadata can be used to/for:
// { conditional complilation code, set crate name, disable lints (warnings), etc. }


// #[derive(Debug)] automatically implements the Debug trait for a struct or enum, 
// allowing you to print its contents with {:?} in format strings, 
// which is essential for debugging and development
#[derive(Debug)]
struct Rectangle{
    point1: i32,
    point2: i32
}

// #[allow(unused_variables)] // removes warning from unused variables
fn unused_variables(n: i8) -> i8 {
    1
}

fn main() {
    println!("Hello from src/13_attributes/dead_code.rs");
}
