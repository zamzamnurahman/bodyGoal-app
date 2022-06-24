import 'package:flutter/material.dart';

import '../theme.dart';

class Formulir extends StatelessWidget {
  TextEditingController controller;
  String nama;
  IconData icon;
  bool obsecure;

  Formulir({this.controller, this.nama, this.icon, this.obsecure});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        border: Border.all(width: 2, color: kBlue),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              child: Icon(
                icon,
                size: 35,
              )),
          Expanded(
            // width: 200,
            child: TextField(
              obscureText: obsecure ?? false,
              controller: controller,
              decoration: InputDecoration(
                border: InputBorder.none,
                focusColor: Colors.white,
                hintText: '$nama',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
