// enums are a way to define a type that can be one of several variants
// each variant can optionally hold data
///// useful for representing a value that can take on different forms

#![allow(dead_code)]

// directional enum
enum Direction {
    Up,
    Down,
    Left,
    Right,
}

enum WebEvent {
    // An enum variant may either be 'unit-like', tuple structs, or c-like structs
    PageLoad,
    PageUnload,
    KeyPress(char),
    Paste(String),
    Click { x: i64, y: i64 },
}

// a function which takes a WebEvent enum as an arg and returns nothing
fn inspect(event: WebEvent) {
    match event {
        WebEvent::PageLoad => println!("page load"),
        WebEvent::PageUnload => println!("page unload"),
        WebEvent::KeyPress(c) => println!("Character : {}", c),
        WebEvent::Paste(s) => println!("String : {}", s),
        WebEvent::Click{x, y} => println!("Clicked at {} and {}", x, y),
    }
}

// Type alias allows for the creation of an alternative name for an existing type
enum VeryVerboseEnumOfThingsToDoWithNumbers {
    Add,
    Subtract,
}

impl VeryVerboseEnumOfThingsToDoWithNumbers {
    fn run(&self, x: i32, y: i32) -> i32 {
        match self {
            Self::Add => x+y,
            Self::Subtract => x-y,
        }
    }
}

type Operations = VeryVerboseEnumOfThingsToDoWithNumbers;

fn main() {
    let pressed = WebEvent::KeyPress('e');
    let paste = WebEvent::Paste(String::from("Ezekiel"));
    let clicked = WebEvent::Click { x: (0), y: (50) };
    let load = WebEvent::PageLoad;
    let unload = WebEvent::PageUnload;

    inspect(pressed);
    inspect(paste);
    inspect(clicked);
    inspect(load);
    inspect(unload);

    let operation = Operations::Add;
    let subperation = Operations::Subtract;
    let _x = operation.run(5, 10);
    let _y = subperation.run(5, 10);

    println!("{} and {} are results of Add and Subtract", _x, _y)
}
