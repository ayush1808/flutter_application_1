import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/data.dart';
import 'package:flutter_application_1/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class homedetailpage extends StatelessWidget {
  final Item catalog;
  const homedetailpage({Key? key, required this.catalog})
      : assert(catalog != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: MyTheme.creamcolor,
      bottomNavigationBar: Container(
        color: (Colors.white),
        child: ButtonBar(
          buttonPadding: EdgeInsets.zero,
          alignment: MainAxisAlignment.spaceBetween,
          children: [
            "\$${catalog.price}".text.bold.xl4.red500.make(),
            ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(MyTheme.darkbluecolor),
                        shape: MaterialStateProperty.all(
                          StadiumBorder(),
                        )),
                    child: "Add to Cart".text.make())
                .wh(120, 30)
          ],
        ).p16(),
      ),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Hero(
                tag: Key(catalog.id.toString()),
                child: Image.network(catalog.image).py32()),
            Expanded(
                child: VxArc(
                    height: 30.0,
                    edge: VxEdge.TOP,
                    arcType: VxArcType.CONVEY,
                    child: Container(
                      color: Colors.white,
                      width: context.screenWidth,
                      child: Column(
                        children: [
                          catalog.name.text.xl5
                              .color(MyTheme.darkbluecolor)
                              .bold
                              .make(),
                          catalog.desc.text
                              .color(MyTheme.darkbluecolor)
                              .xl2
                              .make(),
                          20.heightBox,
                        ],
                      ).py32(),
                    )))
          ],
        ).p16(),
      ),
    );
  }
}
