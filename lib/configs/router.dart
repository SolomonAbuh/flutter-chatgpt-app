import 'package:go_router/go_router.dart';

import '../features/chat/views/screen/chat_screen.dart';
import '../features/onboarding/views/screens/onboarding_screen.dart';

final router = GoRouter(
  initialLocation: OnboardingScreen.route,
  routes: [
    GoRoute(
      path: OnboardingScreen.route,
      name: OnboardingScreen.route,
      builder: (context, state) => const OnboardingScreen(),
    ),
    GoRoute(
      path: ChatScreen.route,
      name: ChatScreen.route,
      builder: (context, state) => const ChatScreen(),
    )
  ],
);
