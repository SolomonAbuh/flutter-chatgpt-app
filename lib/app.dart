import 'package:flutter/material.dart';
import 'configs/router.dart';
import 'configs/theme.dart';

class FlutterChatGpt extends StatelessWidget {
  const FlutterChatGpt({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'ChatGpt',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: AppTheme.themeData,
      routeInformationParser: router.routeInformationParser,
      routerDelegate: router.routerDelegate,
      routeInformationProvider: router.routeInformationProvider,
    );
  }
}
