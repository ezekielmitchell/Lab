// One of the uses of a loop is to retry an operation until success
// If the operation returns a value, I may need to pass it to the rest of the code
/// put it after the 'break' and it will be returned by the loop expression!

fn main() {
    let mut counter = 0;

    let result = loop {
        counter += 1;

        if counter == 10 {
            
            break counter * 2
        }
    };

    assert_eq!(result, 20)
}
