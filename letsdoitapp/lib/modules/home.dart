import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends StatelessWidget {
  HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      // future: service.getAll(),
      builder: (context, data) {
        if(data.connectionState==ConnectionState.done){
          return Text("datageldi");
        }
        return CircularProgressIndicator();
      },
    );
  }
}
