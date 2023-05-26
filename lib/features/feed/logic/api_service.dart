// ignore_for_file: body_might_complete_normally_nullable

import 'package:dio/dio.dart';
import 'package:goat_app/models/fixture.dart';
import 'package:goat_app/models/freezed_model.dart';
import 'package:goat_app/models/headtohead_model.dart';
import 'package:goat_app/models/lineup_model.dart';
import 'package:goat_app/models/statistics_model.dart';

class ApiService {
  final Dio _dio = Dio();
  final apiKey = 'cad2a28d9c7384611d1aaaf4643623a2';

  Future<TeamModel> getTeamDetails({String id = "33"}) async {
    try {
      final response = await _dio.get(
        'https://v3.football.api-sports.io/teams?id=$id',
        options: Options(headers: {'x-apisports-key': apiKey}),
      );
      final json = response.data as Map<String, dynamic>;
      return TeamModel.fromJson(json);
    } catch (error) {
      rethrow;
    }
  }

  Future<FixtureModel> getMatches({
    // Default values
    String league = "39",
    String season = "2022",
     String date = "2023-04-21",
    String live = "all",
  }) async {
    final dio = Dio(BaseOptions(headers: {'x-apisports-key': apiKey}));
    try {
      final response = await dio.get(
        'https://v3.football.api-sports.io/fixtures',
        queryParameters: {
          'league': league,
          'season': season,
           'date': date,
          // "live": live,
        },
      );
      final json = response.data as Map<String, dynamic>;
      return FixtureModel.fromJson(json);
    } catch (error) {
      rethrow;
    }
  }

  Future<StatisticsModel> getStatistics({
    // Default values
    String? fixture = "215662",
  }) async {
    final dio = Dio(BaseOptions(headers: {'x-apisports-key': apiKey}));
    try {
      final response = await dio.get(
        'https://v3.football.api-sports.io/fixtures/statistics',
        queryParameters: {"fixture": fixture},
      );
      final json = response.data as Map<String, dynamic>;
      return StatisticsModel.fromJson(json);
    } catch (error) {
      throw error;
    }
  }

  Future<HeadToHeadModel> getHeadToHead({
    // Default values
    String? home = "33",
    String? away = "34",
    int? last = 5,
  }) async {
    final dio = Dio(BaseOptions(headers: {'x-apisports-key': apiKey}));
    try {
      final response = await dio.get(
        'https://v3.football.api-sports.io/fixtures/headtohead',
        queryParameters: {"h2h": "$home-$away", "last": last},
      );
      final json = response.data as Map<String, dynamic>;
      return HeadToHeadModel.fromJson(json);
    } catch (error) {
      throw error;
    }
  }

  Future<LineupModel?> getLineup({
    // Default values
    String? fixture = "215662",
  }) async {
    final dio = Dio(BaseOptions(headers: {'x-apisports-key': apiKey}));
    try {
      final response = await dio.get(
        'https://v3.football.api-sports.io/fixtures/lineups',
        queryParameters: {"fixture": fixture},
      );
      final json = response.data as Map<String, dynamic>;
      print(json);
      return LineupModel.fromJson(json);
    } catch (error) {
      print(error);
    }
  }
}
