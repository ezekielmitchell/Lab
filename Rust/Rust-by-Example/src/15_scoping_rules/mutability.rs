// Mutability of data can be changed when ownership is transferred

fn main() {
    let immutable_box = Box::new(5u32);

    println!("immutable_box contains {}", immutable_box);

    // Mutability error
    //*immutable_box = 4;

    // *Move* the box, changing the ownership (and mutability)
    let mut mutable_box = immutable_box;

    println!("mutable_box contains {}", mutable_box);

    // Modify the contents of the box
    *mutable_box = 4;

    println!("mutable_box now contains {}", mutable_box);
    // println!("mutable_box now contains {}", immutable_box);
    // ^^ ERROR: moved to mutable_box

    #[derive(Debug)]
    struct Person {
        name: String,
        age: Box<i8>
    }

    let ezekiel = Person{ name: String::from("Ezekiel"), age: Box::new(27)};
    println!("Name: {}\nAge: {}", ezekiel.name, ezekiel.age);

    let Person {name, ref age} = ezekiel;

    println!("Name: {}\nAge: {}", name, ezekiel.age);
}