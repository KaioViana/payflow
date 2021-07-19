import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

class FirebaseService extends StatefulWidget {
  final Widget app;

  const FirebaseService(this.app, {Key? key}) : super(key: key);

  @override
  _FirebaseServiceState createState() => _FirebaseServiceState(app);
}

class _FirebaseServiceState extends State<FirebaseService> {
  final Widget app;
  bool _initialized = false;
  bool _error = false;

  _FirebaseServiceState(this.app);
  
  void initializer() async {
    try {
      await Firebase.initializeApp();
      setState(() {
        _initialized = true;
      });
    } catch (e) {
      setState(() {
        _error = false;
      });
    }
  }

  @override
  void initState() {
    initializer();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if(_error) {
      return Material(
        child: Center(
          child: Text(
            "Não foi possível inicializar o Firebase",
            textDirection: TextDirection.ltr
          ),
        ),
      );
    }

    if(!_initialized) {
      return Material(
        child: Center(
          child: CircularProgressIndicator(),
        ),
      );
    }

    return this.app;
  }
}
