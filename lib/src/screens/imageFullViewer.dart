import 'package:flutter/material.dart';
import 'package:gallery_qulisoft/src/common/models/CardImageModel.dart';
import 'package:gallery_qulisoft/src/uikit.dart';

class ImageFillViewerScreen extends StatefulWidget {
  final CardImageModel model;

  const ImageFillViewerScreen({Key? key, required this.model})
      : super(key: key);

  @override
  State<ImageFillViewerScreen> createState() => _ImageFillViewerScreenState();
}

class _ImageFillViewerScreenState extends State<ImageFillViewerScreen> {
  @override
  Widget build(BuildContext context) {
    return Screen(
      backgroundColor: Colors.black,
      child: Stack(
        children: [
          Positioned.fill(
            top: 0,
            left: 0,
            child: PhotoHero(photo: widget.model.imageUrls!.full!),
          ),
          Positioned(
            top: 0,
            left: 0,
            height: 128,
            child: ToolBar(
              middleChild: Text(widget.model.author!.username!),
            ),
          ),
        ],
      ),
    );
  }
}
