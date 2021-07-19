// Container -> Envolve um conjunto de widgets -> (material.dart (Google) -> estilizações inclusas;
// Widget -> Components;
// ThemeData -> configurção de temas do App;
// Scaffold: esqueleto de uma page -> necessário para a limitação dos componentes;
// Componete pai -> Contem os padrões de design e estrutura(rotas, navegações, etc) que o app vai seguir -> (mais comuns: Material Design (Google) e Cupertino (Apple));
// Stack, Column, Row -> Tipo de posicionamento de items;


import 'package:flutter/material.dart';
import 'package:payflow/services/firebase_service.dart';
import 'app_widget.dart';


void main() {
  runApp(FirebaseService(AppWidget()));
}
