// 'super' and 'self' are special keywords for referncing modules in relative paths
mod parent {
    use child::greet;

    pub fn hello(){ println!("Hello from parent module" )}
    
    mod child{
        pub fn greet(){ println!("Greeting from child module"); super::hello()}
    }

    pub mod visible_child {
        pub fn call_parent(){ super::hello(); }
        
        mod deep_child {
            pub fn deep_call(){ super::super::hello(); }
        }
    }

    pub fn indirect_all() {
        print!("Called `my::indirect_all()`, that\n> ");
        self::child::greet();
        greet();

        self::visible_child::call_parent();
    }
}

fn main(){
    parent::hello();
    parent::visible_child::call_parent();
    
}