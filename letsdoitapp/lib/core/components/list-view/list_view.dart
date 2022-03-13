import 'package:LetsDoIt/core/animations/list_item_animation.dart';
import 'package:auto_animated/auto_animated.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class AnimatedListView<T> extends StatelessWidget {
  final List<T> items;
  final Duration itemInterval;
  final Duration itemDuration;
  final Axis scrollDirection;
  final EdgeInsets padding;
  final bool reAnimateOnVisibility;
  final Widget Function(BuildContext context, T data) builder;

  AnimatedListView(
      {Key? key,
      required this.items,
      required this.builder,
      required this.itemInterval,
      required this.itemDuration,
      required this.scrollDirection,
      required this.padding,
      this.reAnimateOnVisibility = false})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return LiveList(
      shrinkWrap: true,
      showItemInterval: itemInterval,
      showItemDuration: itemDuration,
      padding: padding ,
      reAnimateOnVisibility: reAnimateOnVisibility,
      scrollDirection: scrollDirection,
      physics: BouncingScrollPhysics(),
      itemCount: items.length,
      itemBuilder: animationItemBuilder(
        (index) => builder(context, items[index]),
      ),
    );
  }
}
