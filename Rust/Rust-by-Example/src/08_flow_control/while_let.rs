// similar to if let -- while-let can make awkward match sequences more tolerable

fn main() {
    let mut optional = Some(0);
    loop {
        match optional {
            Some(i) => {
                if i > 9 {
                    println!("greater than 9");
                    optional = None;
                } else {
                    println!("'i' is '{:?}'/ Try again", i);
                    optional = Some(i + 1);
                    // ^^ requires 3 indentations
                }
            },
            // qiuit the loop when destructure fails
            _ => break,
        }
    }

    // while-let makes this nicer
    let mut optional = Some(0);
    while let Some(i) = optional {
        if i > 9 {
            println!("Greater than 9!");
            optional = None;
        } else {
            println!("'i' is '{:?}'/ Try again", i);
            optional = Some(i + 1);
        }
    }
}
