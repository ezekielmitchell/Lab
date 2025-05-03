// the simplest error handling mech is panic
// it prints an error message, starts unwinding the stack, and exits the program
fn drink(beverage: &str) {
    if beverage == "lemonade" {
        panic!("Out of {beverage}!");
    }

    println!("Some refreshing {beverage} is all I need!");
}

fn main() {
    let bev1: &str = "lemonade";
    let bev2 = "coffee";
    drink(bev2);
    drink(bev1);
    drink(bev2); // <== this will _NOT_ run
}