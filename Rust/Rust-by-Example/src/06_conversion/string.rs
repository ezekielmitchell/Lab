#![allow(dead_code)]

// To convert any type to a String -- implement ToString trait for the type
// Rather than doing so directly, impl the fmt::Display trait which automatically provides ToString 
// and also allows printing the type
use std::{fmt, num::ParseIntError, str::FromStr};

#[derive(Debug)]
struct Circle {
    radius: i32,
}

impl fmt::Display for Circle {
    fn fmt(&self, f: &mut fmt::Formatter) -> fmt::Result {
        write!(f, "Circle of radius: {}", self.radius)?;
        
        write!(f, "\nPass")
    }
}

// PARSING a string
// its useful to convert strings into many typesbut one common string operation is to convert them from string to number
// the idiomatic approach to this is to use the PARSE function and either arrange for type inference
// or specifiy the type to parse using the 'turbofish' syntax

// to obtain this function on a user defined type -- impl the FromStr trait for the type
impl FromStr for Circle {
    type Err = ParseIntError;
    fn from_str(s: &str) -> Result<Self, Self::Err> {
        match s.trim().parse() {
            Ok(num) => Ok(Circle {radius : num }),
            Err(e) => Err(e),
        }
    }
}

fn main() {
    // let circle = Circle { radius : 16 };
    // println!("{}", circle.to_string());

    // ** convert string into the type specified as long as the FromStr trait is implemented **//
    let parsed: i32 = "5".parse().unwrap();
    let turbo_parsed = "10".parse::<i32>().unwrap();

    let sum = parsed + turbo_parsed;
    println!("Sum: {:?}", sum);

    // ** FromStr method ** //
    let radius = "     3  ";
    let circle: Circle = radius.parse().unwrap();
    println!("{:?}", circle);
}
