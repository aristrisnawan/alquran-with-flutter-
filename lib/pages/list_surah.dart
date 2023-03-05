import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../theme/colorTheme.dart';

class ListSurah extends StatefulWidget {
  const ListSurah({super.key});

  @override
  State<ListSurah> createState() => _ListSurahState();
}

class _ListSurahState extends State<ListSurah> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 14),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: colorTheme().primaryColor, width: 3),
                      shape: BoxShape.circle),
                  child: Center(
                    child: Text(
                      "1",
                      style: GoogleFonts.poppins(
                          fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Al-Fatihah",
                      style: GoogleFonts.poppins(
                          fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text(
                          "MECCAN",
                          style: GoogleFonts.poppins(
                              fontSize: 12, color: colorTheme().grayColor),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "7 VERSES",
                          style: GoogleFonts.poppins(
                              fontSize: 12, color: colorTheme().grayColor),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
            Text(
              "اَلْحَمْدُ",
              style: GoogleFonts.poppins(
                  color: colorTheme().primaryColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
