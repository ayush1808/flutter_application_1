import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class cartpage extends StatelessWidget {
  const cartpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyTheme.creamcolor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: "Shopping Cart".text.color(Colors.black).center.make(),
      ),
    );
  }
}
