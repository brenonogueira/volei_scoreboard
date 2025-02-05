import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:marcador_volei/screens/privacy_screen.dart';
import 'package:marcador_volei/screens/score_board_screen.dart';

class Home extends StatefulWidget {
  const Home({Key? key, this.title}) : super(key: key);
  final String? title;

  @override
  State<Home> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: AppBar(
          title: Text(widget.title ?? ''),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Icon(
                Icons.sports_volleyball,
                size: 100,
                color: Colors.blueAccent,
              ),
              const Text(
                'Marcador de Pontos - Volei',
                style: TextStyle(fontSize: 20),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: OutlinedButton.icon(
                        icon: Icon(Icons.sports_volleyball_rounded, size: 18),
                        label: Text("Marcar", style: TextStyle(fontSize: 20)),
                        onPressed: () async {

                           SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft, DeviceOrientation.landscapeRight]);

                          await Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ScoreBoardScreen()),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Wrap(children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: OutlinedButton.icon(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => PrivacyScreen()),
                          );
                        },
                        icon: const Icon(Icons.policy, size: 18),
                        label: const Text("Política de Privacidade",
                            style: TextStyle(fontSize: 20)),
                      ),
                    ),
                  ]),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
