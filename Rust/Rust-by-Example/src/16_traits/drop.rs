// The Drop trait only has one method: drop, which is called automatically when an object goes out of scope. 
// The main use of the Drop trait is to free the resources that the implementor instance owns.

struct Droppable {
    name: &'static str,
}

// This trivial implementation of `drop` adds a print to console.
impl Drop for Droppable {
    fn drop(&mut self) {
        println!("> Dropping {}", self.name);
    }
}

fn main() {
    let _a = Droppable { name: "a" };

    // block A
    {
        let _b = Droppable { name: "b" };

        // block B
        {
            let _c = Droppable { name: "c" };
            let _d = Droppable { name: "d" };

            println!("Exiting block B");
        }
        println!("Just exited block B");

        println!("Exiting block A");
    }
    println!("Just exited block A");

    // Variable can be manually dropped using the `drop` function
    drop(_a);
    // TODO ^ Try commenting this line

    println!("end of the main function");

    // `_a` *won't* be `drop`ed again here, because it already has been
    // (manually) `drop`ed
}



// ## Core Concepts
// 1. **The Drop Trait**: 
//    - Provides a way to run code when a value goes out of scope
//    - Primarily used to free resources (memory, file handles, etc.)
//    - Automatically called by Rust's compiler
// 2. **Deterministic Destruction**:
//    - Values are dropped in reverse order of creation
//    - Drop occurs automatically at the end of each scope
//    - Can be triggered manually with the `drop()` function

