import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class APIService {
  static final dio = Dio();
  String id;
  String type;
  APIService({required this.id, required this.type});

  // replace with your API key
  Future<String?> fetchData() async {
    final url = 'https://v3.football.api-sports.io/$type?id=$id';
    const apiKey = 'cad2a28d9c7384611d1aaaf4643623a2';

    try {
      final response = await dio.get(
        url,
        options: Options(
          headers: {'x-apisports-key': apiKey},
        ),
      );
      final data = response.data;
      return data.toString();
      //print(parsedata);
    } catch (e) {
      e.toString();
    }
  }
}
