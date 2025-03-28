#![allow(unused_allocation, unused_variables)]

enum Foo { Bar }

fn main() {
    // For some use cases, when matching enums 'match' is awkward... for example:
    let optional = Some(7);
    match optional {
        Some(i) => println!("This is a really long string and '{:?}'", i),
        _ => {},
        // ^^ required because 'match' is exhaustive - waste of space here
    }

    // 'if let' is cleaner for this use case and in addition allows various failure options to be specified
    let number = Some(7);
    let letter: Option<i32> = None;
    let emoticon: Option<i32> = None;

    // 'if let' constructs reads: if 'let' destructures 'number' into 'Some(i), evaluate the block ('{}')
    if let Some(i) = number {
        println!("Matched {:?}", i);
    }

    // if the need to specify failure, use else:
    if let Some(i) = letter {
        println!("Matched {:?}", i);
    } else {
        println!("Didn't match a number!");
    }

    // provide an altered failing condition
    let i_like_letters = false;
    if let Some(i) = emoticon {
        println!("Matched");
    } else if i_like_letters {
        println!("Didn't match number for emoticon");
    } else {
        println!("Other.... I don't like letters!")
    }

    // ** Enums ** // 
    enum Foo {
        Bar,
        Baz,
        Quz(u32),
    }

    let a = Foo::Bar;
    let b = Foo::Baz;
    let c = Foo::Quz(100);

    if let Foo::Bar = a {
        println!("pass");
    }

    if let Foo::Baz = b {
        println!("pass again!");
    }

    if let Foo::Quz(value @ 101) = c  {
        println!("pass");
    } else {
        println!("failure at Quz!")
    }

    // if-let also allows the matching of non-parameterized enum variants
    let a = Foo::Bar;
    if let Foo::Bar = a {
        println!("a is foobar");
    }
}
