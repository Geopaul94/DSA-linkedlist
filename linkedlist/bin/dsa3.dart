class Node {
  int? data;
  Node? next;
  Node(this.data) {
    next = null;
  }
}

class LinkedList {
  Node? head;
  LinkedList() {
    head = null;
  }
  void addData(int data) {
    Node newnode = Node(data);
    if (head == null) {
      head = newnode;
      return;
    } else {
      Node temp = head!;
      while (temp.next != null) {
        temp = temp.next!;
      }
      temp.next = newnode;
    }
  }

  void addBeg(int data) {
    Node newnode = Node(data);
    if (head == null) {
      head = newnode;
    } else {
      newnode.next = head!;

      head = newnode;
    }
  }

  void printData() {
    Node? temp = head;
    while (temp != null) {
      print(temp.data);
      temp = temp.next;
    }
  }
}

void main(List<String> args) {
  LinkedList linkedlist = LinkedList();
  linkedlist.addData(1);
  linkedlist.addData(2);
  linkedlist.addData(3);
  linkedlist.addData(4);
  linkedlist.addData(5);
  linkedlist.addBeg(11);
  linkedlist.printData();
}
