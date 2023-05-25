import 'package:goat_app/models/freezed_model.dart';

class UserModel {
  String? uid;
  String? fullname;
  String? username;
  String email;
  String password;
  List<Team>? favoriteTeams;
  int? score;

  UserModel({
    required this.email,
    required this.password,
    this.uid,
    this.username,
    this.fullname,
    this.favoriteTeams,
    this.score,
  });
  //receiving data from server
  factory UserModel.fromMan(map) {
    return UserModel(
      email: map['email'],
      password: map['password'],
      uid: map['uid'],
      username: map['username'],
      fullname: map['fullname'],
      favoriteTeams: map['favoriteTeams'],
      score: map['score'],
    );
  }
//sendind data to our server
  Map<String, dynamic> toMap() {
    return {
      'email': email,
      'password': password,
      'uid': uid,
      'username': username,
      'fullname': fullname,
      'favoriteTeams': favoriteTeams,
      'score': score,
    };
  }
}
