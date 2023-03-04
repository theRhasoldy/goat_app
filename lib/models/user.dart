class User {
  String? fullname;
  String? username;
  String? email;
  String? uid;
  List? teams;
  User({
    required this.fullname,
    required this.email,
    required this.uid,
    this.teams,
  });
}
