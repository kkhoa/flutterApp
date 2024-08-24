import 'dart:convert';
import 'package:http/http.dart' as http;

class KHttpHelper {
  static const String _baseUrl = 'https://your-api.com'; // Correct URL format

  // Method to perform GET requests
  static Future<Map<String, dynamic>> get(String endpoint) async {
    final response = await http.get(Uri.parse('$_baseUrl/$endpoint'));
    return _handleResponse(response);
  }

  // Method to perform POST requests
  static Future<Map<String, dynamic>> post(String endpoint, dynamic data) async {
    final response = await http.post(
      Uri.parse('$_baseUrl/$endpoint'),
      headers: {'Content-Type': 'application/json'},
      body: data is String ? data : jsonEncode(data), // Ensure the body is properly encoded
    );
    return _handleResponse(response);
  }

  // Method to perform PUT requests
  static Future<Map<String, dynamic>> put(String endpoint, dynamic data) async {
    final response = await http.put(
      Uri.parse('$_baseUrl/$endpoint'),
      headers: {'Content-Type': 'application/json'},
      body: data is String ? data : jsonEncode(data), // Ensure the body is properly encoded
    );
    return _handleResponse(response);
  }

  // Method to perform DELETE requests
  static Future<Map<String, dynamic>> delete(String endpoint) async {
    final response = await http.delete(Uri.parse('$_baseUrl/$endpoint'));
    return _handleResponse(response);
  }

  // Method to handle HTTP responses
  static Map<String, dynamic> _handleResponse(http.Response response) {
    if (response.statusCode >= 200 && response.statusCode < 300) {
      return {
        'status': response.statusCode,
        'data': response.body.isNotEmpty ? jsonDecode(response.body) : null,
      };
    } else {
      throw Exception('Failed to load data: ${response.reasonPhrase}');
    }
  }
}
