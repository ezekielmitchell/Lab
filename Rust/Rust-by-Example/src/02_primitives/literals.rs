fn main() {
    // int addition
    println!("1 + 2 = {}", 1 + 2);

    // int subtraction
    println!("1 - 2 = {}", 1 - 2);

    // int multiplication
    println!("1 * 2 = {}", 1 * 2);

    // scientific notation
    println!("1e4 is {}", 1e4);

    // short-circuiting boolean logic
    println!("true AND false is {}", true && false);
    println!("true OR false is {}", true || false);
    println!("NOT true is {}", !true);

    // bitwise operations
    println!("0011 AND 0101 is {:04b}", 0b0011u32 & 0b0101);
    println!("0011 OR 0101 is {:04b}", 0b0011u32 | 0b0101);
    println!("0011 XOR 0101 is {:04b}", 0b0011u32 ^ 0b0101);
    println!("1 << 5 is {}", 1u32 << 5);
    println!("0x80 >> 2 is 0x{:x}", 0x80u32 >> 2);

    println!("One millions is written as {}", 1_000_000u32);
    
}
