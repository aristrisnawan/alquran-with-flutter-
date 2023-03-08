import 'package:alquran_aplication/model/surah_model.dart';
import 'package:alquran_aplication/pages/home.dart';
import 'package:alquran_aplication/pages/surah.dart';
import 'package:alquran_aplication/provider/surah_provider.dart';
import 'package:alquran_aplication/theme/colorTheme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
    ),
    Text(
      'Index 1: Business',
    ),
    Text(
      'Index 2: School',
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: MultiProvider(
          providers: [
            ChangeNotifierProvider(create: ((context) => SurahProvider()))
          ],
          child: HomePage(),
          // child: SurahPage(),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: Colors.red,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.business),
              label: 'Business',
              backgroundColor: Colors.green,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.school),
              label: 'School',
              backgroundColor: Colors.purple,
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: colorTheme().primaryColor,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
