import 'package:flutter/material.dart';

class AnimatedMotionBuilders extends StatelessWidget {
  final List<Listenable> animations;
  final Widget Function() builder;
  const AnimatedMotionBuilders({
    Key key,
    @required this.animations,
    this.builder,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animations.first,
      builder: (context, _) {
        return AnimatedBuilder(
          animation: animations.last,
          builder: (context, _) {
            return builder();
          },
        );
      },
    );
  }
}
