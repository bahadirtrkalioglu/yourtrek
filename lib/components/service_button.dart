import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ServiceButton extends StatelessWidget {
  final void Function()? onPressed;
  final icon;
  final String buttonText;
  const ServiceButton({super.key, required this.onPressed, required this.icon, required this.buttonText});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.width * 1 / 5;

    return Column(
      children: [
        Container(
          width: size,
          height: size,
          decoration: BoxDecoration(
            color: Color(0xFF308C89),
            borderRadius: BorderRadius.circular(16.0),
          ),
          child: IconButton(
            icon: icon,
            onPressed: onPressed,
            color: Colors.white,
          ),
        ),
        SizedBox(
          height: 7,
        ),
        Text(
          buttonText,
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w500,
          ),
        )
      ],
    );
  }
}
