// ignore_for_file: must_be_immutable

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
