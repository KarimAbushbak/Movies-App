import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:movies/core/resources/manager_assets.dart';
import 'package:movies/core/resources/manager_colors.dart';
import 'package:movies/core/resources/manager_font_sizes.dart';
import 'package:movies/core/resources/manager_height.dart';
import 'package:movies/core/resources/manager_strings.dart';
import 'package:movies/core/resources/manager_width.dart';
import 'package:movies/features/splash/presntaion/controller/splash_controller.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashController>(
      builder: (controller) {
        return Scaffold(
          body: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
                gradient: LinearGradient(
              colors: [ManagerColors.primaryColor1, ManagerColors.primaryColor2],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
            )),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: ManagerWidth.w100,
                  height: ManagerHeight.h100,
                  decoration: BoxDecoration(
                      image:
                          DecorationImage(image: AssetImage(ManagerAssets.splash))),
                ),
                SizedBox(
                  height: ManagerHeight.h8,
                ),
                Text(
                 ManagerStrings.appName,
                  style: TextStyle(
                      color: ManagerColors.white, fontSize: ManagerFontSizes.s20),
                )
              ],
            ),
          ),
        );
      }
    );
  }
}
