// The 'for in' construct can be used to iterate through an Iterator
// One of the easiet ways to create an iterator is through range notion [ a...b ]
// a (inclusive) to b (exclusive)

fn main() {
    // 'n' will take the values: 1, 2, ..., 100 each iteration
    for n in 1..100 {
        print!("{}, ", n)
    }
    println!("100")
}
