#include<iostream>
#include <queue>
#include <iomanip>

using namespace std;

struct Node {
    int data;
    Node* left_child;
    Node* right_child;

    Node(int value) : data(value), left_child(nullptr), right_child(nullptr) {}
};

// Search
bool search(Node* root, int value) {
    if (root==nullptr) return false;
    if (root->data == value) return true;
    // Recursion method for searching through BST
    if (value < root->data) {
        return search(root->left_child, value);
    } else if (value > root->data) {
        return search(root->right_child, value);
    }
    return false;
}

// Insert
Node* insert(Node* root, int value) {
    if (root==nullptr) return new Node(value);
    if (value < root->data) {
        root->left_child = insert(root->left_child, value);
    } else if (value > root->data) {
        root->right_child = insert(root->right_child, value);
    }
    return root;
}

// Delete
void deleteTree(Node* root) {
    if (root==nullptr) return;
    deleteTree(root->left_child);
    deleteTree(root->right_child);
    delete root;
}

// Traversals
void inOrder(Node* root) {
    if (root==nullptr) return;
    inOrder(root->left_child);
    cout << root->data << " ";
    inOrder(root->right_child);
}

void postOrder(Node* root) {
    if (root==nullptr) return;
    postOrder(root->left_child);
    postOrder(root->right_child);
    cout << root->data << " ";
}

void preOrder(Node* root) {
    if (root==nullptr) return;
    cout << root->data << " ";
    preOrder(root->left_child);
    preOrder(root->right_child);
}

// Print Tree
void printTree(Node* root, int space = 0, int indent = 4) {
    if (root == nullptr)
        return;

    space += indent;

    printTree(root->right_child , space);

    cout << setw(space) << root->data << endl;

    printTree(root->left_child, space);
}


int main() {
    Node* root = new Node(12);
    insert(root, 2);
    insert(root, 20);
    insert(root, 5);
    insert(root, 32);

    if(search(root, 5)) cout << "Value found!" << endl;

    cout << "Pre-Order Traversal: ";
    preOrder(root);
    cout << endl;
    cout << "In-Order Traversal: ";
    inOrder(root);
    cout << endl;
    cout << "Post-Order Traversal: ";
    postOrder(root);
    cout << endl;
    printTree(root);
    

    deleteTree(root);
    return 0;
}