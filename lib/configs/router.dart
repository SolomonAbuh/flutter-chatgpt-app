import 'package:go_router/go_router.dart';

import '../features/onboarding/presentation/screens/onboarding_screen.dart';

final router = GoRouter(
  initialLocation: '/${OnboardingScreen.route}',
  routes: [
    GoRoute(
      path: '/${OnboardingScreen.route}',
      name: OnboardingScreen.route,
      builder: (context, state) => const OnboardingScreen(),
    )
  ],
);
