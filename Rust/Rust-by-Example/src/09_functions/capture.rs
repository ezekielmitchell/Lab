// Capturing refers to how closures can access and use variables from their enclosing scope
#![allow(dead_code)]

fn main(){
    // Value to be captured
    let message = String::from("Hello");
    let count = 5;

    // Capture by reference (&T) - Fn trait
    let print_message = || println!("{}", message);

    // Capture by mutable reference (&mut T) - FnMut trait
    let mut counter = 0;
    let mut increment = || {
        counter += 1;
        println!("Count: {}", count);
    };
    // Using the closures
    print_message();
    increment();

    // Capture value by (T) - FnOnce trait
    let consume = move || {
        println!("{} {}", message, count);
        // message is moved into the closure
    };

    consume();

    use std::mem;
    let color = String::from("green");
    let print = || println!("Color: {}", color);
    // Call the closure using the borrow.
    print();
    // `color` can be borrowed immutably again, because the closure only holds
    // an immutable reference to `color`. 
    let _reborrow = &color;
    print();
    let _color_moved = color;
    let mut count = 0;
    let mut inc = || {
        count += 1;
        println!("Count: {count}");
    };

    for _i in 1..=5 {
        inc();
    }

    inc();
    inc();


}