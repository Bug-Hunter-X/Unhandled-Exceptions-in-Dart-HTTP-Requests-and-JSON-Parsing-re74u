# Unhandled Exceptions in Dart HTTP Requests and JSON Parsing

This repository demonstrates a common error in Dart: inadequate exception handling when fetching data from a remote server and parsing the JSON response.  The `bug.dart` file shows the problematic code, while `bugSolution.dart` provides a corrected version with robust error handling.  The solution includes checks for HTTP status codes and gracefully handles potential exceptions during JSON decoding and network operations.  This ensures the application remains stable and provides informative error messages to the user.