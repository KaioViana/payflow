import 'package:google_sign_in/google_sign_in.dart';

class LoginService {
  void exec() async {
    try {
      GoogleSignIn _googleSignIn = GoogleSignIn(
        scopes:  [
          'email'
        ]
      );

      await _googleSignIn.signIn();
    } catch(error) {
      throw('Erro ao fazer Login!');
    }
  }
}
