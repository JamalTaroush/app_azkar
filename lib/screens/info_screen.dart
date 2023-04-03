import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InfoScreen extends StatefulWidget {
  const InfoScreen({Key? key}) : super(key: key);

  @override
  State<InfoScreen> createState() => _InfoScreenState();
}

class _InfoScreenState extends State<InfoScreen> {
  String message = 'No Message';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration.zero, () {
      ModalRoute? modalRoute = ModalRoute.of(context);
      if (modalRoute != null) {
        if (modalRoute.settings.arguments != null) {
          Map<String, dynamic> map =
              modalRoute.settings.arguments as Map<String, dynamic>;
          if (map.containsKey('message')) {
            setState(() {
              message = map['message'];
            });
          }
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // ModalRoute? modalRoute = ModalRoute.of(context);
    // if(modalRoute != null){
    //   if(modalRoute.settings.arguments != null){
    //     Map <String,dynamic>map = modalRoute.settings.arguments as Map<String,dynamic>;
    //     if(map.containsKey('message')){
    //       message = map['message'];
    //     }
    //   }
    //
    // }
    return Scaffold(
      appBar: AppBar(
        title: Text('Info'),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios)),
      ),
      body: Center(
        child: Text(
          message,
          style: GoogleFonts.montserrat(fontSize: 30),
        ),
      ),
    );
  }
}
