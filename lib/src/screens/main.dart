import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:gallery_qulisoft/src/common/api/unsplash/photos.dart';
import 'package:gallery_qulisoft/src/common/models/CardImageModel.dart';
import 'package:gallery_qulisoft/src/uikit.dart';
import 'package:gallery_qulisoft/src/uikit/styles/indents.dart';

class GalleryScreen extends StatefulWidget {
  const GalleryScreen({Key? key}) : super(key: key);

  @override
  State<GalleryScreen> createState() => _GalleryScreenState();
}

class _GalleryScreenState extends State<GalleryScreen> {
  late Future<List<CardImageModel>> _carlImagesFuture;

  @override
  void initState() {
    super.initState();
    _carlImagesFuture = fetchPhotos();
  }

  @override
  Widget build(BuildContext context) {
    return Screen(
      child: FutureBuilder(
          future: _carlImagesFuture,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              var _photos = snapshot.data as List<CardImageModel>;

              return MasonryGridView.count(
                itemCount: _photos.length,
                padding: ThemeIndents.content,
                crossAxisCount: 2,
                mainAxisSpacing: 5,
                crossAxisSpacing: 5,
                itemBuilder: (context, index) {
                  return GalleryCard(_photos[index]);
                },
              );
            } else if (snapshot.hasError) {
              return Column(
                children: const [Text("ERROR")],
              );
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          }),
    );
  }
}
