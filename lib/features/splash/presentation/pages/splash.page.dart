import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:web_portfolio/helpers/utils.dart';
import 'package:web_portfolio/styles/colors.dart';

import '../../../welcome/presentation/pages/welcome.page.dart';
import '../widgets/splash_loading.dart';

class SplashPage extends StatelessWidget {
  static const String route = '/splash';
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () {
      GoRouter.of(Utils.mainNav.currentContext!).go(WelcomePage.route);
    });

    return const Scaffold(
      backgroundColor: PersonalPortfolioColors.mainBlue,
      body: SplashLoading(
        message: 'Loading an awesome,\nKick-ass Profile...',
      ),
    );
  }
}
