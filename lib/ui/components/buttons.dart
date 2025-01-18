import 'package:flutter/material.dart';
import '../style/colors.dart';

class PrimaryButton extends StatelessWidget {
  final String text;
  final IconData? icon;
  final Function onTap;

  const PrimaryButton(
      {super.key, required this.text, this.icon, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap();
      },
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
              text,
              style: TextStyle(
                fontSize: 20,
                color: Color(0xFF1D0E44),
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              width: 16,
            ),
            icon != null
                ? Icon(
                    icon,
                    color: Color(0xFF1D0E44),
                  )
                : Container(),
          ],
        ),
      ),
    );
  }
}
