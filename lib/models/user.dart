class CustomUser {
  String fullname;
  String username;
  String email;
  String uid;
  List? teams;
  CustomUser({
    required this.fullname,
    required this.username,
    required this.email,
    required this.uid,
    this.teams,
  });
}
