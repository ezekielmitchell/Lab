#![allow(unused)]

struct Pet {
    name: String,
    age: i8,
    location: String
}

impl Pet {
    fn new(name: String, age: i8, location: String) -> Pet {
        Pet{name, age, location}
    }

    // Getters
    fn get_name(&self) -> &str { &self.name }
    fn get_age(&self) -> i8 { self.age}
    fn get_location(&self) -> &str { &self.location }

    // Setters
    fn set_name(&mut self, new_name: String) -> &mut Self { self.name = new_name; self }

    fn set_age(&mut self, new_age: i8) -> &mut Self { self.age = new_age; self }

    fn set_location(&mut self, new_location: String) -> &mut Self { self.location = new_location; self }
}

// raii.rs
fn create_box() {
    // Allocate an integer on the heap
    let _box1 = Box::new(3i32);

    // `_box1` is destroyed here, and memory gets freed
}

struct ToDrop;

impl Drop for ToDrop {
    fn drop(&mut self) {
        println!("ToDrop is being dropped");
    }
}

fn main() {
    // Allocate an integer on the heap
    let _box2 = Box::new(5i32);

    // A nested scope:
    {
        // Allocate an integer on the heap
        let _box3 = Box::new(4i32);

        // `_box3` is destroyed here, and memory gets freed
    }

    // Creating lots of boxes just for fun
    // There's no need to manually free memory!
    for _ in 0u32..1_000 {
        create_box();
    }

    let x = ToDrop;
    println!("Made a ToDrop!");
    // ToDrop custom destructor goes out of scope after

    // `_box2` is destroyed here, and memory gets freed
}
