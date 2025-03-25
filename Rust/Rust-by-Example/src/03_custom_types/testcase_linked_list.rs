use crate::List::*;

// A common way to implement a linked-list is via enums

enum List {
    // cons: tuple struct wraps an element and point to next node
    Cons(u32, Box<List>),
    // nil: a node that signifies the end of the linked list
    Nil,
}

impl List {
    // create empty list
    fn new() -> List {
        Nil
    }
    // consume a list and return same list with a new element at front
    fn prepend(self, elem: u32) -> List {
        Cons(elem, Box::new(self))
    }
    // return len of list
    fn len(&self) -> u32 {
        match *self {
            Cons(_, ref tail) => 1 + tail.len(),
            Nil => 0
        }
    }
    // return representation of list as heap allocated string
    fn stringify(&self) -> String {
        match *self {
            Cons(head, ref tail) => {
                format!("{}, {}", head, tail.stringify())
            },
            Nil => {
                format!("Nil")
            },
        }
    }
}


fn main(){
    // Create an empty linked list
    let mut list = List::new();

    // Prepend some elements
    list = list.prepend(1);
    list = list.prepend(2);
    list = list.prepend(3);

    // Show the final state of the list
    println!("linked list has length: {}", list.len());
    println!("{}", list.stringify());
}