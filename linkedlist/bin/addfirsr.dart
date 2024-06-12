import 'dsadouble.dart';

void main() {
  linkedlist p = linkedlist();
  p.addfirst(5);
  p.addfirst(58);
 p.addfirst(77);
 
  
  p.addfirst('o');p.addfirst('e'); p.addfirst('g');
  p.printlist();
}

class Node {
  dynamic data;
  Node? next;
  Node(this.data);
}

class linkedlist {
  Node? head;

   addfirst(dynamic data) {
    Node newnode = Node(data);
    if (head == null) {
      head = newnode;
      return;
    } 
      dynamic temp = head;

      newnode.next = temp;

      head = newnode;
    
    return;
  }

  void printlist() {
    dynamic temp = head;
    String result = '';
    while (temp != null) {
      result += temp.data.toString() ;
      temp = temp.next;
    }

    print(result);
  }
}
