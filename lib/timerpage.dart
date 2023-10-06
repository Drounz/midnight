import 'dart:async';
import 'package:flutter/material.dart';

class timerpage extends StatefulWidget {
  @override
  _timerpageState createState() => _timerpageState();
}

class _timerpageState extends State<timerpage> {
  int _counter = 200;
  late Timer _timer;

  void startTimer() {
    _counter = 200;
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (_counter > 0) {
        setState(() {
          _counter--;
        });
      } else {
        _timer.cancel();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor:
            Colors.black, // Set to your preferred dark color
        // You can customize other theme properties here.
      ),
      // ...
    );

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$_counter',
              style: TextStyle(
                color: Colors.amber,
                fontSize: 16,
                fontWeight: FontWeight.normal,
              ),
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
              child: Text('Pause'),
            ),
            const SizedBox(
              height: 24,
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    _counter = 200;
                  });
                },
                child: Text('Reset timer')),
          ],
        ),
      ),
    );
  }
}
