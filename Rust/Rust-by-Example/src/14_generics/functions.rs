// A concrete type `A`.
struct A;
struct _S;

// In defining the type `Single`, the first use of `A` is not preceded by `<A>`.
// Therefore, `Single` is a concrete type, and `A` is defined as above.
struct Single(A);
//            ^ Here is `Single`s first use of the type `A`.

// Here, `<T>` precedes the first use of `T`, so `SingleGen` is a generic type.
// Because the type parameter `T` is generic, it could be anything, including
// the concrete type `A` defined at the top.
struct SingleGen<T>(T);

mod play {
    pub fn newer(){}
}

fn reg_fn(_arg: Single) {} // take type '_S'

fn generic<T>(_s: SingleGen<T>){}

fn gen_spec_i32(_s: SingleGen<i32>){}
fn gen_spec_t(_s: SingleGen<A>){}

fn main() {
    // `Single` is concrete and explicitly takes `A`.
    let _s = Single(A);
    
    // Create a variable `_char` of type `SingleGen<char>`
    // and give it the value `SingleGen('a')`.
    // Here, `SingleGen` has a type parameter explicitly specified.
    let _char: SingleGen<char> = SingleGen('a');

    // `SingleGen` can also have a type parameter implicitly specified:
    let _t    = SingleGen(A); // Uses `A` defined at the top.
    let _i32  = SingleGen(6); // Uses `i32`.
    let _char = SingleGen('a'); // Uses `char`.

    play::newer();

    // Using the non-generic functions
    reg_fn(Single(A));          // Concrete type.
    gen_spec_t(SingleGen(A));   // Implicitly specified type parameter `A`.
    gen_spec_i32(SingleGen(6)); // Implicitly specified type parameter `i32`.
    generic(SingleGen(43));
}