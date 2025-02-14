#[warn(unused_imports)]
#[warn(unused_variables)]

const _YEAR: i32 = 2025;

fn main() {
    let age = 26; // rust variables are immutable by default
    let mut _next_age = 26; // mutable variable
    _next_age = _next_age + 1;
    let message: &str = &format!("👋 Hello !!! Today, I begin my journey in Rust at {age} years old");
    println!("{message}");
}
