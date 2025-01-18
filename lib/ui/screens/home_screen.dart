import 'package:flutter/material.dart';
import 'package:flutter_catalog/routing_constants.dart';
import 'package:flutter_catalog/ui/components/buttons.dart';
import 'package:flutter_catalog/ui/style/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Ink(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: <Color>[
              Color(0xFF000000),
              Color(0xFF1D0E44),
            ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
          ),
          padding: EdgeInsets.only(top: 64, right: 32, left: 32, bottom: 32),
          child: Column(
            children: <Widget>[
              Stack(
                alignment: Alignment.center,
                children: [
                  Text(
                    "FLUTTER",
                    style: TextStyle(
                      fontFamily: 'Public Sans',
                      fontWeight: FontWeight.bold,
                      fontSize: 80,
                      foreground: Paint()
                        ..color = AppColor.homeText1Fore
                        ..style = PaintingStyle.stroke
                        ..strokeWidth = 8,
                    ),
                  ),
                  Text(
                    "FLUTTER",
                    style: TextStyle(
                      fontSize: 82,
                      color: AppColor.homeText1,
                    ),
                  )
                ],
              ),
              Text(
                "CATALOG",
                style: TextStyle(
                    fontFamily: 'Public Sans',
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                    fontSize: 60,
                    color: AppColor.homeText2),
              ),
              Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset(
                    "assets/images/frame_blob.png",
                    height: 340,
                  ),
                  Image.asset(
                    "assets/images/home.png",
                    height: 272,
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 20,
                ),
                child: Text(
                  "O lugar para ideal para buscar, salvar e organizar seus filmes favoritos!",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              PrimaryButton(
                text: "Quero Começar!",
                icon: Icons.arrow_forward,
                onTap: () => Navigator.pushNamed(context, DashBoardViewRoute),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
