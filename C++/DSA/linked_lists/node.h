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

        void delete_last(){
            if(length==0) return;
            Node* temp = head;
            Node* pre = head;
            while(temp->next){
                pre = temp;
                temp = temp->next;
            }
            tail = pre;
            tail->next = nullptr;
            length--;
            if(length==0) {
                head = nullptr;
                tail = nullptr;
            }
            delete temp;
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

        int get_length() {
            return length;
        }

        Node* get_next(){
            return head->next;
        }
};

#endif