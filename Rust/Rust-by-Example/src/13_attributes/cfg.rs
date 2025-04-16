// cfg (short for "configuration") is a conditional compilation attribute in Rust 
// that allows you to include or exclude code based on various configuration options.

// configuration conditional checks are possible through two different operators:
// (1) cfg attribute: #[cfg(...)] in attribute position
#[cfg(target_os = "linux")]
fn are_you_on_linux() { println!("You are running linux!") }
#[cfg(not(target_os = "linux"))]
fn are_you_on_linux() { println!("You aren't on linux...") }

fn main() {
    
    are_you_on_linux();
    
    println!("Are you sure?");

    // (2) cfg! macro: 'cfg(...)' in boolean expressions
    // does NOT remove any code and only evaluates to true or false
    if cfg!(target_os = "linux") {
        println!("Yes. It's definitely linux!");
    } else {
        println!("Yes. It's definitely *not* linux!");
    }
}
