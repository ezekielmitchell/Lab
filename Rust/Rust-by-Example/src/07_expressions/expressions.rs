// A Rust program is (mostly) made up of a series of statements

// there are a few kinds of statements in Rust -- the most common two are declaring a variable binding
// and using a ; with an expression

fn main() {
    // variable binding
    let x = 5;

    // expression
    x;
    x + 1;
    15;

    // blocks are expressions too, so they can be used as values in assignments
    let y = {
        let x_squared = x*x;
        let x_cube = x_squared*x;
        x_cube + x_squared + x // this expression will be assigned to y
    };

    let z = {
        2 + x; // the semicolon ';' supresses the expression and '()' is assigned to 'z'
    };

    println!("x is {:?}", x);
    println!("y is {:?}", y);
    println!("z is {:?}", z);    
}
