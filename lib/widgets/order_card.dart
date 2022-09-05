import 'package:flutter/material.dart';

class OrderCard extends StatelessWidget {
  final String? deliveryMan;
  final String? price;
  final String? date;
  OrderCard({
    required this.deliveryMan,
    required this.price,
    required this.date,
  });

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
          bottom: 6,
        ),
      ),
      child: ListTile(
        title: Text('$deliveryMan'),
        subtitle: Text('$date'),
        leading: CircleAvatar(
          radius: 25,
          backgroundColor: Theme.of(context).primaryColor,
          child: FittedBox(
            child: Padding(
              padding: EdgeInsets.all(5.0),
              child: Text(
                '$price',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        trailing: IconButton(
          icon: Icon(
            Icons.delete,
            color: Colors.red,
          ),
          onPressed: () {},
        ),
      ),
    );
  }
}
