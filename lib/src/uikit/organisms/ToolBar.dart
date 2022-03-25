import 'package:flutter/material.dart';
import 'package:gallery_qulisoft/src/common/utils.dart';
import 'package:gallery_qulisoft/src/uikit.dart';
import 'package:go_router/go_router.dart';
import 'package:iconly/iconly.dart';

class ToolBar extends StatelessWidget {
  final Widget middleChild;

  const ToolBar({
    Key? key,
    required this.middleChild,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 0, bottom: 30, right: 30, left: 30),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              context.pop();
            },
            child: Container(
              width: 32,
              height: 32,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: ThemeColors.border.withOpacity(0.1),
              ),
              child: const Icon(
                IconlyLight.arrow_left_2,
                color: Colors.white,
                size: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
