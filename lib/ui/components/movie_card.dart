import 'package:flutter/material.dart';
import 'package:flutter_catalog/ui/style/colors.dart';

class MovieCard extends StatelessWidget {
  const MovieCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          width: 90,
          height: 120,
          decoration: BoxDecoration(
            color: Color(0xFFFFFFFF),
            borderRadius: BorderRadius.circular(8),
          ),
          margin: const EdgeInsets.only(right: 32),
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(bottom: 6),
              child: Text(
                "Título",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Text(
              "Lançamento: xxxx-xx-xx",
              style: TextStyle(
                color: AppColor.searchReleaseText,
              ),
            ),
          ],
        )
      ],
    );
  }
}
