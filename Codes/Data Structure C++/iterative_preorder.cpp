// Tree traversal in C++

#include <iostream>
using namespace std;

struct Node {
  int data;
  struct Node *left, *right;
  Node(int data) {
    this->data = data;
    left = right = NULL;
  }
};

// Preorder traversal
void preorderTraversal(struct Node* node) {
  if (node == NULL)
    return;
  preorderTraversal(node->left);
  preorderTraversal(node->right);
  cout << node->data << "->";
  preorderTraversal(node->right);
  preorderTraversal(node->left);
}

// Postorder traversal
void postorderTraversal(struct Node* node) {
  if (node == NULL)
    return;
  cout << node->data << "->";
  postorderTraversal(node->right);
  postorderTraversal(node->left);
  
}

// Inorder traversal
void inorderTraversal(struct Node* node) {
  if (node == NULL)
    return;
  cout << node->data << "->";	
  inorderTraversal(node->left);
  inorderTraversal(node->right);
  cout << node->data << "->";
}

int main() {
  struct Node* root = new Node(1);
  root->left = new Node(2);
  root->right = new Node(5);
  root->left->left = new Node(3);
  root->left->right = new Node(4);
  root->right->left = new Node(6);
  root->right->right = new Node(7);

 

  cout << "\nPostorder traversal ";
  preorderTraversal(root);

}
