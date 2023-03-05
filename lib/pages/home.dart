import 'package:alquran_aplication/pages/list_surah.dart';
import 'package:alquran_aplication/theme/colorTheme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final space = 20.0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: space),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
            ),
            //NOTE: Header
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Quran App",
                  style: GoogleFonts.poppins(
                      color: colorTheme().primaryColor,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                Container(
                  height: 30,
                  width: 30,
                  child: Center(
                      child: Icon(
                    Icons.search_rounded,
                    color: colorTheme().grayColor,
                    size: 30,
                  )),
                )
              ],
            ),
            //NOTE : Salam
            SizedBox(
              height: 20,
            ),
            Text(
              "Assalamualaikum",
              style: GoogleFonts.poppins(
                  color: colorTheme().grayColor,
                  fontSize: 18,
                  fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 20,
            ),
            // NOTE: Card
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
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Image(
                  image: AssetImage("assets/quran.png"),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            //NOTE : List Surah
            Text(
              "List Surah",
              style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: colorTheme().primaryColor),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.5,
              child: ListView(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListSurah(),
                      SizedBox(
                        height: 5,
                      ),
                      ListSurah(),
                      SizedBox(
                        height: 5,
                      ),
                      ListSurah(),
                      SizedBox(
                        height: 5,
                      ),
                      ListSurah(),
                      SizedBox(
                        height: 5,
                      ),
                      ListSurah(),
                      SizedBox(
                        height: 5,
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
