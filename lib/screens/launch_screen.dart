import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class LaunchScreen extends StatefulWidget {
  const LaunchScreen({Key? key}) : super(key: key);

  @override
  State<LaunchScreen> createState() => _LaunchScreenState();
}

class _LaunchScreenState extends State<LaunchScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(seconds: 3)
        ,(){
          // Navigator.pushNamed(context, '/home_screen');
          Navigator.pushReplacementNamed(context, '/home_screen');
        }
    );
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: AlignmentDirectional.topStart,
            end: AlignmentDirectional.bottomEnd,
            colors: [
              Colors.pink.shade100,
              Colors.blue.shade100,
            ],
          ),
        ),
        child: Text(
          'مسبحة الأذكار',
          style: GoogleFonts.arefRuqaa(
              fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
    );
  }
}

