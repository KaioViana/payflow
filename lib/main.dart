// Container -> Envolve um conjunto de widgets -> (material.dart (Google) -> estilizações inclusas;
// Widget -> Components;
// ThemeData -> configurção de temas do App;
// Scaffold: esqueleto de uma page -> necessário para a limitação dos componentes;
// Componete pai -> Contem os padrões de design e estrutura(rotas, navegações, etc) que o app vai seguir -> (mais comuns: Material Design (Google) e Cupertino (Apple));
// Stack, Column, Row -> Tipo de posicionamento de items;


import 'package:flutter/material.dart';
import 'package:payflow/modules/login/login_page.dart';
import 'package:payflow/modules/splash/splash_page.dart';
import 'package:payflow/shared/themes/app_colors.dart';

void main() {
  runApp(AppWidget());
}

class AppWidget extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pay Flow',
      theme: ThemeData(
        primaryColor: AppColors.primary
      ),
      home: LoginPage()
    );
  }
}
