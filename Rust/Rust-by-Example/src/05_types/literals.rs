// literals in rust are fixed values written directly into the code source
// numeric literals can be annotated by adding the type as a suffix

use std::mem::*;
fn main() {
    // suffixed literals, types known at initialization
    let x = 1u8;
    let y = 2u32;
    let z = 3f32;

    // unsiffized literals, types depend on how they are used
    let i = 1;
    let f = 1.0;

    // 'size_of_val' returns the size of a variable in bytes
    println!("size of `x` in bytes: {}", size_of_val(&x));
    println!("size of `y` in bytes: {}", size_of_val(&y));
    println!("size of `z` in bytes: {}", size_of_val(&z));
    println!("size of `i` in bytes: {}", size_of_val(&i));
    println!("size of `f` in bytes: {}", size_of_val(&f));  
}
