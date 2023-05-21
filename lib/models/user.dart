// ignore_for_file: must_be_immutable, empty_constructor_bodies

import 'package:flutter/foundation.dart';

@immutable
class CustomUser {
  String? fullname;
  String? username;
  String email;
  String password;
  List? teams;
  CustomUser({
    this.fullname,
    this.username,
    required this.email,
    required this.password,
    this.teams,
  });
}

@immutable
class UserModel {
  String? uid;
  String? fullname;
  String? username;
  String email;
  String password;

  UserModel({this.uid,this.fullname,this.username,required this.email,required this.password});
    //receiving data from server
    factory UserModel.fromMan(map){
      return UserModel(
        uid : map['uid'],
        username: map['username'],
        email: map['email'],
         password: map['password']
         );
    }
//sendind data to our server
Map<String, dynamic> toMap(){
  return{
     'uid': uid ,
    'email': email ,
    'username': username ,
    'password': password ,
    };
}
}
