// some conditionals like target_os are implicitly provided by rustc
// custom conditionals must be passed to rustc via `--cfg` flag
#[cfg(endr)]
fn conditional_function() { println!("passed")}
fn main() {
    // conditional_function();
}