import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:ppkd_b_3/Tugas%2023/model/model/user_model.dart';

Future<List<Welcome>> getUser() async {
  final response = await http.get(
    Uri.parse("https://hp-api.onrender.com/api/characters"),
  );
  print(response.body);
  if (response.statusCode == 200) {
    final List<dynamic> userJson = json.decode(response.body);
    return userJson.map((json) => Welcome.fromJson(json)).toList();
  } else {
    throw Exception("Gagal memuat data");
  }
}
