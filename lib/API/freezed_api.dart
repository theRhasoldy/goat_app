import 'package:dio/dio.dart';
import 'package:goat_app/models/fixture.dart';
import '../models/freezed_model.dart';

class ApiService {
  final Dio _dio = Dio();

  Future<TeamModel> getTeamDetails({String id = "33"}) async {
    const apiKey = '92aa37633c546709b766f3a9d29eabaf';
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

  Future<FixtureModel>? getMatches({
    String league = "39",
    String season = "2022",
    String date = "2023-04-09",
  }) async {
    const apiKey = '92aa37633c546709b766f3a9d29eabaf';
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
