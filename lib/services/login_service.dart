import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:payflow/models/User_model.dart';

import 'auth/auth_service.dart';

class LoginService {
  final authService = AuthService();

  Future<void> exec(BuildContext context) async {
    try {
      GoogleSignIn _googleSignIn = GoogleSignIn(
        scopes:  [
          'email'
        ]
      );

      final res = await _googleSignIn.signIn();
      final user = UserModel(name: res!.displayName!, photoURL: res.photoUrl);
      authService.setUser(context, user);
    } catch(error) {
      authService.setUser(context, null);
      throw('Erro ao fazer Login!');
    }
  }
}
