import 'package:flutter/widgets.dart';
import 'package:gallery_qulisoft/src/common/models/CardImageModel.dart';
import 'package:gallery_qulisoft/src/common/models/imageUrlsModel.dart';
import 'package:gallery_qulisoft/src/screens/imageFullViewer.dart';
import 'package:gallery_qulisoft/src/screens/main.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  final String initialLocation = '/';

  GoRouter get getRouter => GoRouter(
    initialLocation: initialLocation,

    routes: <GoRoute>[
      GoRoute(
        path: '/',

        builder: (BuildContext context, GoRouterState state) =>
        const GalleryScreen(),
      ),
      GoRoute(
        path: '/imageFullView',
        builder: (BuildContext context, GoRouterState state){
          return ImageFillViewerScreen(model: state.extra as CardImageModel);
        }
        ,
      ),

    ],
  );
}
