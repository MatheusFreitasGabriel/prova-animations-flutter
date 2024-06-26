import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PerfilPage extends StatefulWidget {
  const PerfilPage({super.key});

  @override
  State<PerfilPage> createState() => _PerfilPageState();
}

class _PerfilPageState extends State<PerfilPage> {
  bool _selected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text(
          "Perfil", 
          style: GoogleFonts.poppins(
            fontSize: 24,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: (){
                setState(() {
                  _selected = !_selected;
                });
              },
              child: AnimatedContainer(

                decoration: BoxDecoration(
                  borderRadius:BorderRadius.circular(50),
                  color: Colors.deepPurple,
                ),
                width: _selected? 400: 100,
                height: _selected? 400 : 100,
                duration: Duration(milliseconds: 500),
                child: _selected ? Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CircleAvatar(
                        radius: 50,
                      ),
                      Text("1,83 Metros de altura", style: GoogleFonts.poppins(
                        fontSize: 16,
                        color: Colors.white
                      ),),
                      Text("70 Kg",
                        style: GoogleFonts.poppins(
                            fontSize: 16,
                            color: Colors.white
                        ),),
                      Text("Ele gosta de jogar volei e faz musculação\n duas vezes no dia!",
                        style: GoogleFonts.poppins(
                            fontSize: 16,
                            color: Colors.white
                        ),),
                    ],
                  ),
                ) :CircleAvatar(
                  radius: 25,
                ),
              ),
            ),
            Column(
              children: [
                SizedBox(height: 24,),
                Text(
                  "Nome",
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "23 Anos",
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
