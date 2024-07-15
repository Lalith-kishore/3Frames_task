import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:task_state_managemant/models/pretty_api.dart';

class Apiservice {
  final String baseUrl = "https://fake-json-api.mock.beeceptor.com/users";

  Future<List<PrettyApi>> fetchUsers() async {
    final response = await http.get(Uri.parse(baseUrl));

    if (response.statusCode == 200) {
      List<dynamic> body = json.decode(response.body);
      List<PrettyApi> users =
          body.map((dynamic item) => PrettyApi.fromJson(item)).toList();
      return users;
    } else {
      throw Exception('Failed to load users from API');
    }
  }
}
