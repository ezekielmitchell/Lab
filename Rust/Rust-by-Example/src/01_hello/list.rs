use std::fmt;

struct List(Vec<i32>);

impl fmt::Display for List {
    fn fmt(&self, f: &mut fmt::Formatter) -> fmt::Result {
        // Extract the value using tuple indexing
        // and create a reference to 'vec'
        let vec = &self.0;

        write!(f, "[")?;

        // iterate over 'v' in 'vev' while enumerating the iteration
        // counbt in 'count'
        for (count, v) in vec.iter().enumerate() {
            if count != 0 {write!(f, ", ")?;}
            write!(f, "{}: {}", count, v)?;
        }
        write!(f, "]")?;
        Ok(())
    }
}

fn main() {
    let v = List(vec![1,2,3]);
    println!("{}", v);
}
