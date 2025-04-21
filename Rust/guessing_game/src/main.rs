use std::cmp::Ordering;
use std::io;

fn main() {
    println!("//** Guessing Game **//");
    println!("Guess a number between 1 and 100!");
    println!("You have 10 attempts to guess the number.");

    let count = 10;
    let secret_number = rand::random_range(1..=100);

}
