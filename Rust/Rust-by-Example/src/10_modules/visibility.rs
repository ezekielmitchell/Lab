// Modules in Rust are a way to organize and encapsulate code
// They help with:
// 1. Namespace management - preventing name conflicts
// 2. Privacy control - hiding implementation details
// 3. Code organization - grouping related functionality

// private by default -- overridden with 'pub' modifier
// only public items can be accessed from outside module
mod my_mod {
    #![allow(dead_code)]
    // private by default
    fn private_func(){ println!("This wonr get printed!"); }
    // public function
    pub fn public_func(){ println!("This will get printed!"); }
}
// Basic module definition
mod math {
    pub fn add(a: i32, b: i32) -> i32 {
        a + b
    }
    
    pub fn subtract(a: i32, b: i32) -> i32 {
        a - b
    }
    
    // Private function - only accessible within this module
    fn internal_calculation(x: i32) -> i32 {
        x * 2
    }
}

// Nested modules
mod graphics {
    pub mod shapes {
        pub struct Rectangle {
            pub width: f64,
            pub height: f64,
        }
        
        impl Rectangle {
            pub fn new(width: f64, height: f64) -> Rectangle {
                Rectangle { width, height }
            }
            
            pub fn area(&self) -> f64 {
                self.width * self.height
            }
        }
    }
    
    pub mod colors {
        pub enum Color {
            Red,
            Green,
            Blue,
            RGB(u8, u8, u8),
        }
    }
}

// Module with use statements
mod data_processing {
    use std::collections::HashMap;
    
    pub fn process(data: &[i32]) -> HashMap<i32, i32> {
        let mut frequency = HashMap::new();
        
        for &value in data {
            *frequency.entry(value).or_insert(0) += 1;
        }
        
        frequency
    }
}

fn main() {
    // Using functions from modules
    println!("5 + 10 = {}", math::add(5, 10));
    
    // Using nested modules
    use graphics::shapes::Rectangle;
    let rect = Rectangle::new(5.0, 10.0);
    println!("Rectangle area: {}", rect.area());
    
    // Using enums from modules
    use graphics::colors::Color;
    let blue = Color::Blue;
    
    // Using the data processing module
    let numbers = [1, 2, 2, 3, 3, 3, 4, 4, 4, 4];
    let frequencies = data_processing::process(&numbers);
    println!("Frequency map: {:?}", frequencies);
}