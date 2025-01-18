import 'package:flutter/material.dart';
import 'package:flutter_catalog/ui/style/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
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
              Text(
                  "O lugar para ideal para busca, salva e organizar seus filmes favoritos!"),
            ],
          ),
        ),
      ),
    );
  }
}
