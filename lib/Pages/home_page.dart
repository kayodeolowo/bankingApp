// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:mywallet/util/List_tile.dart';
import 'package:mywallet/util/buttons.dart';
import 'package:mywallet/util/card.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //page controller
  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.redAccent,
        child: Icon(
          Icons.monetization_on,
          size: 40,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.grey[200],
        child: Padding(
          padding: const EdgeInsets.only(top: 10),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.home_filled,
                  size: 30,
                  color: Colors.green,
                )),
            IconButton(
                onPressed: () {},
                icon: Icon(Icons.settings, size: 30, color: Colors.redAccent)),
          ]),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              //app bar
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25.0, vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          'My',
                          style: TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          ' Cards ',
                          style: TextStyle(
                            fontSize: 26,
                          ),
                        ),
                      ],
                    ),
                    //plus button
                    Container(
                        padding: EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          color: Colors.grey[400],
                          shape: BoxShape.circle,
                        ),
                        child: Icon(Icons.add)),
                  ],
                ),
              ),

              SizedBox(
                height: 0,
              ),
              Container(
                height: 200,
                child: PageView(
                  scrollDirection: Axis.horizontal,
                  controller: _controller,
                  children: [
                    MyCard(
                      balance: 781.94,
                      cardNumber: 438472746429884,
                      expiryDate: 5,
                      expiryYear: 25,
                      Color: Colors.pink[300],
                    ),
                    MyCard(
                      balance: 3982.39,
                      cardNumber: 462736429884,
                      expiryDate: 10,
                      expiryYear: 25,
                      Color: Colors.deepOrange[300],
                    ),
                    MyCard(
                      balance: 3482.99,
                      cardNumber: 3526329884,
                      expiryDate: 02,
                      expiryYear: 23,
                      Color: Colors.deepPurple[300],
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: 20,
              ),

              SmoothPageIndicator(
                controller: _controller,
                count: 3,
                effect: ExpandingDotsEffect(activeDotColor: Colors.red),
              ),

              SizedBox(
                height: 20,
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Button(
                      iconImagePath: 'images/sendmoney.png',
                      buttonText: 'Transfer',
                    ),
                    Button(
                      iconImagePath: 'images/pay.png',
                      buttonText: 'Pay',
                    ),
                    Button(
                      iconImagePath: 'images/bill.png',
                      buttonText: 'Bills',
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),

              Padding(
                padding: const EdgeInsets.all(25),
                child: Column(
                  children: [
                    MyListTile(
                        iconImagePath: 'images/stats.png',
                        tileTittle: 'Statistics',
                        tileSub: 'Payment & Income'),
                    MyListTile(
                        iconImagePath: 'images/transactions.png',
                        tileTittle: 'Transactions',
                        tileSub: 'History of Payments')
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
