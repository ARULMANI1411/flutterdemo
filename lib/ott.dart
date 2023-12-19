import 'package:flutter/material.dart';
import 'package:untitled/home.dart';
import 'package:untitled/login%20page.dart';
import 'package:untitled/profile%20page.dart';
import 'package:untitled/search.dart';
import 'package:untitled/sport.dart';
import 'class.dart';
import 'colors..dart';
class ott extends StatefulWidget {
  const ott({super.key});

  @override
  State<ott> createState() => _ottState();
}

class _ottState extends State<ott> {
  int _index=0;
  final pages=[
   asd(),
    spor(),
    search(),
    profile(),
    login()
  ];
  void tap(index)
  {
    setState(() {
      _index=index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: pages[_index],
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: e,
          unselectedItemColor: m,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home,),label:'HOME'),
            BottomNavigationBarItem(icon: Icon(Icons.sports_kabaddi_rounded),label:'SPORT'),
            BottomNavigationBarItem(icon: Icon(Icons.search),label:'SEARCH'),
            BottomNavigationBarItem(icon: Icon(Icons.person),label:'PROFILE'),
            BottomNavigationBarItem(icon: Icon(Icons.menu),label:'MENU'),
          ],
          currentIndex: _index,
          onTap: tap,

        ),
      ),
    );
  }
}
