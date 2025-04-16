// Input functions take other functions are parameters
// They are commonly used with closures and callbacks

fn call_me<F: Fn()>(f: F){ f(); }

// same as above
// fn call_me<F>(f: F) where F: Fn() {f();}

fn function(){
    println!("I'm a function!");
}

fn main(){
    let closure = || println!("I'm a closure!");

    call_me(closure);
    call_me(function);
}