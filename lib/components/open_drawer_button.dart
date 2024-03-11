import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class OpenDrawerButton extends StatelessWidget {
  final void Function()? onPressed;
  const OpenDrawerButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFF308C89),
        shape: BoxShape.circle
      ),
      child: IconButton(onPressed: onPressed, icon: FaIcon(FontAwesomeIcons.bars), color: Colors.white,)
    );
  }
}