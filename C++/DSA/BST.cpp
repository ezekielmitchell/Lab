#include <iostream>

using namespace std;

struct Node {
    int data;
    Node* left;
    Node* right;
};

struct TreeNode {
    int data;
    TreeNode* left;
    TreeNode* right;

    TreeNode(int value) {
        data = value;
        left = nullptr;
        right = nullptr;
    }
};

void inOrder(TreeNode* root) {
    // base case
    if (root==nullptr) return;

    // recursive
    inOrder(root->left);
    cout << root->data << " ";
    inOrder(root->right);
};

void preOrder(TreeNode* root) {
    // base case
    if (root==nullptr) return;

    // recursive
    cout << root->data << " ";
    preOrder(root->left);
    preOrder(root->right);
};

void postOrder(TreeNode* root) {
    // base case
    if (root==nullptr) return;

    // recursive
    postOrder(root->left);
    postOrder(root->right);
    cout << root->data << " ";
};

TreeNode* insert(TreeNode* root, int value) {
    if (root==nullptr) return new TreeNode(value);
    if (value < root->data) {
        root->left = insert(root->left, value);
    } else if (value > root->data) {
        root->right = insert(root->right, value);
    }
    return root;
}

int main() {
// Create a sample binary tree
    //       50
    //     /    \
    //    30     70
    //   /  \   /  \
    //  20  40 60   80
    
    TreeNode* root = new TreeNode(50);
    root->left = new TreeNode(30);
    root->right = new TreeNode(70);
    
    root->left->left = new TreeNode(20);
    root->left->right = new TreeNode(40);
    
    root->right->left = new TreeNode(60);
    root->right->right = new TreeNode(80);
    
    cout << "In-order traversal:   ";
    inOrder(root);
    cout << endl;
    
    cout << "Pre-order traversal:  ";
    preOrder(root);
    cout << endl;
    
    cout << "Post-order traversal: ";
    postOrder(root);
    cout << endl;
    
    // Clean up memory
    delete root->left->left;
    delete root->left->right;
    delete root->right->left;
    delete root->right->right;
    delete root->left;
    delete root->right;
    delete root;
    
    return 0;
}