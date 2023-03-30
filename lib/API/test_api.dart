import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:goat_app/API/test_model.dart';

import 'package:dio/dio.dart';

class MyApi {
  final Dio _dio = Dio();
  final apiKey = 'cad2a28d9c7384611d1aaaf4643623a2';
  Future<TeamResponse?> getTeamsById({String id = '0',String type = 'teams'}) async {
    try {
      final response = await _dio.get(
        'https://v3.football.api-sports.io/$type?id=$id',
        options: Options(
          headers: {'x-apisports-key': apiKey},
        )
      );
      print(response.data);
      final teamResponse = TeamResponse.fromJson(response.data);
      return teamResponse;
    } catch (e) {
      print('Error: $e');
      return null;
    }
  }
}
