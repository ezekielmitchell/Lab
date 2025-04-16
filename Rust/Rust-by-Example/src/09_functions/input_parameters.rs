#![allow(dead_code)]

use std::mem;

// takes a closure as an argument then calls it
// <F> denotes that F is a generic type parameter
fn apply<F>(f: F) where 
    F: FnOnce() {
        f();
    }

// takes a closure and reutns an i32
fn apply_to_3<F>(f: F) -> i32 where
    F: Fn(i32) -> i32 {
        f(3)
    }

fn main(){
    let greeting = "Hello";

    // .to_ownded() creates owned data from borrowed data - cloning
    let mut farewell = "goodbye".to_owned();

    // capture 2 variables: 'greeting' by referenace and 'farewell' by value
    let diary = || {
        println!("I said {}", greeting);
        farewell.push_str("!!!");
        println!("Then I shouter {}", farewell);
        println!("Now I can sleep. ZZZzzzz");
        mem::drop(farewell); // manually calling drop forces 'farewell' to be caputured
    };

    // diary();
    // allows the function to be called - applies closure
    apply(diary);

    let double = |x: i32| 2 * x;
    println!("3 doubled: {}", apply_to_3(double))
}