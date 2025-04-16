// Inferences refer to the compiler's ability to automatically determine the type
// it also looks at how the variable is used afterwards to infer its type
fn main() {
    // because of annotation, the compiler knows that 'elem' has type u8
    let elem = 5u8;

    // create an empty vector (a growable array)
    let mut vec = Vec::new();
    // at this point the compiler doesn't know the vec type
    
    // inter elem into vec then compiler will know its vec<u8>
    vec.push(elem); // changes Vec<unknown> -> Vec<u8>

    println!("{:?}", vec);

    vec.push(2);
    println!("{:?}",vec);
}
