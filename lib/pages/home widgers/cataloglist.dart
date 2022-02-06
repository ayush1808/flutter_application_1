export '';
import 'package:flutter_application_1/models/data.dart';
import 'package:flutter_application_1/pages/home_page.dart';
import 'package:flutter_application_1/pages/homedetail.dart';
import 'package:velocity_x/velocity_x.dart';
import 'dart:convert';
import 'dart:html';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/themes.dart';

import 'catalogimage.dart';

class catalogitem extends StatelessWidget {
  final Item catalog;
  // ignore: use_key_in_widget_constructors
  const catalogitem({Key? key, required this.catalog})
      : assert(catalog != Null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return VxBox(
        child: Row(
      children: [
        Hero(
            tag: Key(catalog.id.toString()),
            child: catalogimage(image: catalog.image)),
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            catalog.name.text.color(MyTheme.darkbluecolor).bold.make(),
            catalog.desc.text.color(MyTheme.darkbluecolor).make(),
            20.heightBox,
            ButtonBar(
              buttonPadding: EdgeInsets.zero,
              alignment: MainAxisAlignment.spaceBetween,
              children: [
                "\$${catalog.price}".text.bold.xl.make(),
                ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(MyTheme.darkbluecolor),
                        shape: MaterialStateProperty.all(
                          StadiumBorder(),
                        )),
                    child: "Add to Cart".text.make())
              ],
            ).px12()
          ],
        ))
      ],
    )).white.roundedLg.square(200).make().py16();
  }
}

class cataloglist extends StatelessWidget {
  const cataloglist({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: CatalogModel.products.length,
      itemBuilder: (context, index) {
        final catalog = CatalogModel.products[index];
        return InkWell(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => homedetailpage(catalog: catalog))),
            child: catalogitem(catalog: catalog));
      },
    );
  }
}
