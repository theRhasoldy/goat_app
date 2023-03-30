import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:goat_app/models/soccer.dart';

class APIService {
  static final dio = Dio();
  String id;
  String type;
  APIService({required this.id, required this.type});

  // replace with your API key
  Future<ApiWrapper?> fetchData() async {
    final url = 'https://v3.football.api-sports.io/$type?id=$id';
    const apiKey = 'cad2a28d9c7384611d1aaaf4643623a2';

    try {
      final response = await dio.get(
        url,
        options: Options(
          headers: {'x-apisports-key': apiKey},
        ),
      );
      final data = ApiWrapper.fromJson(response.data);
      print("API: " + data.response.toString());
      return data;
      //print(parsedata);
    } catch (e) {
      print("A&A");
      e.toString();
    }
    return null;
  }
}
