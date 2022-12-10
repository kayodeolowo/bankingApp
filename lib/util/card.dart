// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final double balance;
  final int cardNumber;
  final int expiryDate;
  final int expiryYear;
  final Color;

  const MyCard(
      {Key? key,
      required this.balance,
      required this.cardNumber,
      required this.expiryDate,
      required this.expiryYear,
      required this.Color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Container(
        width: 300,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: Color, borderRadius: BorderRadius.circular(16)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
            ),
            Text(
              'Balance',
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              '\$' + balance.toString(),
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              //card info
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  cardNumber.toString(),
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  expiryDate.toString() + '/' + expiryYear.toString(),
                  style: TextStyle(color: Colors.white),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
