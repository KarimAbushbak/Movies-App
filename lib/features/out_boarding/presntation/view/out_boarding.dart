import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movies/core/resources/manager_assets.dart';
import 'package:movies/core/resources/manager_colors.dart';
import 'package:movies/core/resources/manager_font_sizes.dart';
import 'package:movies/core/resources/manager_height.dart';
import 'package:movies/core/resources/manager_strings.dart';
import 'package:movies/features/out_boarding/controller/outboarding_controller.dart';

import '../../../../core/resources/manager_width.dart';
import '../../../../core/widgets/base_button.dart';
import '../../../../routes/routes.dart';

class OutBoardingView extends StatelessWidget {
  const OutBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OutBoardingController>(builder: (controller) {
      return Scaffold(
        body: Stack(
          children: [
            Positioned.fill(
              child: PageView(
                scrollDirection: Axis.horizontal,
                controller: controller.pageController,
                onPageChanged: (int value) {
                  controller.currentPageIndex = value;
                  controller.update();
                },
                children: [
                  Stack(
                    children: [
                      Container(
                        width: double.infinity,
                        height: double.infinity,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(ManagerAssets.outBoarding2),
                          ),
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                ManagerColors.primaryColor1.withOpacity(0.8),
                                Colors.transparent
                              ],
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        right: 0,
                        left: 0,
                        top: 444,
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            ManagerStrings.out_boadring1,
                            style: TextStyle(
                              color: ManagerColors.white,
                              fontSize: ManagerFontSizes.s34,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        right: 0,
                        left: 0,
                        top: 490,
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            ManagerStrings.out_boadring2,
                            style: TextStyle(
                              color: ManagerColors.white,
                              fontSize: ManagerFontSizes.s34,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        right: 0,
                        left: 0,
                        top: 580,
                        child: Align(
                          alignment: Alignment.center,
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: List.generate(2, (index) {
                              return Padding(
                                padding: EdgeInsets.symmetric(horizontal: 4),
                                child: Image.asset(
                                  ManagerAssets.outBoarding3,
                                  width: 20,
                                  height: 20,
                                  color: index == 0
                                      ? ManagerColors.white
                                      : ManagerColors.white.withOpacity(0.3),
                                ),
                              );
                            }),
                          ),
                        ),
                      ),
                      Positioned(
                          top: 658,
                          right: 0,
                          left: 0,
                          child: Center(
                              child: Container(
                            decoration: BoxDecoration(
                              gradient: controller.isLastPage()
                                  ? LinearGradient(
                                      colors: [
                                        Colors.black,
                                        Colors.grey.shade800
                                      ],
                                      begin: Alignment.centerLeft,
                                      end: Alignment.centerRight,
                                    )
                                  : LinearGradient(
                                      colors: [
                                        Colors.transparent,
                                        Colors.transparent
                                      ],
                                    ),
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(color: Colors.white, width: 1),
                            ),
                            child: ElevatedButton(
                              onPressed: () {
                                controller.isLastPage()
                                    ? Get.offAllNamed(Routes.registerView)
                                    : controller.pageController.nextPage(
                                        duration: Duration(milliseconds: 300),
                                        curve: Curves.fastLinearToSlowEaseIn,
                                      );
                              },
                              style: ElevatedButton.styleFrom(
                                minimumSize:
                                    Size(ManagerWidth.w174, ManagerHeight.h52),
                                backgroundColor: Colors.transparent,
                                shadowColor: Colors.transparent,
                                padding: EdgeInsets.symmetric(horizontal: 24),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),

                                ),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    "Next",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  ),
                                  SizedBox(width: 8),
                                  Icon(Icons.arrow_forward,
                                      color: Colors.white),
                                ],
                              ),
                            ),
                          ))),
                    ],
                  ),
                  Stack(
                    children: [
                      Container(
                        width: double.infinity,
                        height: double.infinity,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(ManagerAssets.outBoarding4),
                          ),
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                ManagerColors.outboardingLastPage,
                                Colors.transparent
                              ],
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        right: 0,
                        left: 0,
                        top: 444,
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            ManagerStrings.out_boadring1,
                            style: TextStyle(
                              color: ManagerColors.white,
                              fontSize: ManagerFontSizes.s34,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        right: 0,
                        left: 0,
                        top: 490,
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            ManagerStrings.out_boadring2,
                            style: TextStyle(
                              color: ManagerColors.white,
                              fontSize: ManagerFontSizes.s34,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        right: 0,
                        left: 0,
                        top: 580,
                        child: Align(
                          alignment: Alignment.center,
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: List.generate(2, (index) {
                              return Padding(
                                padding: EdgeInsets.symmetric(horizontal: 4),
                                child: Image.asset(
                                  ManagerAssets.outBoarding3,
                                  width: 20,
                                  height: 20,
                                  color: index == 1
                                      ? ManagerColors.white
                                      : ManagerColors.white.withOpacity(0.3),
                                ),
                              );
                            }),
                          ),
                        ),
                      ),
                      Positioned(
                          top: 658,
                          right: 0,
                          left: 0,
                          child: Center(
                              child: Container(
                                decoration: BoxDecoration(
                                  gradient: controller.isLastPage()
                                      ? LinearGradient(
                                    colors: [
                                      ManagerColors.outboardingButton,
                                      ManagerColors.outboardingButton2,
                                    ],
                                    begin: Alignment.centerLeft,
                                    end: Alignment.centerRight,
                                  )
                                      : LinearGradient(
                                    colors: [
                                      Colors.transparent,
                                      Colors.transparent
                                    ],
                                  ),
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(color: Colors.white, width: 1),
                                ),
                                child: ElevatedButton(
                                  onPressed: () {
                                    controller.isLastPage()
                                        ? Get.offAllNamed(Routes.registerView)
                                        : controller.pageController.nextPage(
                                      duration: Duration(milliseconds: 300),
                                      curve: Curves.fastLinearToSlowEaseIn,
                                    );
                                  },
                                  style: ElevatedButton.styleFrom(
                                    elevation: 0,
                                    minimumSize:
                                    Size(ManagerWidth.w174, ManagerHeight.h52),
                                    backgroundColor: Colors.transparent,
                                    shadowColor: Colors.transparent,
                                    padding: EdgeInsets.symmetric(horizontal: 24),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),

                                    ),
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text(
                                        "Next",
                                        style: TextStyle(
                                            fontSize: 20, color: Colors.white),
                                      ),
                                      SizedBox(width: 8),
                                      Icon(Icons.arrow_forward,
                                          color: Colors.white),
                                    ],
                                  ),
                                ),
                              ))),
                    ],
                  ),

                ],
              ),
            )

            // Main Title

            // Subtitle
          ],
        ),
      );
    });
  }
}
