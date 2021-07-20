import 'package:flutter/material.dart';
import 'package:payflow/models/User_model.dart';
import 'package:shared_preferences/shared_preferences.dart';


class AuthService {
  UserModel? _user;

  get user => _user!;

  void setUser(BuildContext context, UserModel? user) {
    if(user != null) {
      _user = user;
      saveUser(user);
      Navigator.pushReplacementNamed(
        context, "/home"
      );
    } else {
      Navigator.pushReplacementNamed(
        context, "/login"
      );
    }
  }

  Future<void> saveUser(UserModel user) async {
    final instance = await SharedPreferences.getInstance();
    instance.setString("user", user.toJson());
    return;
  }

  Future<void> currentUser(BuildContext context) async {
    final instance = await SharedPreferences.getInstance();

    if(instance.containsKey("user")) {
      final user = instance.get("user") as String;
      setUser(context, UserModel.fromJson(user));
      return;
    } else {
      setUser(context, null);
      return;
    }
  }
}
