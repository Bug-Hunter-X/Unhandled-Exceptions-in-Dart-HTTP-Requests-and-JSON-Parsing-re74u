```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://example.com/data'));
    if (response.statusCode == 200) {
      // Properly handle the JSON response
      final jsonResponse = json.decode(response.body);
      // Access data from the JSON response
      print(jsonResponse['key']); 
    } else {
      // Handle non-200 status codes
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    // Handle exceptions during network requests or JSON decoding
    print('Error: $e');
    // Consider rethrowing the exception or handling it based on your app's needs
  }
}
```