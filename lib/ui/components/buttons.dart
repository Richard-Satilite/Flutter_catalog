import 'package:flutter/material.dart';
import '../style/colors.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Ink(
        padding: const EdgeInsets.symmetric(vertical: 19, horizontal: 26),
        decoration: BoxDecoration(
          color: AppColor.homeInk,
          borderRadius: BorderRadius.circular(50),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              "Quero Começar!",
              style: TextStyle(
                fontSize: 20,
                color: Color(0xFF1D0E44),
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              width: 16,
            ),
            Icon(
              Icons.arrow_forward,
              color: Color(0xFF1D0E44),
            ),
          ],
        ),
      ),
    );
  }
}
