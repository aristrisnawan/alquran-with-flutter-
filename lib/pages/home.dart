import 'package:alquran_aplication/pages/list_surah.dart';
import 'package:alquran_aplication/pages/loading.dart';
import 'package:alquran_aplication/pages/poster.dart';
import 'package:alquran_aplication/pages/surah.dart';
import 'package:alquran_aplication/provider/surah_provider.dart';
import 'package:alquran_aplication/theme/colorTheme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final space = 20.0;
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Provider.of<SurahProvider>(context, listen: false).getData();
    });
  }

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
            // NOTE: Poster
            PosterWidget(),
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
            Consumer<SurahProvider>(
              builder: (context, value, child) {
                if (value.listSurah.isEmpty) {
                  return Container(
                      height: MediaQuery.of(context).size.height * 0.43,
                      child: ListView.builder(itemBuilder: ((context, index) {
                        return LoadingCard();
                      })));
                } else {
                  return Container(
                      height: MediaQuery.of(context).size.height * 0.43,
                      child: ListView.builder(
                          itemCount: value.listSurah.length,
                          itemBuilder: ((context, index) {
                            final data = value.listSurah[index];
                            print("naon ${data.toString()}");
                            return InkWell(
                              onTap: () {
                                Provider.of<SurahProvider>(context, listen: false).getDetailSurah(data.nomor);
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          SurahPage()),
                                );
                              },
                              child: ListSurah(
                                noSurah: data.nomor,
                                nama: data.nama,
                                namaLatin: data.namaLatin,
                                tempatTurun: data.tempatTurun,
                                jumlahAyat: data.jumlahAyat,
                              ),
                            );
                          })));
                }
              },
            )
          ],
        ),
      ),
    );
  }
}
