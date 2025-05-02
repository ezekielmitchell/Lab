// macros can be overloaded to accept different combinators of arguments
// macro_rules! can work simalarly to a match block:

// `test!` will compare `$left` and `$right`
// in different ways depending on how you invoke it:
macro_rules! test {
    // Arguments don't need to be separated by a comma.
    // Any template can be used!
    ($left:expr; and $right:expr) => {
        println!("{:?}, and {:?} is {:?}",
                stringify!($left),
                stringify!($right),
                $left && $right)
    };
    // ^ each arm must end with a semicolon.
    ($left:expr; or $right:expr) => {
        println!("{:?} or {:?} is {:?}",
                stringify!($left),
                stringify!($right),
                $left || $right)
    };
}

fn main() {
    test!(2i32 + 1 == 2i32; and 2i32 * 2 == 4i32);
    test!(false; or true);
    test!(false; and true);
}