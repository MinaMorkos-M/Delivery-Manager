import 'package:flutter/material.dart';

class BackgroundText extends StatelessWidget {
  const BackgroundText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: MediaQuery.of(context).size.height * 0.05,
      ),
      child: Text(
        'Delivery Manager',
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }
}
