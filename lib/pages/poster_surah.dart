import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../theme/colorTheme.dart';

class PosterSurah extends StatelessWidget {
  const PosterSurah({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
                  height: 200,
                  width: MediaQuery.of(context).size.width / 1,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            colorTheme().primaryColor,
                            colorTheme().greenColor
                          ]),
                      image: DecorationImage(
                        scale: 3,
                        colorFilter: new ColorFilter.mode(colorTheme().primaryColor.withOpacity(0.2), BlendMode.dstIn),
                          image: AssetImage("assets/quran.png")),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Al-Fatihah",
                          style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "Pembukaan",
                          style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 3,
                          width: MediaQuery.of(context).size.width / 2,
                          decoration: BoxDecoration(color: Colors.white30),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "MEKAH  7 VERSES",
                          style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ),
                );
  }
}