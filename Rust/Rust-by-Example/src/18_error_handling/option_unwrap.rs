fn give_adult(drink: Option<&str>) {
    match drink {
        Some("lemonade") => println!("Yuck! lemonade!"),
        Some(inner) => println!("{inner}? Nice!"),
        None => println!("No drink? Oh well..."),
    }
}

fn drink(drink: Option<&str>) {
    let inside = drink.unwrap();
    if inside == "lemonade" { panic!("AAAAAaaahhhh!!!");}
    println!("I love {inside}s!!!");
}

fn main() {
    let water  = Some("water");
    let lemonade = Some("lemonade");
    let void  = None;

    give_adult(water);
    give_adult(lemonade);
    give_adult(void);

    let coffee = Some("coffee");
    let nothing = None;

    drink(coffee);
    drink(nothing);
}
