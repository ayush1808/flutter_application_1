// ignore_for_file: use_key_in_widget_constructors, prefer_equal_for_default_values

import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/data.dart';

class ItemWidget extends StatelessWidget {
  final Item item;
  const ItemWidget({Key? key, required this.item})
      : assert(item != Null),
        super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () => {print},
        title: Text(item.name),
        subtitle: Text(item.desc),
        leading: Image.network(item.image),
        trailing: Text(
          "\$${item.price}",
          textScaleFactor: 1.5,
          style: TextStyle(
            color: Colors.deepPurple,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
