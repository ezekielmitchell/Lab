#include<iostream>
using namespace std;

class Node {
    public:
        int value;
        Node* next;

        Node(int value){ 
            this->value = value;
            next = nullptr;
        }
};

class LinkedList {
    private:
        Node* head;
        Node* tail;
        int length;

    public:
        LinkedList(int value){
            Node* newNode = new Node(value);
            head = newNode;
            tail = newNode;
            length = 1;
        }

        void print_list() {
            Node* temp = head;
            cout << "Linked List: ";
            while(temp != nullptr){
                cout << temp->value << ' ';
                temp = temp->next;
            }
            cout << endl;
        }

        void delete_list(){
            Node* temp = head;
            while(head){
                head = head->next;
                delete temp;
                temp = head;
            }
            head = nullptr;
            tail = nullptr;
            length = 0;
        }

        void delete_last(){
            if(length==0) return;
            if(length==1) delete_list();
            Node* temp = head;
            delete tail;
            while(temp->next != nullptr){
                tail = tail->next;
            }
        }

        void append(int value){
            Node* newNode = new Node(value);
            if(length==0){
                head = newNode;
                tail = newNode;
            } else {
                tail->next = newNode;
                tail = newNode;
            }
            length++;
        }

        void set_value(int value){
            head->value = value;
        }

        int get_value(){
            return head->value;
        }

        Node* get_next(){
            return head->next;
        }
};

int main(int argc, char* argv[]) {

    LinkedList* one = new LinkedList(3);
    one->append(2);
    one->append(9);
    one->append(43);
    one->print_list();
    one->delete_list();
    one->print_list();

    return 0;
}