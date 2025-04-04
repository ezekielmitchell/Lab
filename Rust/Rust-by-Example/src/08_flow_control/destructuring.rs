#![allow(dead_code)]
enum Color {
    // Specified by name
    Red,
    Green,
    Blue,
    // These likewise tie `u32` tuples to different names: color models.
    RGB(u32, u32, u32),
    HSV(u32, u32, u32),
    HSL(u32, u32, u32),
    CMY(u32, u32, u32),
    CMYK(u32, u32, u32, u32),    
}

// a 'match' block can destruct items in a variety of ways

fn main() {
    let triple = (3, -2, 2);

    println!("Tell me about {:?}", triple);

    match triple {
        // Destructure the second and third elements
        (0, y, z) => println!("First is `0`, `y` is {:?}, and `z` is {:?}", y, z),
        (1, ..)  => println!("First is `1` and the rest doesn't matter"),
        (.., 2)  => println!("last is `2` and the rest doesn't matter"),
        (3, .., 4)  => println!("First is `3`, last is `4`, and the rest doesn't matter"),
        // `..` can be used to ignore the rest of the tuple
        _      => println!("It doesn't matter what they are"),
        // `_` means don't bind the value to a variable
    }

    // ** Arrays/Slices ** //
    // Like tuples, arrays and slives can be destructed this way:
    let array = [1, -2, 0];

    match array {
        // Binds the second and the third elements to the respective variables
        [0, second, third] =>
            println!("array[0] = 0, array[1] = {}, array[2] = {}", second, third),

        // Single values can be ignored with _
        [1, _, third] => println!(
            "array[0] = 1, array[2] = {} and array[1] was ignored",
            third
        ),

        // You can also bind some and ignore the rest
        [-1, second, ..] => println!(
            "array[0] = -1, array[1] = {} and all the other ones were ignored",
            second
        ),
        // The code below would not compile
        // [-1, second] => ...

        // Or store them in another array/slice (the type depends on
        // that of the value that is being matched against)
        [3, second, tail @ ..] => println!(
            "array[0] = 3, array[1] = {} and the other elements were {:?}",
            second, tail
        ),

        // Combining these patterns, we can, for example, bind the first and
        // last values, and store the rest of them in a single array
        [first, middle @ .., last] => println!(
            "array[0] = {}, middle = {:?}, array[2] = {}",
            first, middle, last
        ),
    }

    // ** Enums ** //
    // An enum is desctructed similarly
    let color = Color::RGB(122, 17, 40);
    // TODO ^ Try different variants for `color`

    println!("What color is it?");
    // An `enum` can be destructured using a `match`.
    match color {
        Color::Red   => println!("The color is Red!"),
        Color::Blue  => println!("The color is Blue!"),
        Color::Green => println!("The color is Green!"),
        Color::RGB(r, g, b) =>
            println!("Red: {}, green: {}, and blue: {}!", r, g, b),
        Color::HSV(h, s, v) =>
            println!("Hue: {}, saturation: {}, value: {}!", h, s, v),
        Color::HSL(h, s, l) =>
            println!("Hue: {}, saturation: {}, lightness: {}!", h, s, l),
        Color::CMY(c, m, y) =>
            println!("Cyan: {}, magenta: {}, yellow: {}!", c, m, y),
        Color::CMYK(c, m, y, k) =>
            println!("Cyan: {}, magenta: {}, yellow: {}, key (black): {}!",
                c, m, y, k),
        // Don't need another arm because all variants have been examined
    }

    // ** Pointers/Ref ** //
    // For pointers, a distinction needs to be made between destructing and dereferencing as they are
    // different concepts which are used differently from languages like C/C++
    
    // assign a reference type of i32 the '&' signifies there is a reference being assigned
    let reference = &4;
    match reference {
        &val => println!("Got a value via destructing {:?}", val),
    }

    // to avoid the '&', dereference before matching
    match *reference {
        val => println!("Got a value via dereferencing: {:?}", val),
    }

    let _not_a_reference = 3;
    let ref _is_a_reference = 3; // creates a reference using ref isntead of '&'
    // use ref to create a reference
    let value = 5;
    match value {
        ref r => println!("Got a reference to a value: {:?}", r),
    }

    let mut mut_value = 6;
    match mut_value {
        ref mut m => {
            // must dereference value before adding to it
            *m += 10;
            println!("We added 10. 'mut_value': {:?}", m);
        },
    }

    // ** Structs ** //
    // a struct can be destructered as shown:
    struct Foo {
        x: (u32, u32),
        y: u32,
    }

    let foo = Foo {x: (3,2), y: 3 };

    match foo {
        Foo { x: (1, b), y } => println!("First of x is 1, b = {},  y = {} ", b, y),

        // you can destructure structs and rename the variables,
        // the order is not important
        Foo { y: 2, x: i } => println!("y is 2, i = {:?}", i),

        // and you can also ignore some variables:
        Foo { y, .. } => println!("y = {}, we don't care about x", y),
        // this will give an error: pattern does not mention field `x`
        //Foo { y } => println!("y = {}", y),        
    }

    // no need for a match block to deconstructure structs:
    let faa = Foo { x: ( 1, 2 ), y: 3 };
    let Foo {x : x0, y: y0 } = faa;
    println!("Outside: x0 = {x0:?}, y0 = {y0}");

    // works with nested structs as well
    struct Bar {
        foo: Foo,
    }

    let bar = Bar { foo: faa };
    let Bar { foo: Foo {x: nested_x, y: nested_y } } = bar;
    println!("Nested: nested_x: {nested_x:?}, nexted_y: {nested_y:?}");
}
