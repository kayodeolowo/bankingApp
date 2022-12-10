// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:mywallet/util/card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Column(
          children: [
            //app bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
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
              height: 25,
            ),
            Container(
              height: 200,
              child: PageView(
                scrollDirection: Axis.horizontal,
                children: [
                  MyCard(
                    balance: 3482.99,
                    cardNumber: 3526329884,
                    expiryDate: 02,
                    expiryYear: 2024,
                    Color: Colors.deepPurple[300],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
