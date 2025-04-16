#![allow(unused)]

use std;

fn main(){
    fizz_buzz_to(5);
    fizz_buzz(15);
}

fn fizz_buzz(user_input: i8) {
    if (user_input % 15 == 0) {
        println!("FizzBuzz!")
    } else if (user_input % 3 == 0) {
        println!("Fizz!");
    } else if (user_input % 5 == 0) {
        println!("Buzz!")
    } else {
        println!("{user_input}")
    }
}

fn fizz_buzz_to(count: i8) {
    for i in 1..=count{
        fizz_buzz(i);
    }
}