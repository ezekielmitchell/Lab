use std::fmt::{Debug, Display};

fn compare_prints<T: Debug + Display>(t: &T) { // multiple bounded
    println!("Debug: {:?}", t);
    println!("Display: {}", t)
}

fn compare_types<T: Debug, U: Debug>(t: &T, u: &U) {
    println!("u: {:?}", u);
    println!("t: {:?}", t)
}

fn main() {
    let string = "words";
    let array = [1, 2, 3];
    let vec = vec![1, 2, 3];

    compare_prints(&string);
    compare_types(&array, &vec);
}

