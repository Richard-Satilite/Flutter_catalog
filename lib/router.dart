import 'package:flutter/material.dart';
import 'package:flutter_catalog/routing_constants.dart';
import 'package:flutter_catalog/ui/screens/dashboard.dart';
import 'package:flutter_catalog/ui/screens/home_screen.dart';
import 'package:flutter_catalog/ui/screens/search_movies.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case HomeViewRouter:
      return MaterialPageRoute(
        builder: (context) => HomeScreen(),
      );
    case SearchViewRoute:
      return MaterialPageRoute(
        builder: (context) => SearchMovies(),
      );
    case DashBoardViewRoute:
      return MaterialPageRoute(
        builder: (context) => Dashboard(),
      );
    default:
      return MaterialPageRoute(
        builder: (context) => HomeScreen(),
      );
  }
}
