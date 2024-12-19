import 'package:flutter/material.dart';
import 'package:weatherapp/shared/routes/route_strings.dart';
import 'package:weatherapp/shared/routes/router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      navigatorKey: AppRouter.navKey,
      initialRoute: AppRouteStrings.base,
      onGenerateRoute: AppRouter.onGenerateRoute,
    );
  }
}
