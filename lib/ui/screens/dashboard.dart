import 'package:flutter/material.dart';
import 'package:flutter_catalog/ui/screens/releases.dart';
import 'package:flutter_catalog/ui/screens/search_movies.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _currentIndex = 0;
  final List<Widget> _screens = <Widget>[SearchMovies(), Releases()];

  void UpdateIndex(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens.elementAt(_currentIndex),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (value) => UpdateIndex(value),
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.movie), label: "Filmes"),
            BottomNavigationBarItem(
              icon: Icon(Icons.today),
              label: "Lançamentos",
            )
          ]),
    );
  }
}
