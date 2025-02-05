import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:marcador_volei/screens/home_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
 SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]).then((_) {
   runApp(MaterialApp(
      home: const Home(),
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
    ));
  });
}