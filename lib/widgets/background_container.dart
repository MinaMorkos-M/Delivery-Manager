import 'package:flutter/material.dart';

class BackgroundContainer extends StatelessWidget {
  const BackgroundContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.3,
    );
  }
}
