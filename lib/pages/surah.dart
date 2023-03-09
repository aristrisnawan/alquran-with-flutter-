import 'package:alquran_aplication/pages/poster_surah.dart';
import 'package:alquran_aplication/pages/surah_verses.dart';
import 'package:alquran_aplication/provider/surah_provider.dart';
import 'package:alquran_aplication/theme/colorTheme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SurahPage extends StatefulWidget {
  const SurahPage({super.key});

  @override
  State<SurahPage> createState() => _SurahPageState();
}

class _SurahPageState extends State<SurahPage> {
  final space = 20.0;
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SurahProvider(),
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      height: 60,
                      width: 30,
                      child: Icon(
                        Icons.arrow_back,
                        color: colorTheme().grayColor,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Center(
                    child: Text(
                      "Al-Fatihah",
                      style: GoogleFonts.poppins(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: colorTheme().primaryColor),
                    ),
                  )
                ],
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.87,
                child: ListView(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: space),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          //NOTE: Posterx`
                          PosterSurah(),
                          SizedBox(
                            height: 20,
                          ),
                          //NOTE : Surah
                          Consumer<SurahProvider>(
                              builder: (context, value, child) {
                                final surahAyat = value.detailSurah;
                                print("lamun ${surahAyat}");
                                if (value.detailSurah.isEmpty) {
                                print("lamun ${surahAyat}");
                                  return Center(
                                    child: CircularProgressIndicator(),
                                  );
                                }
                                return SurahVerses(teksArab: "hslo",);
                              },
                              // child: SurahVerses()
                              ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
