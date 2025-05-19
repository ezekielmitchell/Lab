#ifndef NODE_H
#define NODE_H
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
            cout << "Linked List of length [" << length << "]: ";
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
                length--;
            }
            head = nullptr;
            tail = nullptr;
        }

        void delete_first(){
            if(length==0) return;
            Node* temp = head;
            if(length==1) {
                head = nullptr;
                tail = nullptr;
            } else {
                head = head->next;
            }
            length--;
            delete temp;
        }

        void delete_last(){
            if(length==0) return;
            Node* temp = head;
            if(length==1){
                head = nullptr;
                tail = nullptr;
                length--;
                return;
            } else {
                Node* pre = head;
                while(temp->next){
                    pre = temp;
                    temp = temp->next;
                }
            tail = pre;
            tail->next = nullptr;
            }
            delete temp;
            length--;
        }

        void delete_node(int index){
            if(index < 0 || index >= length) return;
            if(index==0) return delete_first();
            if(index==length-1) return delete_last();
            
            Node* prev = get(index-1);
            Node* temp = prev->next;

            prev->next = temp->next;
            delete temp;
            length--;
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

        void prepend(int value){
            Node* new_node = new Node(value);
            if(length==0){
                head = new_node;
                tail = new_node;
            } else {
                new_node->next = head;
                head = new_node;
            }
            length++;
        }

        Node* get(int index){
            if(index < 0 || index >= length){
                return nullptr;
            }
            Node* temp = head;
            for (int i=0; i<index; i++){
                temp = temp->next;
            }
            return temp;
        }

        bool set(int index, int value){
            Node* temp = get(index);
            if(temp) {
                temp->value = value;
                return true;
            }
            return false;
        }

        bool insert(int index, int value){
            if(index < 0 || index >= length) return false;
            if(index==0){
                prepend(value);
                return true;
            } if(index==length){
                append(value);
                return true;
            }
            Node* new_node = new Node(value);
            Node* temp = get(index-1);
            new_node->next = temp->next;
            temp->next=new_node;
            length++;
        }

        int get_value(){
            return head->value;
        }

        int get_length() {
            return this->length;
        }

        Node* get_next(){
            return head->next;
        }
};

#endif