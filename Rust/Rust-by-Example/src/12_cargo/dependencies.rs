// Cargo is Rust's official package manager and build system
// It handles many tasks to make Rust development faster


// Dependencies are external packages of code that your project relies on to function. 
// In Rust, dependencies are managed through Cargo and are called "crates".

// Example showing dependency usage
use rand::random_range;  // Using the 'rand' crate



fn main() {
    println!("Dependencies in Rust:");
    
    // Using functionality from the rand crate
    let random_number = random_range(1..=100);
    
    println!("Random number: {}", random_number);
}