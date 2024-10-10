import 'package:flutter/material.dart';
import 'models/pilotos_screen.dart';
import 'models/equipes_screen.dart';
import 'models/corridas_screen.dart';
import 'models/noticias_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  int _selectedIndex = 0;
  final PageController _pageController = PageController();

  static const List<Widget> _widgetOptions = <Widget>[
    NoticiasScreen(),
    PilotosScreen(),
    EquipesScreen(),
    CalendarioScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      _pageController.animateToPage(index,
          duration: const Duration(milliseconds: 300), curve: Curves.ease);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fórmula 1',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Fórmula 1',
              style: TextStyle(
                fontFamily: 'Formula1',
                fontWeight: FontWeight.normal,
                fontSize: 16,
              )),
        ),
        body: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() => _selectedIndex = index);
          },
          children: _widgetOptions,
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.newspaper),
              label: 'Notícias',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Pilotos',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.group),
              label: 'Equipes',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.flag),
              label: 'Calendário',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.black,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}