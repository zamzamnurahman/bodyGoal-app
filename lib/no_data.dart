import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class noData extends StatelessWidget {
  const noData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        Image.asset('assets/images/olahraga.png'),
        Text("Belum Ada Data",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        CircularProgressIndicator.adaptive(),
      ]),
    );
  }
}
