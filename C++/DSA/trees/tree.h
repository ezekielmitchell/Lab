#ifndef TREE_H
#define TREE_H
#include <iostream>
using namespace std;

class BST {
    private:
        struct TreeNode {
            int data;
            TreeNode* left_node;
            TreeNode* right_node;
            
            // Constructor
            TreeNode(int value) : data(value), left_node(nullptr), right_node(nullptr){}
        };

        TreeNode* root;
    
    public:

        // Constructors & Destructor
        BST();
        ~BST();

        // Main Operations
        void insert(int value){}
        bool search(int value) const;
        void remove(int value);

        // Tree Traversals
        void pre_order();
        void in_order();
        void post_order();

        // Utility Functions
        bool is_empty() const;
        int find_max() const;
        int find_min() const;
};

#endif