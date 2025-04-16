#![allow(dead_code)]

// 'F' must be generic
fn apply<F>(f: F) where
    F: FnOnce() {
        f();
}

fn main() {
    let x = 7;
    let print = || println!("{}", x);
    apply(print);
}