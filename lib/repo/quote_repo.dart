import 'dart:convert';

import 'package:http/http.dart' as http;

class QuoteApiService {
  Future<dynamic> fetchQuote() async {
    final response = await http.get(Uri.parse('https://api.kanye.rest'));

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      return data;
    } else {
      throw Exception('Failed to load image');
    }
  }
}
