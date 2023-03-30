import 'package:dio/dio.dart';
import '../models/freezed_model.dart';

class ApiService {
  final Dio _dio = Dio();

  Future<TeamModel> getTeamDetails({String type = "teams",String id = "33"}) async {
    const apiKey = 'cad2a28d9c7384611d1aaaf4643623a2';
    try {
      final response = await _dio.get(
          'https://v3.football.api-sports.io/$type?id=$id',
              options: Options(headers: {'x-apisports-key': apiKey}),
      );
      final json = response.data as Map<String, dynamic>;
      return TeamModel.fromJson(json);
    } catch (error) {
      throw error;
    }
  }
}
