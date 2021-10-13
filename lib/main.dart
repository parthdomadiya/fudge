import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fudge/constance/theme.dart';
import 'package:fudge/splash/spash_screen.dart';
import 'package:get/get.dart';
import 'Home/home_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]).then(
    (_) => runApp(
      MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  static setCustomeTheme(BuildContext context, int index) {
    final _MyAppState? state = context.findAncestorStateOfType<_MyAppState>();
    state!.setCustomeTheme(index);
  }

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  setCustomeTheme(int index) {
    if (index == 6) {
      setState(() {
        AppTheme.isLightTheme = true;
      });
    } else if (index == 7) {
      setState(() {
        AppTheme.isLightTheme = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: AppTheme.getTheme(),
      debugShowCheckedModeBanner: false,
      routes: routes,
    );
  }

  var routes = <String, WidgetBuilder>{
    Routes.SPLASH: (BuildContext context) => SplashScreen(),
    Routes.HOME: (BuildContext context) => HomePage(),
  };
}

class Routes {
  static String SPLASH = "/";
  static String HOME = "/Home/costome_bottombar";
}
