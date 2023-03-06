import 'dart:convert';

import 'package:alquran_aplication/model/surah_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;

class SurahProvider extends ChangeNotifier {
  List<Datum> _listSurah = [];
  List<Datum> get listSurah => _listSurah;
  
  Future<void> getData() async {
   final response = await http.get(
        Uri.parse("https://equran.id/api/v2/surat"));
    final Map<String, dynamic> data = json.decode(response.body);
    final List<dynamic> sur = data["data"];
    _listSurah = sur.map((json) => Datum.fromJson(json)).toList();
    notifyListeners();
  }
}