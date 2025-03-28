// Indirectly accessing a variable makes it impossible to branch and use that variable without re-binding
// 'match' provides the @ sigil for binding values to names
#![allow(unused_variables)]
fn age() -> u8 {
    27    
}

fn some_number() -> Option<u8> {
    Some(27)
}

fn main() {
    println!("Tell me what type of person you are:");

    match age() {
        0 => println!("I haven't celebrated a birthday yet!"),
        n @ 1..=12 => println!("Not a teen yet"),
        n @ 13..=19 => println!("Teen"),
        // nothing bound -- return Result
        n => println!("Adult"),
    }

    // ** Destrucuturing via bindings ** // 
    match some_number() {
        Some(n @ 50) => println!("500000"),
        Some(n) => println!("A number other than 50"),
        _ => (), // None variant
    }
}
