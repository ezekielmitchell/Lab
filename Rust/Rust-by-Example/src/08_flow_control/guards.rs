// A match gaurd can be added to filter the arm
#![allow(dead_code)]
enum Temperature {
    Celsius(i32),
    Fahrenheit(i32),
}

fn main() {
    let temperature = Temperature::Fahrenheit(32);
    match temperature {
        Temperature::Celsius(t) if t > 30 => println!("{}C is above 30 Celsius", t),
        // The `if condition` part ^ is a guard
        Temperature::Celsius(t) => println!("{}C is equal to or below 30 Celsius", t),

        Temperature::Fahrenheit(t) if t > 86 => println!("{}F is above 86 Fahrenheit", t),
        Temperature::Fahrenheit(t) => println!("{}F is equal to or below 86 Fahrenheit", t),
    }

    // NOTE** the compiler won't take guard conditions into account when checking if all patterns are covered by the match expression
    let number: i8 = -4;
    match number {
        i if i == 0 => println!("Zero"),
        i if i > 0 => println!("Greater than Zero"),
        // i if i < 0 => println!("Less than Zero!!"), // commenting this will cause panic
        _ => unreachable!("Unreachable -- should never happen !!"),
    }
}
