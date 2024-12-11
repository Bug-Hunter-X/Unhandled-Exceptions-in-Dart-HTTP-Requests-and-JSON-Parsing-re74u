```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<Map<String, dynamic>?> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://example.com/data'));
    if (response.statusCode == 200) {
      try {
        final jsonResponse = json.decode(response.body);
        return jsonResponse;
      } catch (e) {
        print('Error decoding JSON: $e');
        return null; // Or throw an exception
      }
    } else {
      print('Request failed with status: ${response.statusCode}.');
      return null; // Or throw an exception
    }
  } catch (e) {
    print('Network error: $e');
    return null; // Or throw an exception
  }
}

void main() async {
  final data = await fetchData();
  if (data != null) {
    print(data['key']);
  } else {
    print('Failed to fetch data.');
  }
}
```