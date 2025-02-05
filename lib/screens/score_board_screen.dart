import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ScoreBoardScreen extends StatefulWidget {
  const ScoreBoardScreen({super.key});

  @override
  State<ScoreBoardScreen> createState() => _ScoreBoardScreenState();
}

class _ScoreBoardScreenState extends State<ScoreBoardScreen> {
  String voleiRedeImg = 'assets/images/volei_rede_img.png';
  int scoreTeamA = 0;
  int scoreTeamB = 0;

  @override
  void dispose() async {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      onPopInvoked: (didPop) async {
        SystemChrome.setPreferredOrientations([
          DeviceOrientation.portraitUp,
          DeviceOrientation.portraitDown,
        ]);
      },
      child: Scaffold(
        body: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  GestureDetector(
                    onLongPress: () {
                      setState(() {
                        scoreTeamA = 0;
                      });
                    },
                    child: SizedBox(
                      width: 200,
                      height: 200,
                      child: FloatingActionButton(
                        heroTag: 'btn_red',
                        onPressed: () {
                          setState(() {
                            scoreTeamA++;
                          });
                        },
                        backgroundColor: Colors.red,
                        child: Text(scoreTeamA.toString(),
                            style: const TextStyle(fontSize: 100)),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              width: 30,
              height: 30,
              child: FloatingActionButton(
                heroTag: 'btn_red_minus',
                onPressed: () {
                  setState(() {
                    if (scoreTeamA > 0) scoreTeamA--;
                  });
                },
                backgroundColor: Colors.red,
                child: const Icon(Icons.remove, color: Colors.white, size: 16),
              ),
            ),
            Expanded(
              child: Transform.rotate(
                angle: 90 * 3.14159 / 180,
                child: Image.asset(
                  voleiRedeImg,
                  width: 100,
                  height: 200,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            SizedBox(
              width: 30,
              height: 30,
              child: FloatingActionButton(
                heroTag: 'btn_blue_minus',
                onPressed: () {
                  setState(() {
                    if (scoreTeamB > 0) scoreTeamB--;
                  });
                },
                backgroundColor: Colors.blue,
                child: const Icon(Icons.remove, color: Colors.white, size: 16),
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  GestureDetector(
                    onLongPress: () {
                      setState(() {
                        scoreTeamB = 0;
                      });
                    },
                    child: SizedBox(
                      width: 200,
                      height: 200,
                      child: FloatingActionButton(
                        heroTag: 'btn_blue',
                        onPressed: () {
                          setState(() {
                            scoreTeamB++;
                          });
                        },
                        backgroundColor: Colors.blue,
                        child: Text(scoreTeamB.toString(),
                            style: const TextStyle(fontSize: 100)),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
