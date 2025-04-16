// variable bindings have a scope and are constrained to live in a block
// a block is a collection of statements enclosed by braces {}

fn main() {

    let long_lived_binding = 1;

    {
        let short_lived_binding = 2;
        println!("Short lived within scope: {}\nLong lived still in scope: {}", short_lived_binding, long_lived_binding);
    }

    // short_lived is not accessible outside of its brackets but long_lived is
    println!("Long lived still accessible outside brackets: {}", long_lived_binding);

    // variable shadowing is also allocated
    // shadowing is just re-declaring a variable with the same name
    let shadow_binding = 1;
    {
        println!("Before being shadowed: {}", shadow_binding);
        let shadow_binding = "abc";
        println!("Shadowed in inned block: {}", shadow_binding);
    }
    println!("Outside inner block shaodwing binding: {}", shadow_binding);
    let shadow_binding = 2; // this binding shadows the previous binding
    println!("Shadowed in out block: {}", shadow_binding);
}
