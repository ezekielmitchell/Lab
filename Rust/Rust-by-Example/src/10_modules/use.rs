// First, define the nested modules and their contents
mod deeply {
    pub mod nested {
        pub fn my_first_function() {
            println!("Called my_first_function()");
        }

        pub fn my_second_function() {
            println!("Called my_second_function()");
        }

        pub trait AndATraitType {
            fn trait_method(&self);
        }
    }
}

// Now use them
use crate::deeply::nested::{my_first_function, my_second_function, AndATraitType};

fn main() {
    my_first_function();
    my_second_function();
    
    // To use the trait, implement it for a type
    struct MyType;
    
    impl AndATraitType for MyType {
        fn trait_method(&self) {
            println!("Called trait_method on MyType");
        }
    }
    
    let instance = MyType;
    instance.trait_method();
}