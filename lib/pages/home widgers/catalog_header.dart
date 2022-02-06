export '';
import 'package:velocity_x/velocity_x.dart';
import 'dart:convert';
import 'dart:html';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/themes.dart';

class catalogheader extends StatelessWidget {
  const catalogheader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        "Catalog App".text.xl5.bold.color(MyTheme.darkbluecolor).make(),
        "follow the trend".text.bold.color(MyTheme.darkbluecolor).xl2.make(),
      ],
    );
  }
}
