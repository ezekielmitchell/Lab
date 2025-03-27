// its possible to first declare variable bindings then initialize later
// BUT -- all variable bindings must be initialized before used

fn main() {
    let a_binding;
    {
        let x = 3;
        a_binding = x*x;
    }

    println!("a binding: {}", a_binding);
    let another_binding;
    another_binding = 1;
    println!("another binding: {}", another_binding);
    
}
