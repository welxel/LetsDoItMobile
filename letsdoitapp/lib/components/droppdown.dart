import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';

class CustomDropDown<T, B> extends GetView<T> {
  CustomDropDown(
      {
       required this.builder,required this.onChange, required this.initialSelection});
  final List<DropdownMenuItem<B>> builder;
  Rx<B> initialSelection;

  final Function(B data) onChange;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Container(
        width: 100,
        child: DropdownButton<B>(
          value: initialSelection.value,
          icon: Icon(Icons.arrow_downward),
          iconSize: 24,
          elevation: 16,
          style: TextStyle(color: Colors.black),
          underline: Container(
            height: 2,
            color: Colors.black,
          ),
          onChanged: (newValue) {
            initialSelection.value = newValue!;
            onChange(newValue);
            // setState(() {
            //   selectedTaskRead = newValue;
            // });
          },
          items: builder,
        ),
      ),
    );
  }
}
