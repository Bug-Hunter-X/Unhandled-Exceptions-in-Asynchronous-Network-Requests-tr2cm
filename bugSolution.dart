```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data')).timeout(Duration(seconds: 5));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      final name = jsonData['name'] ?? 'Name not found'; //Handle missing key
      print(name);
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } on TimeoutException catch (e) {
    print('Request timed out: $e');
  } on SocketException catch (e) {
    print('Network error: $e');
  } on FormatException catch (e) {
    print('Invalid JSON format: $e');
  } catch (e) {
    print('An unexpected error occurred: $e');
  }
}
```