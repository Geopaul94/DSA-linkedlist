

class Node {
  dynamic data;
  Node? next;
  Node? prev;

  Node(this.data);
}

class DoublyLinkedList {
  Node? head;
  Node? tail;

  // Add a node to the end of the list
  void append(dynamic data) {
    var newNode = Node(data);
    if (head == null) {
      head = newNode;
      tail = newNode;
    } else {
      tail!.next = newNode;
      newNode.prev = tail;
      tail = newNode;
    }
  }

  Node? deletenode(int target) {
    if (head == null) {
      print('linkedlist empty');
      return null;
    }

    if (head!.data == target) {
      var deletedNode = head;
      head = head!.next;
      if (head != null) {
        head!.prev = null;
      }
      return deletedNode;
    }

    var temp = head;
    while (temp!.next != null && temp.next!.data != target) {
      temp = temp.next;
    }

    if (temp.next == null) {
      print('Node not found');
      return null;
    }

    var deletedNode = temp.next;
    temp.next = deletedNode!.next;
    if (deletedNode.next != null) {
      deletedNode.next!.prev = temp;
    } else {
      tail = temp;
    }

    return deletedNode;
  }

  // Print the elements of the list forward
  void printForward() {
    var current = head;
    while (current != null) {
      print(current.data);
      current = current.next;
    }
  }

  // Print the elements of the list backward
  // void printBackward() {
  //   var current = tail;
  //   while (current != null) {
  //     print(current.data);
  //     current = current.prev;
  //   }
  // }
  void printBackward() {
    var current = tail;
    while (current != null) {
      print(current.data);
      current = current.prev;
    }
  }

  datainsertion(dynamic data, target) {
    Node newnode = Node(data);

    dynamic? temp = head;

    while (temp!.next != null && temp!.next.data != target) {
      temp = temp.next;
    }
    // newnode.next = temp.next;
    // temp = newnode;
    // newnode.prev = temp;
    // temp.next.prev = newnode;


     newnode.next = temp.next;

  newnode.prev = temp;

  temp.next = newnode;

  newnode.next!.prev = newnode;
  }

  appdataadd(int data) {
    Node newnode = Node(data);
    if (head == null) {
      head = newnode;
      tail = newnode;
      return ;
    } else {
      var temp = head;
      while (temp!.next != null) {
        temp = temp.next;
      }
    
      temp.next = newnode;
      newnode.prev = temp;  print('++++++++++===============++++');
      return;
    }
  }
}

void main() {
  var list = DoublyLinkedList();
  // list.append(1);
  // list.append(2);
  // list.append(3);
  // list.append(55);
  // list.printForward();
  // list.deletenode(3);

  list.appdataadd(12415);
  list.appdataadd(55555);
  list.appdataadd(11111);
  list.appdataadd(44444);
  list.datainsertion(151515, 11111);
  print("Forward traversal:");
  list.printForward();

  print("\nBackward traversal:");
  list.printBackward();
}
