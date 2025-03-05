import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class DataService {
  static const String baseUrl = '';

  static Future<Map<String, dynamic>> fetchData1(String apiKey) async {
    final url = Uri.parse('$baseUrl/data'); // Endpoint
    final headers = {
      '18be70c0-4e4d-44ff-a475-50c51ece99a0': apiKey,
    };

    try {
      final response = await http.get(url, headers: headers);

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body) as Map<String, dynamic>;
        return data;
      } else {
        throw Exception('Failed to fetch data');
      }
    } catch (e) {
      throw Exception('Failed to connect to the server');
    }
  }

  static Future<Map<String, dynamic>> fetchData2(String apiKey) async {
    final url = Uri.parse('$baseUrl/data'); // Endpoint
    print(Response);
    final headers = {
      '18be70c0-4e4d-44ff-a475-50c51ece99a0': apiKey,
    };

    try {
      final response = await http.get(url, headers: headers);

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body) as Map<String, dynamic>;
        return data;
      } else {
        throw Exception('Failed to fetch data');
      }
    } catch (e) {
      throw Exception('Failed to connect to the server');
    }
  }
}
