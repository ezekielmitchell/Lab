#![allow(dead_code)]

#[derive(Debug)] enum Food { Apple, Carrot, Potato }

#[derive(Debug)] struct Peeled(Food);
#[derive(Debug)] struct Chopped(Food);
#[derive(Debug)] struct Cooked(Food);

// Peeling food. If there isn't any, then return `None`.
// Otherwise, return the peeled food.
fn peel(food: Option<Food>) -> Option<Peeled> {
    match food {
        Some(food) => Some(Peeled(food)),
        None       => None,
    }
}

// Chopping food. If there isn't any, then return `None`.
// Otherwise, return the chopped food.
fn chop(peeled: Option<Peeled>) -> Option<Chopped> {
    match peeled {
        Some(Peeled(food)) => Some(Chopped(food)),
        None               => None,
    }
}

// Cooking food. Here, we showcase `map()` instead of `match` for case handling.
fn cook(chopped: Option<Chopped>) -> Option<Cooked> {
    chopped.map(|Chopped(food)| Cooked(food))
}

// A function to peel, chop, and cook food all in sequence.
// We chain multiple uses of `map()` to simplify the code.
fn process(food: Option<Food>) -> Option<Cooked> {
    food.map(|f| Peeled(f))
        .map(|Peeled(f)| Chopped(f))
        .map(|Chopped(f)| Cooked(f))
}

// Check whether there's food or not before trying to eat it!
fn eat(food: Option<Cooked>) {
    match food {
        Some(food) => println!("Mmm. I love {:?}", food),
        None       => println!("Oh no! It wasn't edible.")
    }
}

pub mod food {
    #[derive(Debug)] pub enum Food { CordonBleu, Steak, Sushi }
    #[derive(Debug)] pub enum Day { Monday, Tuesday, Wednesday }
    
    // We don't have the ingredients to make Sushi.
    fn have_ingredients(food: Food) -> Option<Food> {
        match food {
            Food::Sushi => None,
            _           => Some(food),
        }
    }
    
    // We have the recipe for everything except Cordon Bleu.
    fn have_recipe(food: Food) -> Option<Food> {
        match food {
            Food::CordonBleu => None,
            _                => Some(food),
        }
    }
    
    // To make a dish, we need both the recipe and the ingredients.
    // We can represent the logic with a chain of `match`es:
    fn cookable_v1(food: Food) -> Option<Food> {
        match have_recipe(food) {
            None       => None,
            Some(food) => have_ingredients(food),
        }
    }
    
    // This can conveniently be rewritten more compactly with `and_then()`:
    fn cookable_v3(food: Food) -> Option<Food> {
        have_recipe(food).and_then(have_ingredients)
    }
    
    // Otherwise we'd need to `flatten()` an `Option<Option<Food>>`
    // to get an `Option<Food>`:
    fn cookable_v2(food: Food) -> Option<Food> {
        have_recipe(food).map(have_ingredients).flatten()
    }
    
    pub fn eat(food: Food, day: Day) {
        match cookable_v3(food) {
            Some(food) => println!("Yay! On {:?} we get to eat {:?}.", day, food),
            None       => println!("Oh no. We don't get to eat on {:?}?", day),
        }
    }
}

fn main() {
    let apple = Some(Food::Apple);
    let carrot = Some(Food::Carrot);
    let potato = Some(Food::Potato);

    let cooked_apple = cook(chop(peel(apple)));
    let cooked_carrot = cook(chop(peel(carrot)));
    // Let's try the simpler looking `process()` now.
    let cooked_potato = process(potato);

    eat(cooked_apple);
    eat(cooked_carrot);
    eat(cooked_potato);

    let (cordon_bleu, steak, sushi) = (food::Food::CordonBleu, food::Food::Steak, food::Food::Sushi);

    food::eat(cordon_bleu, food::Day::Monday);
    food::eat(steak, food::Day::Tuesday);
    food::eat(sushi, food::Day::Wednesday);
}