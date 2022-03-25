
import 'package:flutter/widgets.dart';
import 'package:gallery_qulisoft/src/screens/gallery.dart';
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
        builder: (BuildContext context, GoRouterState state) =>
        const GalleryScreen(),
      ),

    ],
  );
}
