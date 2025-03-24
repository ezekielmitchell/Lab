#![allow(unused_imports)]
#![allow(dead_code)]

use std::mem;

// this function borrows a slice
fn anaylze_slice(slice: &[i32]) {
    println!("First element of the slice: {}", slice[0]);
    println!("The slice has {} elements", slice.len());
}

fn main() {
    let xs: [i32; 5] = [1, 2, 3, 4, 5]; // f-xed-sized array
    let ys: [i32; 500] = [0; 500]; // all elements initalized to same value

    // index starts at 0
    println!("First element of the array: {}", xs[0]);
    println!("Third element of the array: {}", xs[2]);

    // `len` returns the count of elements in array
    println!("Array size: {}", xs.len());

    // arrays are stack allocated
    println!("Array occupies {} bytes", mem::size_of_val(&xs));

    // arrays can be borrowed as slices automatically
    println!("Borrow the whole array as a slice.");
    anaylze_slice(&xs);
    println!("Borrow a section of the array as a slice.");
    anaylze_slice(&ys[5..250]);

    // empty slices
    let empty_array: [i32; 0] = [];
    assert_eq!(&empty_array, &[]);

    // Arrays can be safely accessed using `.get`, which returns an
    // `Option`. This can be matched as shown below, or used with
    // `.expect()` if you would like the program to exit with a nice
    // message instead of happily continue.
    for i in 0..xs.len() +1 {
        match xs.get(i) {
            Some(xval) => println!("{}: {}", i, xval),
            None => println!("Slow down! {} is too far!", i),
        }
    }
}
