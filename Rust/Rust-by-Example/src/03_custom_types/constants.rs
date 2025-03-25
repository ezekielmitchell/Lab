// Globals are declared outside all other scopes
#![allow(dead_code)]

static LANGUAGE: &str = "Rust";
const THRESHOLD: i32 = 10;

fn is_big(n: i32) -> bool {
    n > THRESHOLD
}

fn main(){
    let n = 6;

    is_big(n);

    match is_big(n) {
        true => println!("n is larger than {}", THRESHOLD),
        false => println!("n is smaller than {}", THRESHOLD)
    }
}