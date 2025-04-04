use std::convert::TryFrom;
use std::convert::TryInto;

// Similar to FROM and INTO, 
// TryFrom and TryInto are generic traits for converting between types

// Unline FROM/INTO
// TryFrom/TryInto traits are used for fallible conversions, and as such, return Results S

#[derive(Debug, PartialEq)]
struct EvenNumber(i32);

impl TryFrom<i32> for EvenNumber {
    type Error = ();

    fn try_from(value: i32) -> Result<Self, Self::Error> {
        if value % 2 == 0 {
            Ok(EvenNumber(value))
        } else {
            Err(())
        }
    }
}

fn main() {
    // TryFrom
    assert_eq!(EvenNumber::try_from(20), Ok(EvenNumber(20)));
    assert_eq!(EvenNumber::try_from(5), Err(()));

    // TryInto
    let result: Result<EvenNumber, ()> = 8i32.try_into();
    assert_eq!(result, Ok(EvenNumber(8)));
    let result: Result<EvenNumber, ()> = 5i32.try_into();
    assert_eq!(result, Err(()));

    let num = 5;
    assert_eq!(num, 5);
}
