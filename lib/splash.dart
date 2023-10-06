import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class splash extends StatelessWidget {
  const splash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("Kissi Alarm",
          style: GoogleFonts.spaceGrotesk(
            textStyle: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.normal),
          )),
    );
  }
}
