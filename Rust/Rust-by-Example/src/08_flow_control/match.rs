// Rust provides pattern matching via 'match' keyword
// similar to C's 'switch'

fn main() {
    let number = 7;

    print!("Tell me about {}: ", number);

    match number {
        1 => println!("One!"),
        2 | 3 | 5 | 7 | 11 => println!("Prime number!"),
        13..19 => println!("A teen number!"),
        _ => println!("Ain't specail!")
    }

    let boolean = true;
    let word = match boolean {
        false => "FALSE!!",
        _ => "TRUE!!"
    };

    println!("{} -> {}", boolean, word)
}
