import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutScreen extends StatefulWidget {
  AboutScreen({Key? key, required this.message}) : super(key: key);
  String message = 'No Message';

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}
class _AboutScreenState extends State<AboutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About App'),
      ),
      body: Center(
        child: Text(
          widget.message,
          style: GoogleFonts.montserrat(fontSize: 30),
        ),
      ),
    );
  }
}
