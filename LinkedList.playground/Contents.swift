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
    
    
    //Insert a new node in the linked list 
    func insertion(){
        //firstly check to see if the head contains a value corresponding to the next node
        //Check if the head has an value, if it doesn’t, then the value we insert is the head
        if self.head.next == nil {
            var newValue = self.head.value
        }
        else {
            //if the head does contain a value then proceed to find the last node in order to insert at the very end
            var lastNode = self.head
            while lastNode.next != nil {
                lastNode = lastNode.next!
            }
            let newNode = Node<T>()
            var newNodeValue = newNode.value
            var newNodeNext = newNode.next
        }
    }
}
