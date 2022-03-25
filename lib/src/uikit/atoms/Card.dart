import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CardComponent extends StatelessWidget {
  final Widget child;
  final EdgeInsetsGeometry? padding;

  final Gradient? gradient;
  final Color color;
  final List<BoxShadow>? shadows;

  const CardComponent(
      {Key? key,
      required this.child,
      this.padding,
      this.gradient,
      this.color = Colors.white,
      this.shadows})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      width: double.infinity,
      padding: padding ?? const EdgeInsets.all(8),
      decoration: BoxDecoration(
        gradient: gradient,
        color: color,
        borderRadius: BorderRadius.circular(8),
        boxShadow: shadows,
      ),
      child: child,
    );
  }
}
