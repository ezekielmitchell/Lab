#include "tree.h"
#include<iostream>
using namespace std;

// Constructor
BST::BST() : root(nullptr){}

// Destroy Tree
BST::~BST(){
    // Delete leaf nodes
    while(root != nullptr){
        if(root->left_node == nullptr && root->right_node == nullptr){
            delete root;
            root = nullptr;
        } else if(root->left_node != nullptr){
            TreeNode* temp = root->left_node;
            if(temp->left_node == nullptr && temp->right_node == nullptr){
                root->left_node = nullptr;
                delete temp;
            }
        } else{
            TreeNode* temp = root;
            root = root->left_node;
            temp = root->right_node;
            root->right_node = temp;
        }
    }
}
