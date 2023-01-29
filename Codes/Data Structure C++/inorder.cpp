// C++ program for different tree traversals
#include <bits/stdc++.h>
using namespace std;

/* A binary tree node has data, pointer to left child
and a pointer to right child */
struct Node {
	int data;
	struct Node *left, *right;
};

// Utility function to create a new tree node
Node* newNode(int data)
{
	Node* temp = new Node;
	temp->data = data;
	temp->left = temp->right = NULL;
	return temp;
}

/* Given a binary tree, print its nodes in inorder*/
void printInorder(struct Node* node)
{
	if (node == NULL)
		return;
	
	cout << node->data << " ";
	/* first recur on left child */
	printInorder(node->left);

	/* now recur on right child */
	printInorder(node->right);
	
	cout << node->data << " ";
}

void printpostorder(struct Node* node)
{
	if (node == NULL)
		return;
	
	cout << node->data << " ";
	/* first recur on right child */
	printInorder(node->right);

	/* now recur on left child */
	printInorder(node->left);
	
}

void printInorder1(struct Node* node)
{
	if (node == NULL)
		return;
	
	/* first recur on left child */
	printInorder(node->left);

	/* now recur on right child */
	printInorder(node->right);
	
	cout << node->data << " ";
	
		printInorder(node->right);

	/* now recur on right child */
	printInorder(node->left);
}


/* Driver code*/
int main()
{
	struct Node* root = newNode(1);
	root->left = newNode(2);
	root->right = newNode(3);
	root->left->left = newNode(4);
	root->left->right = newNode(5);
	root->right->left = newNode(6);
	root->right->right = newNode(7);


	// Function call
	cout << "\nInorder traversal of binary tree is \n";
	printInorder(root);
	cout << "\n2-example traversal of binary tree is \n";
	printpostorder(root);
	cout << "\n3-example traversal of binary tree is \n";
	printInorder1(root);
	return 0;
}

