#![allow(unused)]

// Rust provides type safety via static typing.
// Variable bindings can be type annotated when declared.
// However, in most cases, the compiler will be able to infer the type of the variable from the context, heavily reducing the annotation burden.

fn main() {
    // Type annotated binding
    let an_integer: i32 = 1;
    
    // Default integer type inference
    let inferred_type = 12;
    
    // Mutable variable binding
    let mut mutable = 12;
    mutable = 21;
    
    // Variable shadowing
    let x = 5;
    let x = x + 1;

    println!("Type annotated: {}", an_integer);
    println!("Inferred type: {}", inferred_type);
    println!("Mutable value: {}", mutable);
    println!("Shadowed value: {}", x);
}
