import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/UI/Home/Hadeth/hadeth_details.dart';
import 'package:islami/UI/Home/Quran/quran_details.dart';
import 'package:islami/UI/Home/home_screen.dart';
import 'package:islami/UI/Providers/locale_provider.dart';
import 'package:islami/UI/Providers/theme_provider.dart';
import 'package:islami/UI/Splash%20Screen/splash_screen.dart';
import 'package:islami/UI/Theme/mytheme.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  var sharedPreferences = await SharedPreferences.getInstance();
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(prefs: sharedPreferences),
    ),
    ChangeNotifierProvider(
      create: (context) => LocaleProvider(prefs: sharedPreferences),
    ),
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeProvider themeProvider = ThemeProvider.get(context);
    LocaleProvider localeProvider = LocaleProvider.get(context);
    return MaterialApp(
      title: "Islami",
      debugShowCheckedModeBanner: false,
      routes: {
        SplashScreen.routeName: (_) => const SplashScreen(),
        HomeScreen.routeName: (_) => const HomeScreen(),
        QuranDetails.routeName: (_) => const QuranDetails(),
        HadethDetails.routeName: (_) => const HadethDetails(),
      },
      initialRoute: HomeScreen.routeName,
      theme: MyThemeData.lighttheme,
      darkTheme: MyThemeData.darktheme,
      themeMode: themeProvider.currentTheme,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: Locale(localeProvider.currentLocale),
    );
  }
}
