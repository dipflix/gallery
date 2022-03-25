import 'package:flutter/material.dart';

class Screen extends StatelessWidget {
  final Widget child;
  final Color? backgroundColor;
  final bool extendBodyBehindAppBar;

  const Screen({
    Key? key,
    required this.child,
    this.backgroundColor,
    this.extendBodyBehindAppBar = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: backgroundColor,
      extendBodyBehindAppBar: extendBodyBehindAppBar,
      body: SafeArea(
        child: child,
      ),
    );
  }
}
