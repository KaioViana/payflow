import 'package:flutter/material.dart';
import 'package:payflow/services/login_service.dart';

class LoginController {
  LoginService _loginService = LoginService();

  void handle(BuildContext context) {
    try {
      _loginService.exec(context);

    } catch(error) {
      print(error);
    }
  }
}
