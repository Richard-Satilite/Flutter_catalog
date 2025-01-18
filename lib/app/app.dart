import 'package:flutter/material.dart';
import 'package:flutter_catalog/routing_constants.dart';
import '../router.dart' as router;

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
      onGenerateRoute: router.generateRoute,
      initialRoute: HomeViewRouter,
    );
  }
}
