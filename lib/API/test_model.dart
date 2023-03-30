class TeamResponse {
  String get;
  Map<String, String> parameters;
  List<dynamic> errors;
  int results;
  Paging paging;
  List<TeamData> response;

  TeamResponse({
    required this.get,
    required this.parameters,
    required this.errors,
    required this.results,
    required this.paging,
    required this.response,
  });

  factory TeamResponse.fromJson(Map<String, dynamic> json) {
    return TeamResponse(
      get: json['get'],
      parameters: Map<String, String>.from(json['parameters']),
      errors: List<dynamic>.from(json['errors']),
      results: json['results'],
      paging: Paging.fromJson(json['paging']),
      response: List<TeamData>.from(json['response']
          .map((teamDataJson) => TeamData.fromJson(teamDataJson))),
    );
  }
}

class Paging {
  int current;
  int total;

  Paging({required this.current, required this.total});

  factory Paging.fromJson(Map<String, dynamic> json) {
    return Paging(current: json['current'], total: json['total']);
  }
}

class TeamData {
  Team team;
  Venue venue;

  TeamData({required this.team, required this.venue});

  factory TeamData.fromJson(Map<String, dynamic> json) {
    return TeamData(
      team: Team.fromJson(json['team']),
      venue: Venue.fromJson(json['venue']),
    );
  }
}

class Team {
  int id;
  String name;
  String code;
  String country;
  int founded;
  bool national;
  String logo;

  Team({
    required this.id,
    required this.name,
    required this.code,
    required this.country,
    required this.founded,
    required this.national,
    required this.logo,
  });

  factory Team.fromJson(Map<String, dynamic> json) {
    return Team(
      id: json['id'],
      name: json['name'],
      code: json['code'],
      country: json['country'],
      founded: json['founded'],
      national: json['national'],
      logo: json['logo'],
    );
  }
}

class Venue {
  int id;
  String name;
  String address;
  String city;
  int capacity;
  String surface;
  String image;

  Venue({
    required this.id,
    required this.name,
    required this.address,
    required this.city,
    required this.capacity,
    required this.surface,
    required this.image,
  });

  factory Venue.fromJson(Map<String, dynamic> json) {
    return Venue(
      id: json['id'],
      name: json['name'],
      address: json['address'],
      city: json['city'],
      capacity: json['capacity'],
      surface: json['surface'],
      image: json['image'],
    );
  }
}
