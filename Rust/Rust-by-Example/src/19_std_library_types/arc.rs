use std::time::Duration;
use std::sync::Arc;
use std::thread;
use std::path::Path;

fn main() {
    // This variable declaration is where its value is specified.
    let apple = Arc::new("the same apple");

    for _ in 0..10 {
        // Here there is no value specification as it is a pointer to a
        // reference in the memory heap.
        let apple = Arc::clone(&apple);

        thread::spawn(move || {
            // As Arc was used, threads can be spawned using the value allocated
            // in the Arc variable pointer's location.
            println!("{:?}", apple);
        });
    }

    // Make sure all Arc instances are printed from spawned threads.
    thread::sleep(Duration::from_secs(2));

    // The Path struct represents file paths in the underlying filesystem. 
    // There are two flavors of Path: posix::Path, for UNIX-like systems, and 
    // windows::Path, for Windows. The prelude exports the appropriate platform-specific Path variant.

    // Create a `Path` from an `&'static str`
    let path = Path::new("");

    // The `display` method returns a `Display`able structure
    let _display = path.display();

    // `join` merges a path with a byte container using the OS specific
    // separator, and returns a `PathBuf`
    let mut new_path = path.join("a").join("b");

    // `push` extends the `PathBuf` with a `&Path`
    new_path.push("c");
    new_path.push("myfile.tar.gz");

    // `set_file_name` updates the file name of the `PathBuf`
    // new_path.set_file_name("package.tgz");
    new_path.set_file_name("endr.tgz");

    // Convert the `PathBuf` into a string slice
    match new_path.to_str() {
        None => panic!("new path is not a valid UTF-8 sequence"),
        Some(s) => println!("new path is {}", s),
    }

    // A Path is immutable. The owned version of Path is PathBuf. 
    // The relation between Path and PathBuf is similar to that of str and String: 
    // a PathBuf can be mutated in-place, and can be dereferenced to a Path.
}