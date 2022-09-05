import 'package:delivery_manager/widgets/background_container.dart';
import 'package:delivery_manager/widgets/background_text.dart';
import 'package:delivery_manager/widgets/order_card.dart';
import 'package:delivery_manager/widgets/statistics_card.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).primaryColor,
        child: Icon(
          Icons.add,
        ),
        onPressed: () {},
      ),
      body: Stack(
        children: [
          BackgroundContainer(),
          SafeArea(
            child: Container(
              width: double.infinity,
              child: Column(
                children: [
                  BackgroundText(),
                  StatisticsCard(),
                  Expanded(
                    child: ListView(
                      physics: BouncingScrollPhysics(),
                      children: [
                        OrderCard(
                          deliveryMan: "Mina Morkos",
                          price: "10.50\$",
                          date: "3:00PM",
                        ),
                        OrderCard(
                          deliveryMan: "Tadrous Samy",
                          price: "Priceless\$",
                          date: "4:00PM",
                        ),
                        OrderCard(
                          deliveryMan: "Peter Gamal",
                          price: "0.00\$",
                          date: "5:00PM",
                        ),
                        OrderCard(
                          deliveryMan: "Mario Magdy",
                          price: "100.50\$",
                          date: "6:00PM",
                        ),
                        OrderCard(
                          deliveryMan: "Fady Erian",
                          price: "150.50\$",
                          date: "7:00PM",
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
