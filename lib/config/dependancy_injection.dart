import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:movies/features/out_boarding/controller/outboarding_controller.dart';
import '../core/storage/local/database/shared_preferences/app_settings_shared_preferences.dart';
import '../features/splash/presntaion/controller/splash_controller.dart';

initModule() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AppSettingsSharedPreferences().initPreferences();
}
initSplash() {
  Get.put<SplashController>(SplashController());
}

disposeSplash() {
  Get.delete<SplashController>();
}
initOutBoarding() {
  Get.put<OutBoardingController>(OutBoardingController());
}


// initAuth() {
//   disposeSplash();
//
//   Get.put<AuthController>(AuthController());
// }
//
// disposeAuth() {
//   Get.delete<AuthController>();
// }
// initHome() {
//   disposeSplash();
//
//   Get.put<HomeController>(HomeController());
// }
// initLocale(){
//   Get.put<LocaleNotifierController>(LocaleNotifierController());
// }
