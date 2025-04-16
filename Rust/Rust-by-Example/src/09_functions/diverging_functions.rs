#![allow(dead_code)]
// #![feature(never_type)]

// Diverging functions never return -- marked using '!' == empty type
fn foo() -> ! {
    panic!("This call never returns!")
}

fn some_fn() {
    ()
}

fn main() {
    let _a = some_fn();
    println!("This functions returns and you can see this line.");
    foo();
    println!("pass")
}