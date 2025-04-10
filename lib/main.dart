import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:movies/routes/routes.dart';

import 'config/dependancy_injection.dart';

void main() async {
  await initModule();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.splashScreen,
      onGenerateRoute: RouteGenerator.getRoute,

    );
  }
}
