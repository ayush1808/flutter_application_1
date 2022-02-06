import 'dart:convert';
import 'dart:html';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/models/data.dart';
import 'package:flutter_application_1/utils/routes.dart';
import 'package:flutter_application_1/widgets/drawer.dart';
import 'package:flutter_application_1/widgets/item_widgets.dart';
import 'package:flutter_application_1/widgets/themes.dart';

import 'package:velocity_x/velocity_x.dart';

import 'home widgers/catalog_header.dart';
import 'home widgers/cataloglist.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  

  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 2));
    final catalogJson =
        await rootBundle.loadString("assets/files/catalog.json");
    final decodedData = jsonDecode(catalogJson);
    var productsData = decodedData["products"];
    CatalogModel.products = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    //var set = {Center(child: CircularProgressIndicator)};
    return Scaffold(
      backgroundColor: MyTheme.creamcolor,
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pushNamed(context, MyRoutes.cartroute),
        backgroundColor: MyTheme.darkbluecolor,
        child: Icon(CupertinoIcons.cart),
      ),
      body: SafeArea(
          child: Container(
        padding: Vx.m32,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            catalogheader(),
            if (CatalogModel.products != Null &&
                CatalogModel.products.isNotEmpty)
              cataloglist().expand()
            else
              CircularProgressIndicator().centered().expand(),
          ],
        ),
      )),
    );
  }
}
