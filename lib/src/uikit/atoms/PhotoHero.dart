import 'package:flutter/material.dart';

class PhotoHero extends StatelessWidget {
  final String photo;

  const PhotoHero({
    Key? key,
    required this.photo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: photo,
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white10,
        ),
        child: Image.network(
          photo,
          fit: BoxFit.contain,
          loadingBuilder: (BuildContext context, Widget child,
              ImageChunkEvent? loadingProgress) {
            if (loadingProgress == null) return child;
            return Center(
              child: CircularProgressIndicator(
                value: loadingProgress.expectedTotalBytes != null
                    ? loadingProgress.cumulativeBytesLoaded /
                        loadingProgress.expectedTotalBytes!
                    : null,
              ),
            );
          },
        ),
      ),
    );
  }
}
