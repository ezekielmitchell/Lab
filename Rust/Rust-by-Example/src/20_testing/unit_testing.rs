/// First line is a short summary describing function.
///
/// The next lines present detailed documentation. Code blocks start with
/// triple backquotes and have implicit `fn main()` inside
/// and `extern crate <cratename>`. Assume we're testing `doccomments` crate:
///
/// ```
/// let result = doccomments::add(2, 3);
/// assert_eq!(result, 5);
/// ```

// In software development, there are several types of testing, each serving a specific purpose. Here are the main types:
// 1. **Unit Testing**: Tests individual components or functions in isolation to ensure they work as expected.
// 2. **Integration Testing**: Verifies that different modules or components work together correctly.
// 3. **System Testing**: Tests the entire system as a whole to ensure it meets the specified requirements.
// 4. **Acceptance Testing**: Validates the system against user requirements and checks if it is ready for deployment.
// 5. **Regression Testing**: Ensures that new changes or updates do not break existing functionality.
// 6. **Performance Testing**: Evaluates the system's performance under specific conditions, such as load or stress.
// 7. **Security Testing**: Identifies vulnerabilities and ensures the system is secure against threats.
// 8. **Smoke Testing**: A quick test to check if the basic functionality of the system works.
// 9. **End-to-End Testing**: Tests the complete workflow of an application, from start to finish.
// 10. **Exploratory Testing**: Involves testing without predefined test cases, focusing on discovering issues through exploration.

// Most unit tests go into a tests mod with the #[cfg(test)] attribute. Test functions are marked with the #[test] attribute.
// Tests fail when something in the test function panics. There are some helper macros:
// assert!(expression) - panics if expression evaluates to false.
// assert_eq!(left, right) and assert_ne!(left, right) - testing left and right expressions for equality and inequality respectively.

pub fn add(a: i32, b: i32) -> i32 {
    a+b
}

#[allow(dead_code)]
pub fn bad_add(a: i32, b: i32) -> i32 {
    a-b
}

fn sqrt(number: f64) -> Result<f64, String> {
    if number >= 0.0 {
        Ok(number.powf(0.5))
    } else {
        Err("ERROR::Negative floats don't have square roots!".to_owned())
    }
}

// The main function is required for the crate to compile as an executable.
fn main() {
    println!("This is the main function.");
}

#[cfg(test)]
mod tests {
    // importing names from outer (for mod tests) scope
    use super::*;

    #[test]
    fn test_add() {
        assert_eq!(add(1,2), 3);
    }

    #[test]
    fn test_bad_add() {
        assert_eq!(bad_add(1,2), -1);
    }

    #[test]
    fn test_sqrt() -> Result<(), String> {
        let x = 1.;
        assert!(sqrt(x)?.powf(2.)==x);
        Ok(())
    }
}