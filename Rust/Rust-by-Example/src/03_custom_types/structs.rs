#![allow(dead_code)]

#[derive(Debug)]
struct Person {
    name: String,
    age: u8,
}

// A unit struct
struct Unit;

// A tuple struct
struct Pair(i32, f32);

// A struct with two fields
#[derive(Debug)]
struct Point {
    x: f32,
    y: f32,
}

// Structs can be reused as fields of another struct
#[derive(Debug)]
struct Rectangle {
    // A rectangle can be specified by where the top left and bottom right corners are in space
    top_left: Point,
    bottom_right: Point,
}

fn rect_area(x: i32, y: i32) -> i32 {
    x * y 
}

fn square(point: Point, a: f32) -> Rectangle {
    Rectangle {
        top_left: Point{x: point.x, y: point.y},
        bottom_right: Point{ x: point.x + a, y: point.y - a },
    }
}

fn main() {
    // create a struct with field init shorthand
    let name = String::from("Ezekiel");
    let age = 27;
    let ezekiel = Person {name, age};

    // print debug struct
    println!("{:#?}", ezekiel);
    println!("{} is {} years old", ezekiel.name, ezekiel.age);

    // instantiate a point
    let point1 = Point{x: 0.0, y: 0.0};
    let point2 = Point{x: 20.0, y: 20.0};

    // let rectangle = Rectangle{top_left: point1, bottom_right: point2};
    // println!("{:#?}", rectangle);

    // make a new point by using struct update syntax to use the fields of the other
    let another_point = Point {x: 10.3, ..point2}; // another point 'bottom_right' will be the same as point1

    // destructure the point using a 'let' binding
    let Point { x: left_edge, y: top_edge} = point1;


    let _rectangle = Rectangle {
        top_left: Point {x: left_edge, y: top_edge},
        bottom_right: another_point,
    };

    let _unit = Unit;

    let pair = Pair(5, 27.0);
    println!("{}... to {}", pair.0, pair.1);

    // Destruct the tuple struct
    let Pair(integer, decimal) = pair;
    println!("{:?} and {:?}", integer, decimal);

    let area = rect_area(pair.0, pair.1 as i32);
    println!("Area of rectangle is : {}", area);

}
