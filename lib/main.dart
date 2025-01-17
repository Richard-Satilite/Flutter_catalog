import 'package:flutter/material.dart';
import 'package:flutter_catalog/ui/home_screen.dart';

void main() {
  runApp(CatalogApp());
}

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
