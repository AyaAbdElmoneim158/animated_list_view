library animated_list_view;

import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';

class AnimatedListView extends StatelessWidget {
  final List<Widget> list;
  final bool shrinkWrap;
  final ScrollPhysics? physics;
  final double separator;
  final Duration duration;

  const AnimatedListView({
    super.key,
    required this.list,
    this.shrinkWrap = false,
    this.physics,
    this.separator = 16.0,
    this.duration = const Duration(milliseconds: 500),
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: shrinkWrap,
      physics: physics,
      scrollDirection: Axis.vertical,
      separatorBuilder: (context, index) => SizedBox(height: separator),
      itemCount: list.length,
      itemBuilder: (context, index) {
        var listItem = list[index];

        return index.isEven
            ? FadeInLeftBig(duration: duration, child: listItem)
            : FadeInRightBig(duration: duration, child: listItem);
      },
    );
  }
}
