import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:virtual_exhibition_app/resources/app_assets.dart';
import 'package:virtual_exhibition_app/resources/app_colors.dart';
import 'package:virtual_exhibition_app/resources/app_typography.dart';
import 'package:virtual_exhibition_app/views/home/widgets/bottom_navbar_widget.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: Get.height,
            width: Get.width,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AppAssets.kOnboarding),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: Get.height * 0.4,
              width: Get.width,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    AppColors.kBlackColor.withValues(alpha: 0.0),
                    AppColors.kBlackColor,
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 40.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BounceInDown(
                  controller: (controller) => controller = controller,
                  delay: const Duration(milliseconds: 400),
                  child: Text(
                    "A Virtual World of \nThe Greatest \nPainting",
                    style: AppTypography.kBold30.copyWith(
                        color: AppColors.kWhiteColor,
                        height: 0,
                        wordSpacing: 0),
                    textAlign: TextAlign.start,
                  ),
                ),
                SizedBox(height: 12.h),
                BounceInDown(
                  controller: (controller) => controller = controller,
                  delay: const Duration(milliseconds: 500),
                  child: Text(
                    "The influential critic John Ruskin became a close friend, neighbor, and great supporter of the artist.",
                    style: AppTypography.kLight14.copyWith(
                      color: AppColors.kSmokeColor,
                      height: 0,
                      wordSpacing: 0,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ),
                SizedBox(height: 20.h),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 20.r,
                      backgroundColor:
                          AppColors.kWhiteColor.withValues(alpha: 0.5),
                      child: Icon(
                        Icons.arrow_back_ios_new,
                        color: AppColors.kBlackColor,
                      ),
                    ),
                    SizedBox(width: 14.w),
                    CircleAvatar(
                      radius: 20.r,
                      backgroundColor: AppColors.kWhiteColor,
                      child: GestureDetector(
                        onTap: () {
                          Get.offAll(() => BottomNavbarWidget());
                        },
                        child: Icon(
                          Icons.arrow_forward_ios,
                          color: AppColors.kBlackColor,
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}





/* 
FadeInDownBig(
              //   controller: (controller) => controller = controller,
              //   delay: const Duration(milliseconds: 300),
              //   child: Container(
              //     height: 160.h,
              //     width: 85.w,
              //     decoration: BoxDecoration(
              //       borderRadius: BorderRadius.circular(100.r),
              //       gradient: LinearGradient(
              //         begin: Alignment.topCenter,
              //         end: Alignment.bottomCenter,
              //         colors: [
              //           AppColors.kSmokeColor.withValues(alpha: 0.0),
              //           AppColors.kSmokeColor,
              //         ],
              //       ),
              //     ),
              //     child: Padding(
              //       padding: EdgeInsets.only(bottom: 6.h, top: 34.h),
              //       child: Column(
              //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //         children: [
              //           BounceInDown(
              //             controller: (controller) => controller = controller,
              //             delay: const Duration(milliseconds: 900),
              //             child: Icon(
              //               Icons.keyboard_double_arrow_up_sharp,
              //               size: 50,
              //               color: AppColors.kWhiteColor.withValues(alpha: 0.9),
              //             ),
              //           ),
              //           // bouncebutton.Bounce(
              //           //   onTap: () => Get.offAllNamed(AppRoutes.homescreen),
              //           //   child: BounceInDown(
              //           //     controller: (controller) => controller = controller,
              //           //     delay: const Duration(milliseconds: 1000),
              //           //     child: CircleAvatar(
              //           //       radius: 36.r,
              //           //       backgroundColor: AppColors.kWhiteColor,
              //           //       child: Text("Go", style: AppTypography.kMedium22),
              //           //     ),
              //           //   ),
              //           // )
              //         ],
              //       ),
              //     ),
              //   ),
              // )
 */