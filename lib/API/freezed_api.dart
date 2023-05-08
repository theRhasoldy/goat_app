import 'package:dio/dio.dart';
import 'package:goat_app/models/fixture.dart';
import 'package:goat_app/models/statistics.dart';
import '../models/freezed_model.dart';

class ApiService {
  final Dio _dio = Dio();

  Future<TeamModel> getTeamDetails({String id = "33"}) async {
    const apiKey = 'cad2a28d9c7384611d1aaaf4643623a2';
    try {
      final response = await _dio.get(
        'https://v3.football.api-sports.io/teams?id=$id',
        options: Options(headers: {'x-apisports-key': apiKey}),
      );
      final json = response.data as Map<String, dynamic>;
      return TeamModel.fromJson(json);
    } catch (error) {
      throw error;
    }
  }

  Future<FixtureModel> getMatches({
    // Default values
    String league = "39",
    String season = "2022",
    String date = "2023-04-21",

  }) async {
    const apiKey = 'cad2a28d9c7384611d1aaaf4643623a2';
    final dio = Dio(BaseOptions(headers: {'x-apisports-key': apiKey}));
    try {
      final response = await dio.get(
        'https://v3.football.api-sports.io/fixtures',
        queryParameters: {
          'league': league,
          'season': season,
          'date': date,
          
        },
      );
      final json = response.data as Map<String, dynamic>;
      return FixtureModel.fromJson(json);
    } catch (error) {
      throw error;
    }
  }


}
