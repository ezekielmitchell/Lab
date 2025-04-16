// This file demonstrates the use of closures with Iterator trait methods
// PSEUDO CODE:
// Iterator = abstract way to move through a collection one item at a time
// Closures = small anonymous functions that can capture their environment

pub trait Iterator {
    // The type being iterated over.
    type Item;

    // `any` takes `&mut self` meaning the caller may be borrowed
    // and modified, but not consumed.
    fn any<F>(&mut self, f: F) -> bool where
        // `FnMut` meaning any captured variable may at most be
        // modified, not consumed. `Self::Item` states it takes
        // arguments to the closure by value.
        F: FnMut(Self::Item) -> bool;
    
    // PSEUDO CODE for any:
    // for each item in the collection:
    //     if f(item) == true:
    //         return true
    // return false

    fn find<P>(&mut self, predicate: P) -> Option<Self::Item> where P: FnMut(&Self::Item) -> bool;
    // PSEUDO CODE for find:
    // for each item in the collection:
    //     if predicate(&item) == true:
    //         return Some(item)
    // return None
}

fn main() {
    let mut vec1 = vec![1, 8, 3];
    let mut vec2 = vec![4, 5, 6];

    // PSEUDO CODE for first example:
    // create an iterator from vec1
    // for each item in the iterator:
    //     check if item equals 2
    //     if any item equals 2, return true
    println!("2 in vec1: {}", vec1.iter().any(|&x| x==2));
    
    // PSEUDO CODE for second example:
    // create an iterator from vec1
    // for each item in the iterator:
    //     check if item equals 5
    //     if any item equals 5, return true (which won't happen)
    println!("5 in vec1: {}", vec1.iter().any(|&x| x==5));
    
    // Let's see how find works (additional example)
    let found = vec1.iter().find(|&&x| x > 2);
    println!("Found value > 2: {:?}", found);  // Will print Some(3)

    println!("Find 2nd value: {:?}", vec1.iter().find(|&&x| x == vec1[1]));

    vec1.append(&mut vec2);

    println!("Vec: {:?}", vec1);

    let index_of_first_even_number = vec1.iter().position(|&x| x % 2 == 0 );
    assert_eq!(index_of_first_even_number, Some(1));
    
}