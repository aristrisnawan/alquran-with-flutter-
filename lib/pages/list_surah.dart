import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../theme/colorTheme.dart';

class ListSurah extends StatelessWidget {
  int noSurah;
  String nama;
  String namaLatin;
  String tempatTurun;
  int jumlahAyat;
  ListSurah(
      {super.key,
      required this.noSurah,
      required this.nama,
      required this.tempatTurun,
      required this.jumlahAyat,
      required this.namaLatin});

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
                      "${noSurah}",
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
                      "${namaLatin}",
                      style: GoogleFonts.poppins(
                          fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Text(
                          "${tempatTurun}",
                          style: GoogleFonts.poppins(
                              fontSize: 12, color: colorTheme().grayColor),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "${jumlahAyat} VERSES",
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
              "${nama}",
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
