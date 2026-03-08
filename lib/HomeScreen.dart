import 'package:flutter/material.dart';
import 'dart:math';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Color containerColor = Colors.blueGrey;
  Color getRandomColor(){
    return Color((Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);
  }
  int leftemoji = 1;
  int rightemoji = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.greenAccent,
        title: Stack(
          children: [
            // Outline (stroke)
            Text(
              "EMOJI",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.normal,
                fontFamily: 'ArchivoBlack-Regular',
                foreground: Paint()
                  ..color = Colors.black
                  ..strokeWidth = 3
                  ..style = PaintingStyle.stroke,
              ),
            ),
            Text(
              "EMOJI",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.normal,
                fontFamily: 'ArchivoBlack-Regular',
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
      body: GestureDetector(
        onTap: (){
          var random1 = Random().nextInt(6)+1;
          var random2 = Random().nextInt(6)+1;

          setState(() {
            leftemoji = random1;
            rightemoji = random2;
            containerColor = getRandomColor();
          });
        },
        child: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            height: 300,
             width: double.infinity,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(30),
              color: containerColor,
              boxShadow: [
                BoxShadow(
                  color: Colors.black54,
                  blurRadius: 20,
                  offset: Offset(12, 12),
                ),
              ],
            ),
            child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                   child:  Container(
                     height: 150,
                       width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 10,
                          offset: Offset(4, 4),
                          color: Colors.black54,
                        ),
                      ],
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                    child: Image.asset('images/emoji_$leftemoji.png'),
                    ),)
                ),
        ),
                  Expanded(
                    child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child:  Container(
                          height: 150,
                          width: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 10,
                                offset: Offset(4, 4),
                                color: Colors.black54,
                              ),
                            ],
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(40),
                            child: Image.asset('images/emoji_$rightemoji.png'),
                          ),)
                    ),
                  ),
                      ],
                    ),
          ),
        ),
           ),
        ),
      );
  }
}
