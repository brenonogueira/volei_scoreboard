import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:marcador_volei/screens/score_board_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeRight,
    DeviceOrientation.landscapeLeft,
  ]).then((_) {
    runApp(MaterialApp(
      home: const ScoreBoardScreen(),
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
    ));
  });
}
