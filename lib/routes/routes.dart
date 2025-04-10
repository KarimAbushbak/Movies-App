import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movies/config/dependancy_injection.dart';
import 'package:movies/features/out_boarding/presntation/view/out_boarding.dart';
import 'package:movies/features/splash/presntaion/view/splash_view.dart';
import '../core/resources/manager_strings.dart';

class Routes {
  static const String splashScreen = '/splash_screen';
  static const String languageScreen = '/language_screen';
  static const String outBoardingScreen = '/out_boarding_screen';
  static const String loginView = '/login_view';
  static const String registerView = '/register_view';
  static const String homeView = '/home_view';
  static const String flagView = '/flag_view';
  static const String topicView = '/topic_view';
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashScreen:
        initSplash();
        return MaterialPageRoute(builder: (_) => SplashScreen());

      case Routes.outBoardingScreen:
        initOutBoarding();
        return MaterialPageRoute(builder: (_) =>  OutBoardingView());
      // case Routes.loginView:
      //   initAuth();
      //   return MaterialPageRoute(builder: (_) => const LoginView());
      // case Routes.registerView:
      //   initAuth();
      //   return MaterialPageRoute(builder: (_) => const RegisterView());
      // case Routes.homeView:
      //   initHome();
      //   return MaterialPageRoute(builder: (_) =>  HomeView());
      // case Routes.flagView:
      //   initFlag();
      //   return MaterialPageRoute(builder: (_) => const FlagView());
      // case Routes.topicView:
      //   initTopic();
      //   return MaterialPageRoute(builder: (_) => const TopicView());
      // // case Routes.settingView:
      //   initSetting();
      //   return MaterialPageRoute(builder: (_) =>  SettingView());
      // case Routes.detailsView:
      //   return MaterialPageRoute(builder: (_) =>  DetailsView());
      default:
        return unDefineRoute();
    }
  }

  static Route<dynamic> unDefineRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Text("ManagerStrings.notFoundRoute"),
        ),
      ),
    );
  }
}
