import 'package:go_router/go_router.dart';

import '../features/splash/presentation/pages/splash.page.dart';
import '../helpers/utils.dart';

class AppRoutes {
  static final router = GoRouter(
      initialLocation: SplashPage.route,
      navigatorKey: Utils.mainNav,
      routes: [
        GoRoute(
          parentNavigatorKey: Utils.mainNav,
          path: SplashPage.route,
          builder: (context, state) => const SplashPage(),
        ),
      ]);
}
