#include<iostream>

using namespace std;

struct Node {
    int data;
    Node* left_child;
    Node* right_child;

    Node(int value) : data(value), left_child(nullptr), right_child(nullptr) {}
};

// Search
bool search(Node* root, int value) {
    if (root==nullptr) false;
    if (root->data == value) true;
    // Recursion method for searching through BST
    if (value < root->data) {
        search(root->left_child, value);
    } else if (value > root->data) {
        search(root->right_child, value);
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
    inOrder(root->left_child);
    inOrder(root->right_child);
    cout << root->data << " ";
}

void preOrder(Node* root) {
    if (root==nullptr) return;
    cout << root->data << " ";
    inOrder(root->left_child);
    inOrder(root->right_child);
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

    deleteTree(root);
    return 0;
}