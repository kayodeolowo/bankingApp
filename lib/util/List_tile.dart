// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyListTile extends StatelessWidget {
  final String iconImagePath;
  final String tileTittle;
  final String tileSub;

  const MyListTile({
    Key? key,
    required this.iconImagePath,
    required this.tileTittle,
    required this.tileSub,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                height: 80,
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.circular(12)),
                child: Image.asset(iconImagePath),
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // ignore: prefer_const_constructors
                  Text(
                    tileTittle,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    tileSub,
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.grey[600],
                    ),
                  )
                ],
              ),
            ],
          ),
          Icon(Icons.arrow_forward_ios_outlined)
        ],
      ),
    );
  }
}
