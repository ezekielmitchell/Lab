#ifndef PROJECT_H
#define PROJECT_H

using namespace std;


// Function prototypes
void initialize(){
    cout << "pass : initialize" << endl;
};

void run(){
    cout << "pass : run" << endl;
};

void cleanup(){
    cout << "pass : cleanup" << endl;
};

// Class declarations
class Project {
    public:
        Project();
        ~Project();
        void execute();

        
    
    private:

};

struct Pet {

    Pet(){
        name="";
        age=0;
    };
    
    Pet(string n, int a){
        name = n;
        age = a;
    }

    ~Pet();

    void set_name(string name){
        this->name=name;
    };

    void set_age(int age){
        this->age=age;
    }

    string get_name(){
        return this->name;
    }

    int get_age(){
        return this->age;
    }
    
    private:
        string name;
        int age;

};

#endif // PROJECT_H