// Rust provides a 'loop' keyword to indicate an infinite loop

fn main() {
    let mut count = 0u32;

    println!("Let's count until 100");

    loop {
        count += 1;

        if count % 2 == 0 {
            println!("Even: {}", count)
        } else {
            println!("Odd: {}", count)
        }

        if count == 100 {
            println!("Okay, enough for now!");
            break
        }
    }
}
