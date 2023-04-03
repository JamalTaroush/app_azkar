import 'package:azkar_app/screens/about_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
   HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _cointer = 0;
  String _content = 'استغفر الله';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        // automaticallyImplyLeading: false,
        title: Text('Home'),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          AboutScreen(
                            message: 'About Screen',
                          )),
                );
              },
              icon: Icon(Icons.question_mark)),
          IconButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  '/info_screen',
                  arguments: {'message': 'Welcome in Info'},
                );
              },
              icon: Icon(Icons.info)),
          PopupMenuButton<String>(
            onSelected: (String value){
              if(value != _content){
                setState(() {
                  _content = value;
                  _cointer = 0;
                });
              }
            },
              onCanceled: (){},
              itemBuilder: (context) {
            return[
              PopupMenuItem(child: Text('أستغفر الله'),value:'أستغفر الله' ,textStyle: GoogleFonts.arefRuqaa(color: Colors.black),),
              // PopupMenuDivider(),
              PopupMenuItem(child: Text('الحمد لله'),value:'الحمد لله',textStyle: GoogleFonts.arefRuqaa(color: Colors.black),),
              PopupMenuItem(child: Text('سبحان الله'),value:'سبحان الله',textStyle: GoogleFonts.arefRuqaa(color: Colors.black),),
            ];

          }
          )
        ],
      ),
      body: DecoratedBox(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Color(0xFF54BAB9),
                Color(0xFF9ED2C6),
              ])),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 70,
                height: 70,
                margin: EdgeInsets.only(bottom: 20),
                decoration: BoxDecoration(

                  color: Colors.orange.shade800,
                  shape: BoxShape.circle,
                ),
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                margin: EdgeInsetsDirectional.only(
                    start: 30,
                    end: 30,
                    bottom: 10
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        _content,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.arefRuqaa(fontSize: 24),
                      ),
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      alignment: Alignment.center,
                      color: Colors.teal,
                      child: Text(_cointer.toString(),
                          style: GoogleFonts.arefRuqaa(
                              fontSize: 18,
                              height: 1.0,
                              color: Colors.white
                          )),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              _cointer +=1;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            // primary: Colors.teal.shade700,
                              backgroundColor: Colors.teal.shade700,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadiusDirectional.only(
                                    bottomStart: Radius.circular(10),

                                  )
                              )
                          ),
                          child: Text('تسبيح',
                            style: GoogleFonts.arefRuqaa(
                              height: 1.0,
                              color: Colors.white
                          ),)),
                    ),
                    Expanded(
                      flex: 1,
                      child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              _cointer =0;
                            });

                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange.shade700,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadiusDirectional.only(
                                    topEnd: Radius.circular(10),

                                  )
                              )
                          ),
                          child: Text('اعادة',
                            style: GoogleFonts.arefRuqaa(
                                height: 1.0,
                                color: Colors.white
                            ),
                          )),
                    )
                  ],
                ),
              )
            ],
          )),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            ++ _cointer;
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
