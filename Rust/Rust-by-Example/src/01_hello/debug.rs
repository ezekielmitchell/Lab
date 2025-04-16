#![allow(dead_code)] // surpress warnings of unused code 
// This structure cannot be printed either with `fmt::Display` or
// with `fmt::Debug`.
struct UnPrintable(i32);

// the derive attribute creates the implementation 
#[derive(Debug)]
struct DebugPrintable(i32);

// Derive the `fmt::Debug` implementation for `Structure`. `Structure`
// is a structure which contains a single `i32`.
#[derive(Debug)]
struct Structure(i32);

// Put a `Structure` inside of the structure `Deep`. Make it printable
// also.
#[derive(Debug)]
struct Deep(Structure);

#[derive(Debug)]
// Lifetimes ('a, 'b, etc.) ensure references stay valid: &'a T means "reference valid for lifetime 'a"
// They prevent dangling pointers by telling the compiler how long references must live
struct Person<'person> {
    name: &'person str,
    age: u8
}

fn main() {

    println!("{:?} months in a year.", 12);
    println!("{1:?} {0:?} is the {actor:?} name.",
             "Slater",
             "Christian",
             actor="actor's");

    // 'Structure' is now printable
    println!("Now {:?} will print!", Structure(7));
    println!("Now {:?} will print!", Deep(Structure(7)));

    // Pretty printing
    let name = "Ezekiel";
    let age = 27;
    let ezekiel = Person {name, age};
    println!("{:#?}", ezekiel);
}
