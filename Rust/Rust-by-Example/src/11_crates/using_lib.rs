// extern crate rary; // May be required for Rust 2015 edition or earlier
#![allow(special_module_name)]
mod lib;
fn main() {
    lib::indirect_access();
    lib::public_function();
}