import 'package:flutter/material.dart';

import '../ui/screens/home_screen.dart';

class CatalogApp extends StatelessWidget {
  const CatalogApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Catalog",
      theme: ThemeData(
        brightness: Brightness.dark,
        useMaterial3: true,
        colorSchemeSeed: Colors.deepPurple,
      ),
      routes: {
        "home": (context) => HomeScreen(),
      },
      initialRoute: "home",
    );
  }
}
