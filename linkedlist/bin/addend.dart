import 'dsadouble.dart';

void main() {
  LinkedList listadd = LinkedList();
  listadd.addend(0);
  listadd.addend(1);
  listadd.addend(2);
  listadd.addend(3);
  listadd.addend(4);
  listadd.addend(5);
  listadd.addend(6);

  listadd.insermiddle(1111111);
  listadd.insert(9999999, 5);

  listadd.deletelist(2);

  listadd.printlist();
}

class Node {
  int data;

  Node? next;
  Node(this.data) {
    // next == null;
  }
}

class LinkedList {
  Node? head;

  void addend(int data) {
    Node newnode = Node(data);

    if (head == null) {
      head = newnode;
      return;
    }

    dynamic temp = head;

    while (temp!.next != null) {
      temp = temp.next;
    }
    temp.next = newnode;
    return;
  }

  insermiddle(int data) {
    Node newnode = Node(data);
    var temp = head;
    var current = head;
    int i = 0;
    int k = 0;
    while (temp!.next != null) {
      temp = temp.next;
      i++;
    }

    print('++++++++++++++++++   $i');
    int mid = (i ~/ 2);
    print('++++++++++++++++++ middle  $mid');
    while (current!.next != null) {
      if (k == (mid - 1)) {
        newnode.next = current.next;
        current.next = newnode;
        return;
      }
      current = current.next;
      k++;
    }
    print('==========  $k');
  }

  void insert(int data, int target) {
    Node newnode = Node(data);
    if (head == null) {
      head = newnode;
      return;
    }
    var current = head;

    while (current!.next != null && current.next!.data != target) {
      current = current.next;
    }
    newnode.next = current.next;
    current.next = newnode;
    return;
  }

  void deletelist(int target) {
    if (head == null) {
      return;
    }
    var temp = head;
    while (temp!.next != null && temp.next!.data != target) {
      temp = temp.next;
    }

    var removeEnd = temp.next;

    temp.next = removeEnd!.next;

    return;
  }

  void printlist() {
    dynamic temp = head;

    while (temp.next != null) {
      print(temp.data);
      temp = temp.next;
    }
    print(temp.data);
    return;
  }
}
