import 'package:flutter/material.dart';
import 'package:web_portfolio/styles/colors.dart';

import '../widgets/splash_loading.dart';

class SplashPage extends StatelessWidget {
  static const String route = '/splash';
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: PersonalPortfolioColors.mainBlue,
      body: SplashLoading(
        message: 'Loading an awesome,\nKick-ass Profile...',
      ),
    );
  }
}
