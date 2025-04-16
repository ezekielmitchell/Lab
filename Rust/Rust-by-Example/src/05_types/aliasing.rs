// The 'type' statement can be used to give a new name to an existing type
// types must have UpperCamelCase names or the compiler will raise warning

// 'NanoSecond', 'Inch', and 'U64' are new names for 'u64'
type NanoSecond = u64;
type Inch = u64;
type _U64 = u64;

fn type_of<T>(_: &T) -> &'static str {
    std::any::type_name::<T>()
}


fn main() {
    // 'NanoSecond' = 'Inch' = 'U64' = 'u64'
    let nanoseconds: NanoSecond = 5 as u64;
    let inches: Inch = 2;
    println!("Type of inches: {}", type_of(&inches));

    // note that type aliases DON'T provide extra type safety
    // they are NOT new types!
    println!(
        "{} nanoseconds + {} inches = {} unit?",
        nanoseconds,
        inches,
        nanoseconds + inches
    );
}
