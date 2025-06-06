#![allow(overflowing_literals)] // surpress ALL(!) warnings of casts which overflow

// Rust provides no implicit type conversion between primitives
// BUT explicit type conversion can be performed used the 'as' keyword


fn main() {
    let decimal = 23.32f32;

    // let integer: u8 = decimal; // error - different types
    let integer = decimal as u8;
    let character = integer as char;

    // there exists limitations to conversion rules
    // a float != char
    // let character = decimal as char; // error!
    
    println!("Casting: {} -> {} -> {}", decimal, integer, character);

    // when casting any value to an unsigned type, T,
    // T::MAX + 1 is added or subtracted until the value
    // fits into the new type

    // 1000 already fits in u16
    println!("1000 as u16 is: {}", 1000 as u16);

    // 1000 - 256 - 256 - 256 = 232
    // Under the hood, the first 8 least significant bits (LSB) are kept,
    // while the rest towards the most significant bit (MSB) get truncated.   
    println!("1000 as a u8 is : {} because u8 max is: {}", 1000 as u8, u8::MAX);
    // -1 + 256 = 255
    println!("-1 as u8 is: {}", -1i8 as u8);
    // When converting between numeric types in Rust, the conversion preserves the bit pattern
    // rather than the semantic value. Here, -1 as an i8 (11111111 in binary) becomes 255 when
    // interpreted as a u8, because the same bit pattern represents different values in
    // signed vs unsigned types.

    // For positive numbers, this is modulus
    println!("1000 mod 256 is: {}", 1000 % 256);

    // When casting to a signed type, the (bitwise) result is the same as
    // first casting to the corresponding unsigned type. If the most significant
    // bit of that value is 1, then the value is negative.

    // Unless it already fits, of course.
    println!(" 128 as a i16 is: {}", 128 as i16);
    
    // In boundary case 128 value in 8-bit two's complement representation is -128
    println!(" 128 as a i8 is : {}", 128 as i8);

        // repeating the example above
    // 1000 as u8 -> 232
    println!("1000 as a u8 is : {}", 1000 as u8);
    // and the value of 232 in 8-bit two's complement representation is -24
    println!(" 232 as a i8 is : {}", 232 as i8);

    // Since Rust 1.45, the `as` keyword performs a *saturating cast*
    // when casting from float to int. If the floating point value exceeds
    // the upper bound or is less than the lower bound, the returned value
    // will be equal to the bound crossed.

    // 300.0 as u8 is 255
    println!(" 300.0 as u8 is : {}", 300.0_f32 as u8);
    // -100.0 as u8 is 0
    println!("-100.0 as u8 is : {}", -100.0_f32 as u8);
    // nan as u8 is 0
    println!("   nan as u8 is : {}", f32::NAN as u8);

    // This behavior incurs a small runtime cost and can be avoided
    // with unsafe methods, however the results might overflow and
    // return **unsound values**. Use these methods wisely:
    unsafe {
        // 300.0 as u8 is 44
        println!(" 300.0 as u8 is : {}", 300.0_f32.to_int_unchecked::<u8>());
        // -100.0 as u8 is 156
        println!("-100.0 as u8 is : {}", (-100.0_f32).to_int_unchecked::<u8>());
        // nan as u8 is 0
        println!("   nan as u8 is : {}", f32::NAN.to_int_unchecked::<u8>());
    }
    // Rust normally does safe, checked conversions between types, which can have a small
    // performance cost. The unsafe 'to_int_unchecked' method skips these checks for speed,
    // but can produce unexpected results:
    // - 300.0 becomes 44 as u8 (it wraps around since u8 max is 255)
    // - -100.0 becomes 156 as u8 (negative values aren't representable in unsigned types)
    // - NaN (Not a Number) becomes 0 as u8 (special floating point values get default values)
    // These conversions follow raw bit manipulation rules and should be used with caution.
}
