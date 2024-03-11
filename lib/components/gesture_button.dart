import 'package:flutter/material.dart';

class GestureButton extends StatelessWidget {
  final String buttonText;
  const GestureButton({super.key, required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFF308C89),
        borderRadius: BorderRadius.circular(14),
      ),
      width: double.infinity,
      height: 70,
      child: Align(
        alignment: Alignment.center,
        child: Text(
          buttonText,
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.w600,
            
          ),
      
        ),
      ),
    );
  }
}
