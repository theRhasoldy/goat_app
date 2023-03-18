class Team {
  Team({
    required this.id,
    required this.name,
  });

  String id;
  String name;

  factory Team.fromJson(Map<String, dynamic> json) => Team(
        id: json["id"],
        name: json["name"],
      );
}
