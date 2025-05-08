// The File struct represents a file that has been opened (it wraps a file descriptor), 
// and gives read and/or write access to the underlying file.

// Since many things can go wrong when doing file I/O, all the File methods return the 
// io::Result<T> type, which is an alias for Result<T, io::Error>.

// The open function can be used to open a file in read-only mode
use std::fs::File;
use std::io::prelude::*;
use std::path::Path;
use std::fs::read_to_string;
use std::process::Command;

static LOREM_IPSUM: &str =
    "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
";

fn main() {
    // READ from FILE
    let path = Path::new("./hello.txt");
    let display = path.display();

    // open path in read-only
    let mut file = match File::open(&path) {
        Err(why) => panic!("couldn't open {}: {}", display, why),
        Ok(file) => file
    };

    // read the file contents into a string -- returns io::Result<usize>
    let mut s = String::new();
    match file.read_to_string(&mut s) {
        Err(why) => panic!("couldn't read {}: {}", display, why),
        Ok(_) => print!("{} containts:\n{}", display, s)
    }
    println!();
    // file goes out of scope, hello.txt gets closed

    // CREATE NEW FILE and WRITE
    let path = Path::new("lorum.txt");
    let display = path.display();
    let mut file = match File::create(&path) {
        Err(why) => panic!("error reading file {}: {}", display, why),
        Ok(file) => file,
    };
    match file.write_all(LOREM_IPSUM.as_bytes()) {
        Err(why) => panic!("couldn't write to {} : {}", display, why),
        Ok(_) => println!("sucessfully wrote to {}", display),
    };

    // wait 5 sec
    let mut child = Command::new("sleep").arg("5").spawn().unwrap();
    let _result = child.wait().unwrap();

    // READ LINES
    let read_lines = |filename: &str| -> Vec<String> {
        let mut result = Vec::new();
        for line in read_to_string(filename).unwrap().lines() {
            result.push(line.to_string());
            println!("{}", line)
        }
        result
    };

    // print entire lorum.txt file content
    read_lines("./lorum.txt");

    // wait 5 sec
    let mut child1 = Command::new("sleep").arg("5").spawn().unwrap();
    let _result = child1.wait().unwrap();
}
