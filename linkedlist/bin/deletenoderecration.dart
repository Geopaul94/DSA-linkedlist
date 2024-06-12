
class Node {
  int data;
  Node? next;

  Node(this.data);
}

class SinglyLinkedList {
  Node? head;

deleterecration(var head ,int target){

if(head==null){
  return;
}
if(head!.data == target){
  var temp =head!.next;
  return temp;
 
} 


head!.next = deleterecration(head.next, target);
    // Return the modified head
    return head;
  }

  // Utility function to print the linked list
  void printList() {
    Node? temp = head;
    while (temp != null) {
      print(temp.data);
      temp = temp.next;
    }
  }
}
void main() {
  SinglyLinkedList linkedList = SinglyLinkedList();

  // Insert some nodes into the linked list
  linkedList.head = Node(1);
  linkedList.head!.next = Node(2);
  linkedList.head!.next!.next = Node(3);
  linkedList.head!.next!.next!.next = Node(4);

  print('Original linked list:');
  linkedList.printList();

  // Delete node with target data value 3
  linkedList.head = linkedList.deleterecration(linkedList.head, 3);

  print('\nLinked list after deleting node with data value 3:');
  linkedList.printList();
}