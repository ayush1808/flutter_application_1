import 'package:flutter/cupertino.dart';
import 'package:velocity_x/src/flutter/container.dart';
import 'package:velocity_x/src/flutter/padding.dart';

class catalogimage extends StatelessWidget {
  final String image;
  const catalogimage({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.network(
          image,
        ).box.p16.make().py16()
      ],
    );
  }
}
