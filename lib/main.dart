import 'package:flutter/material.dart';
import 'package:movie_app/UI/Screen/profile/update_profile.dart';
import 'package:movie_app/l10n/app_localizations.dart';
import 'package:movie_app/utils/app_routes.dart';
import 'package:movie_app/utils/app_themes.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.updateProfileRouteName,
      routes: {AppRoutes.updateProfileRouteName: (context) => UpdateProfile()},
      locale: Locale('en'),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
       theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode:  ThemeMode.dark,

    );
  }
}
