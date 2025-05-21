#include<iostream>
#include <queue>
using namespace std;

class BST {

    private:
        int data;
        int height;

    public:
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
};

int main() {

    BST::TreeNode* node = new BST::TreeNode(5);
    BST tree;
    tree.levelOrderTraversal(node);
    delete node;
    return 0;
}