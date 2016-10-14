//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

/* Notes 
   - Data structure consisting of a group of nodes which together represent a sequence, its a way to associate related content
 
   - A node contains a value and a reference, this reference is typically a pointer or a memory address to the next value of a node 
 
 
*/

//Creation of a Node Class
class Node <T: Equatable> {
    var value: T? = nil
    //value
    var next: Node? = nil
    //reference to the next value
}

//Creation of a linked list class 
class LinkedList <T: Equatable>{
    var head = Node<T>()
    
    //Remember insertion only occurs at the very end!
    //Insert a new node in the linked list 
    func insertion(value : T){
        //firstly check to see if the head contains a value corresponding to the next node
        //Check if the head has an value, if it doesn’t, then the value we insert is the head
        if self.head.next == nil {
             self.head.value = value
        }
        else {
            //if the head does contain a value then proceed to find the last node in order to insert at the very end
            var lastNode = self.head
            while lastNode.next != nil {
                lastNode = lastNode.next!
            }
            let newNode = Node<T>()
            //creation of a new node
            newNode.value = value
            //providing a value for the new node
            lastNode.next = newNode
            //providing the pointer for the previous last node to the new created node 
            //the variable by the name of lastNode now has a next value referencing the pointer that points to newNode 
            //Connect the last node’s pointer to the new node’s value

        }
    }
    
    //Removing of a node
    func remove(value: T){
        //first check if the value that you are looking to remove is at the end
        if self.head.value == value {
            self.head = self.head.next!
        }
        else if self.head.value != nil {
            
        }
    }
}
