```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);

      // Check if data is not null before processing
      if (jsonData != null && jsonData is List && jsonData.isNotEmpty) {
        final firstItem = jsonData[0];
        // Check for null before accessing the 'name' key.
        final name = firstItem['name'] ?? 'N/A'; // Use null-aware operator or provide default value
        print('Name: $name');
      } else {
        print('No data received or invalid JSON format');
      }
    } else {
      throw Exception('Failed to load data. Status code: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
  }
}
```