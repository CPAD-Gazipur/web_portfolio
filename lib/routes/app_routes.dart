import 'package:go_router/go_router.dart';

import '../features/shell/presentation/pages/portfoliomain.page.dart';
import '../features/splash/presentation/pages/splash.page.dart';
import '../features/welcome/presentation/pages/welcome.page.dart';
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
      ShellRoute(
        navigatorKey: Utils.tabNav,
        builder: ((context, state, child) {
          return PortfolioMainPage(child: child);
        }),
        routes: [
          GoRoute(
              parentNavigatorKey: Utils.tabNav,
              path: WelcomePage.route,
              pageBuilder: (context, state) {
                return const NoTransitionPage(child: WelcomePage());
              }),
        ],
      ),
    ],
  );
}
