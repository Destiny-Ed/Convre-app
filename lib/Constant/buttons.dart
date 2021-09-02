import 'package:flutter/material.dart';

import 'colors.dart';


class FormButton extends StatelessWidget {
  FormButton({required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.all(18),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: primaryColor,
          borderRadius: BorderRadius.circular(8)
      ),
      child: Text(text, style: TextStyle(color: white, fontWeight: FontWeight.bold)),
    );
  }
}


class SocialButton extends StatelessWidget {
  SocialButton({required this.text, required this.icon});

  final String text;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.all(10),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: white,
          borderRadius: BorderRadius.circular(8),
        border: Border.all(color: black)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          icon,
          Text(text, style: TextStyle(color: black, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
