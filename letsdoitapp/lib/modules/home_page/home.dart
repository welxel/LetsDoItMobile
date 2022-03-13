import 'package:LetsDoIt/models/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'component/drawer_menu.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colors,
      ),
      body: Container(
        color: homeColor,
      ),
      drawer: MyDrawer(),
      drawerScrimColor: homeColor,
    );
  }
}

