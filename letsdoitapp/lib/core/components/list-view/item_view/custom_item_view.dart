import 'package:flutter/material.dart';

class CustomItemView extends StatelessWidget implements ICustomItemView {
  const CustomItemView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (MediaQuery.of(context).orientation == Orientation.landscape) {
      return buildGrid(context);
    }
    return buildList(context);
  }

  @override
  Widget buildGrid(BuildContext context) {
    throw UnimplementedError();
  }

  @override
  Widget buildList(BuildContext context) {
    throw UnimplementedError();
  }
}

abstract class ICustomItemView {
  Widget buildList(BuildContext context);
  Widget buildGrid(BuildContext context);
}
