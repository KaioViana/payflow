import 'package:payflow/services/login_service.dart';

class LoginController {
  LoginService _loginService = LoginService();

  void handle() {
    try {
      _loginService.exec();

    } catch(error) {
      print(error);
    }
  }
}
