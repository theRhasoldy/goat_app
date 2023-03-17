import 'package:dio/dio.dart';

class APIService {
  static final dio = Dio();
  static final url = 'https://v3.football.api-sports.io/fixtures?live=all';
  static final apiKey = 'cad2a28d9c7384611d1aaaf4643623a2'; // replace with your API key

  static Future<void> fetchData() async {
    try {
      final response = await dio.get(
        url,
        options: Options(
          headers: {'x-apisports-key': apiKey},
        ),
      );
      final data = response.data;
      print('Data: $data');
    } catch (e) {
      print('Error: $e');
    }
  }
}
