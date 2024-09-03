// Created by Aristotelis Pallasidis
import 'dart:convert';
import 'package:http/http.dart' as http;

class SkinService {
  final String apiUrl = 'http://localhost:3000/api/skin-facts';

  // Method to fetch all skin facts
  Future<List<dynamic>> fetchAllSkinFacts() async {
    final response = await http.get(Uri.parse(apiUrl));
    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Failed to load skin facts');
    }
  }

  // Method to fetch a single skin fact based on ID
  Future<dynamic> fetchSkinFactById(int id) async {
    final response = await http
        .get(Uri.parse('$apiUrl/$id')); // Adjust this endpoint if necessary
    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Failed to load skin fact');
    }
  }
}
