use std::num::ParseIntError;

fn multiply(first_number_str: &str, second_number_str: &str) -> i32 {
    let first_number = first_number_str.parse::<i32>().unwrap();
    let second_number = second_number_str.parse::<i32>().unwrap();
    first_number*second_number
}

// main can have a Result type
fn main() -> Result<(), ParseIntError> {
    
    let number_str = "10";
    // let number_str = ""; ~~ returns Error: ParseIntError { kind: Empty }
    
    let number = match number_str.parse::<i32>() {
        Ok(number) => number,
        Err(e) => return Err(e),
    };
    
    println!("{}", number);
    
    Ok(())
}