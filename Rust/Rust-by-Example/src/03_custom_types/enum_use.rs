// the 'use' declaration is used to bring items (enums, structs, traits, functions, modules)
// into scope to reference them without needing to specific their full path each time

#![allow(dead_code)]

enum Stage {
    Beginner,
    Advanced,
}

enum Role {
    Student,
    Teacher,
}

fn main() {
    // explicitly 'use' each name so they are available without manual scoping
    use crate::Stage::{Beginner, Advanced };
    use crate::Role::{ Student, Teacher };

    let stage = Beginner;
    let role = Student;

    match stage {
        Beginner => println!("I am a beginner"),
        Advanced => println!("I am adavnced"),
    }

    match role {
        Student => println!("I am a student"),
        Teacher => println!("I am a teacher"),
    }
}
