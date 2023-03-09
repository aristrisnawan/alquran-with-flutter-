import 'dart:convert';

import 'package:alquran_aplication/model/detail_surah_model.dart';
import 'package:alquran_aplication/model/surah_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;

class SurahProvider extends ChangeNotifier {
  List<Datum> _listSurah = [];
  List<Datum> get listSurah => _listSurah;

  List<DetailSurah> _detailSurah = [];
  List<DetailSurah> get detailSurah => _detailSurah;
  
  Future<void> getData() async {
   final response = await http.get(
        Uri.parse("https://equran.id/api/v2/surat"));
    final Map<String, dynamic> data = json.decode(response.body);
    final List<dynamic> sur = data["data"];
    _listSurah = sur.map((json) => Datum.fromJson(json)).toList();
    notifyListeners();
  }

  Future<void> getDetailSurah(int? nomor) async {
    final response = await http.get(Uri.parse("https://equran.id/api/v2/surat/${nomor}"));
    // final Map<String,dynamic> data = json.decode(response.body);
    // final List<dynamic>? sur = data["audioFull"];
    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      // final List<dynamic> surat = data["data"]["ayat"];
      final List<dynamic> surah = data["data"]["ayat"];
      print("kalem ${surah}");
      // _detailSurah = Ayat.fromJson(data) as List<DetailSurah>;
    notifyListeners();
    }
    else{
      throw Exception('Failed load data');
    }
    // print("hasem, ${sur}");
    // _detailSurah = surah.map((e) => Ayat.fromJson(e)).toList();
  }
}