import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:prova_animations/home_page.dart';

class BoasvindasPage extends StatefulWidget {
  const BoasvindasPage({super.key});

  @override
  State<BoasvindasPage> createState() => _BoasvindasPageState();
}

class _BoasvindasPageState extends State<BoasvindasPage> {

  double _opacity = 0;
  void startOpacity(){
    WidgetsBinding.instance.addPostFrameCallback((_){
      setState(() {
        _opacity = 1;
      });
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startOpacity();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            AnimatedOpacity(
              opacity: _opacity,
              duration: Duration(seconds: 3),
              child: Text(
                "Seja bem vindo!",
                style: GoogleFonts.poppins(
                  fontSize: 32,
                  fontWeight: FontWeight.bold
                )
                ),
            ),
            AnimatedOpacity(
              opacity: _opacity,
              duration: Duration(seconds: 3),
              child: ElevatedButton(
                onPressed: (){
                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => HomePage()));
                },
                child: Text(
                  "Começar",
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurple,
                  foregroundColor: Colors.white,
                  padding: EdgeInsets.symmetric(vertical: 12, horizontal: 98),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  )
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
