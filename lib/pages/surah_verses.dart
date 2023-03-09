import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../theme/colorTheme.dart';

class SurahVerses extends StatelessWidget {
  String teksArab;
  SurahVerses({super.key, required this.teksArab});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Header verses
        Container(
          width: MediaQuery.of(context).size.width / 1,
          height: 60,
          decoration: BoxDecoration(
              color: colorTheme().grayColor.withOpacity(0.3),
              borderRadius: BorderRadius.circular(10)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: colorTheme().primaryColor),
                  child: Center(
                    child: Text(
                      "1",
                      style: GoogleFonts.poppins(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Icon(
                  Icons.play_arrow,
                  size: 50,
                  color: colorTheme().primaryColor,
                )
              ],
            ),
          ),
        ),
        // Verses & mean
        SizedBox(
          height: 20,
        ),
        Align(
          alignment: Alignment.centerRight,
          child: Text(
            "${teksArab}",
            style:
                GoogleFonts.poppins(fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Kitab (Al-Qur'an) ini tidak ada keraguan padanya; petunjuk bagi mereka yang bertakwa",
              style: GoogleFonts.poppins(fontWeight: FontWeight.w600),
            )),
        SizedBox(
          height: 20,
        ),
        Container(
          width: MediaQuery.of(context).size.width / 1,
          height: 3,
          color: colorTheme().grayColor.withOpacity(0.3),
        ),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
