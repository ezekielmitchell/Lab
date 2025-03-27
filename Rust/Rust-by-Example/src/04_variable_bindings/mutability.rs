// Variable binding
// Rust provides type safety via static typing.
// Variable bindings can be type annotated when declared. 
// However, in most cases, the compiler will be able to infer 
// the type of the variable from the context, heavily reducing the annotation burden.


fn main(){
    let an_integer = 1i16;
    let a_boolean = true;
    let unit = ();

    // copied an_integer to copied_integer
    let copied_integer = an_integer;

    println!("An integer: {:?}", copied_integer);
    println!("A boolean: {:?}", a_boolean);
    println!("Meet the unit value: {:?}", unit); 

    // used underscored to keep from compile warnings of unused variables
    let _unused_variable = 3u32;
    let _noisy_unused_variable = 2u32;

    // variable bindings are immutable by default
    // this can be overriden using the 'mut' modifier
    let _immutable_binding = 1; // unable to change
    let mut mutable_binding = 1;

    println!("Before mutation: {}", mutable_binding);

    mutable_binding = 2;
    println!("After mutation: {}", mutable_binding);
}