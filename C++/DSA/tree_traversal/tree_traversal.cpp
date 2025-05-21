#include<iostream>
#include <queue>
using namespace std;


struct TreeNode {
    int data;
    TreeNode* left;
    TreeNode* right;

    TreeNode(int value){
        this->data = value;
    }
};

void levelOrderTraversal(TreeNode* root) {
    if(root==nullptr) return;

    queue<TreeNode*> q;
    q.push(root);

    while(!q.empty()){
        TreeNode* current = q.front();
        q.pop();

        cout << current->data << endl;

        if(current->left != nullptr) q.push(current->left);
        if(current->right != nullptr) q.push(current->right);
    }
};

int main() {
    return 0;
}