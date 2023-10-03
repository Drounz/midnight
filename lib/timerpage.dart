import 'dart:async';
import 'package:flutter/material.dart';
import 'package:midnight/main.dart';

class timerpage extends StatefulWidget {
  @override
  _timerpageState createState() => _timerpageState();
}

class _timerpageState extends State<timerpage> {
  int _Counter = 200;
  late Timer _timer;

  void startTimer() {
    _Counter = 200;
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (_Counter > 0) {
        setState(() {
          _Counter--;
        });
      } else {
        _timer.cancel();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$_Counter',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
            ),
            ElevatedButton(
                onPressed: () {
                  startTimer();
                },
                child: Text('Start Timer')),
            const SizedBox(
              height: 24,
            ),
            ElevatedButton(
                onPressed: () {
                  _timer.cancel();
                },
                child: Text('Pause')),
            const SizedBox(
              height: 24,
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    _Counter = 200;
                  });
                },
                child: Text('Reset timer')),
          ],
        ),
      ),
    );
  }
}
