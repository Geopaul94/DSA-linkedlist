int fibonacci(int n) {
  if (n <= 1) {
    return n;
  } else {
    return fibonacci(n - 1) + fibonacci(n - 2);
  }
}

void main() {
  int terms = 8;
  print("Fibonacci sequence:");
  for (int i = 0; i < terms; i++) {
    print(fibonacci(i));
  }
}
