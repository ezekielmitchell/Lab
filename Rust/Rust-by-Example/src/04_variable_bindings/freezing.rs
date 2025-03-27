// when data is bound by the same name immutably, it also freezes
// frozen data can't be modified until the immutable beinding goes out of scope


// Rust, when a mutable variable is shadowed by an immutable binding, 
// the original mutable variable becomes inaccessible and effectively "frozen" for the duration of the shadowing scope.
fn main() {
    let mut _mutable_integer = 7i32;
    {
        let _mutable_integer = _mutable_integer; // shadowing by immutable above
        // _mutable_integer = 50; // Error! '_mutable_integer' is frozen in this scope
        
    }
    _mutable_integer = 3; // OK -- '_mutable_integer' not frozen in this scope
}
