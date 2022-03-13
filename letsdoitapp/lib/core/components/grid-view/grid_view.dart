import 'package:LetsDoIt/core/animations/list_item_animation.dart';
import 'package:auto_animated/auto_animated.dart';
import 'package:flutter/material.dart';

class AnimatedGridView<T> extends StatelessWidget {
  final Widget Function(BuildContext context, T data) builder;
  final List<T> items;
  final Duration itemInterval;
  final Duration itemDuration;
  final SliverGridDelegate gridDelegate;
  final double itemwidth;
  final double childAspectRatio;
  final double crossAxisSpacing;
  final double mainAxisSpacing;

  const AnimatedGridView(
      {Key? key,
      required this.items,
      required this.builder,
      required this.itemInterval,
      required this.itemDuration,
      required this.gridDelegate,
      this.itemwidth = 300,
      this.childAspectRatio = 1,
      this.crossAxisSpacing = 16,
      this.mainAxisSpacing = 16})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LiveGrid(
      padding: EdgeInsets.all(16),
      showItemInterval: Duration(milliseconds: 50),
      showItemDuration: Duration(milliseconds: 150),
      visibleFraction: 0.001,
      itemCount: items.length,
      shrinkWrap: true,
      physics: BouncingScrollPhysics(),
      reAnimateOnVisibility: false,
      gridDelegate: gridDelegate,
      itemBuilder: animationItemBuilder(
          (index) => builder(context, items[index]),
          begin: 0,
          end: 1),
    );
  }
}
