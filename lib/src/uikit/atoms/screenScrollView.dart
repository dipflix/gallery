import 'package:flutter/material.dart';
import 'package:gallery_qulisoft/src/common/utils.dart';

class ScreenScrollView extends StatelessWidget {
  final Widget child;

  const ScreenScrollView({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (OverscrollIndicatorNotification notification) {
      notification.disallowIndicator();
      return false;
    }, child: LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return SizedBox(
          width: ScreenUtils.width,
          height: ScreenUtils.height,
          child: SingleChildScrollView(
            child: child,
          ),
        );
      },
    ));
  }
}
