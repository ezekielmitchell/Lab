// Macros in Rust are a powerful metaprogramming feature that 
// allow you to write code that writes other code, 
// reducing repetition and enabling syntax extensions 
// that would be difficult or impossible using regular functions.

// Macros are reusable pieces of code or text that expand into a larger block when called. 
// They're essentially shortcuts that help automate repetitive tasks.

// macro that calculates the square of a number
macro_rules! square {
    // Standard case
    ($x:expr) => {
        println!("{}", $x * $x)
    };

    // Special case
    (special $i:expr) => {
        if ($i==1) {
            println!("passed 1")
        }

        else if ($i==2) {
            println!("passed 2")
        }

        else {
            println!("Nothing to pass!")
        }
    };

    // Empty case
    () => {
        println!("Nothing to square!")
    };

    // Two-argument case
    ($x:expr, $b:expr) => {
        println!("{}", $x + $b)
    };

    
}

fn main() {

    square!(2);
    square!();
    square!(2, 5);
    let mut i = 1u32;
    square!(special i);
    i=2;
    square!(special i);
    i=3;
    square!(special i);

}