import 'package:flutter/material.dart';

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
          children: [
            Text(
              "Seja bem vindo!",
              style: ,
            ),
          ],
        ),
      ),
    );
  }
}
