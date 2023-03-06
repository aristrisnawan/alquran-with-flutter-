import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../theme/colorTheme.dart';

class PosterWidget extends StatelessWidget {
  const PosterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
                  width: MediaQuery.of(context).size.width / 1,
                  height: 150,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            colorTheme().primaryColor,
                            colorTheme().greenColor
                          ]),
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      )),
                ),
                Positioned(
                  bottom: 10.0,
                  right: 10.0,
                  child: Image(
                        image: AssetImage("assets/quran.png"),
                        width: 100,
                        height: 100,
                      ),
                ),
                Positioned(
                  bottom: 10.0,
                  left: 10.0,
                  child: Image(
                        image: AssetImage("assets/woman.png"),
                        width: 100,
                        height: 100,
                      ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Center(
                    child: Text("سْمِ اللّهِ الرَّحْمَنِ الرَّحِيْمِ", style: GoogleFonts.poppins(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                    ),),
                  ),
                )
      ],
    );
  }
}