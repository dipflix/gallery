import 'package:flutter/widgets.dart';
import 'package:gallery_qulisoft/src/common/utils.dart';
import 'package:gallery_qulisoft/src/uikit/styles/indents.dart';

class ScreenContent extends StatelessWidget {
  final Widget child;

  const ScreenContent({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: ScreenUtils.width,
      margin: ThemeIndents.content,
      child: child,
    );
  }
}
