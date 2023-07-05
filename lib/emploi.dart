import 'package:app_flutter/dashbord.dart';
import 'package:app_flutter/login.dart';
import 'package:app_flutter/profil.dart';
import 'package:app_flutter/signin.dart';
import 'package:flutter/material.dart';

class Back extends StatefulWidget {
  const Back({Key? key}) : super(key: key);

  @override
  State<Back> createState() => _BackState();
}

class _BackState extends State<Back> {
  var _selectedIndex = 0;

  void _onItemTapped(item) {
    setState(() {
      _selectedIndex = item;
    });
  }

  @override
  Widget build(BuildContext context) {
    final widgetBody = [
      SignUpPage(),
      Login(),
      Dashbord(),
      Profil()
    ];
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Accueil',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.book_rounded),
              label: 'Tâches',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.library_add_check),
              label: 'Permissions',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profil',
            ),
          ],
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.blue[900],
          unselectedIconTheme: IconThemeData(color: Colors.grey),
          onTap: _onItemTapped,
        ),
        body: widgetBody[_selectedIndex]);
  }
}
