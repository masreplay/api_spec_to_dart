// Test to reproduce the raw string issue

void main() {
  // This should cause a syntax error if raw strings contain actual newlines
  final test1 = r'description': r'HTTP proxy endpoint.
  
Args:
    request: The original request from client.';
  
  print(test1);
}
