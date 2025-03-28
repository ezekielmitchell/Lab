#![allow(dead_code)]

use std::convert::From;
use std::convert::Into;

// Primitive types can be converted to each other through casting
// Rust addresses conversion between custom types [structs, enums...] by the use of traits

// FROM
// the FROM trait allows for a type to define how to create itself from another type

#[derive(Debug)]
struct Number {
    value: i32,
}

// impl From<i32> for Number {
//     fn from(item: i32) -> Self {
//         Number { value : item }
//     }
// }

// INTO
// the INTO trait is simply the reciprocal of the FROM trait
// it defines how to convert a type into another type
impl Into<Number> for i32 {
    fn into(self) -> Number {
        Number { value: self }
    }
}

// FROM & INTO are interchangable
// From and Into are designed to be complementary -- no need to provide an implementation for both traits
// if there is a FROM impl, INTO will call it when necessary 
// BUT INTO does not automatically provide implementation for FROM

fn main() {
    let my_str = "hello"; // stored in binary - fixed size
    let mut _my_string = String::from(my_str); // stored in heap -- modifiable

    // FROM test case
    // let num = Number::from(32);
    // println!("My number is: {:?}", num);

    let int = 5;
    let num: Number = int.into();
    println!("My number is: {:?}", num);

}
