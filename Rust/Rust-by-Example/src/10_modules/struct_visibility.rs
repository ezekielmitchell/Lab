mod my {
    // a public struct with a public field of generic type 'T'
    pub struct OpenBox<T> {
        pub constents: T,
    }

    // a public struct with a private field of generic type 'T'
    pub struct ClosedBox<T> {
        contents: T,
    }

    impl<T> ClosedBox<T> {
        pub fn new(contents: T) -> ClosedBox<T> { ClosedBox { contents: contents, }}
    }
}

fn main() {
    let open_box = my::OpenBox { constents : "public information"};
    println!("The open box contains {}", open_box.constents);
    let _closed_box = my::ClosedBox::new("Classified information");

}
