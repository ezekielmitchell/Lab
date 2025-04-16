// output params are handled through the function's return type '->'
// allows the ability to return other functions or closures through functions
fn create_fn(i: i32) -> impl Fn(i32) -> i32 {
    let text = "Fn".to_owned();
    // this 'move' keyword must be used which signals that all captures occur by value
    move |i| {println!("This is a: {}, {1}", text, i.pow(i as u32)); return i}
}

fn create_fnmut() -> impl FnMut() {
    let text = "FnMut".to_owned();
    move || println!("This is a: {}", text)
}

fn create_fnonce() -> impl FnOnce() {
    let text = "FnOnce".to_owned();
    move || println!("This is a: {}", text)
}

fn main() {
    let fn_plain = create_fn(2);
    let mut fn_mut = create_fnmut();
    let fn_once = create_fnonce();

    fn_plain(3);
    fn_mut();
    fn_once(); 
}