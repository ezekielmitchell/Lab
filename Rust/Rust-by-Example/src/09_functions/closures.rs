// Closures are anonymous functions that can capture values from their surrounding environment. 
// Think of them as functions that you can store in a variable. 
// They're similar to lambdas in other languages.

fn main() {
    let outer_val = 42;
    // A regular function can't refer to variables in the enclosing environment
    // fn function(i: i32) -> i32 { i + outer_var }
    // TODO: uncomment the line above and see the compiler error. The compiler
    // suggests that we define a closure instead.

    // Closures are anonymous, here we are binding them to references.
    // Annotation is identical to function annotation but is optional
    // as are the `{}` wrapping the body. These nameless functions
    // are assigned to appropriately named variables.
    let closure_annotated = |i: i32| -> i32 { i + outer_val };
    let closure_inferred = |i| i + outer_val;

    println!("Closure_annotated: {}", closure_annotated(1));
    println!("Closure_inferred: {}", closure_inferred(1));

    // A closure taking no args which returns an 'i32'
    // the return type is inferred
    let one = || 1;
    println!("Closure returning one: {}", one())
}
