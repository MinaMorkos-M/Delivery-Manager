import 'package:flutter/material.dart';

class StatisticsCard extends StatelessWidget {
  const StatisticsCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      margin: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width * 0.05,
      ).add(
        EdgeInsets.only(
          bottom: 10,
        ),
      ),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.3,
        child: Center(
          child: Text(
            'No Orders Yet',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
