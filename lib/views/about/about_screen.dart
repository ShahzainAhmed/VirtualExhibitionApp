import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:virtual_exhibition_app/resources/app_assets.dart';
import 'package:virtual_exhibition_app/resources/app_colors.dart';
import 'package:virtual_exhibition_app/resources/app_typography.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () => Get.back(),
            icon: Icon(
              Icons.arrow_back_ios_new,
              color: AppColors.kWhiteColor,
            )),
        backgroundColor: AppColors.kTransparentColor,
      ),
      body: Container(
        height: Get.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppAssets.kAbout2),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              AppColors.kBlackColor.withAlpha(200),
              BlendMode.darken,
            ),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.only(left: 30.w, right: 30.w, top: 140.h),
          child: Column(
            children: [
              FadeInUp(
                controller: (controller) => controller = controller,
                delay: const Duration(milliseconds: 300),
                child: Container(
                  height: 300.h,
                  width: 220.w,
                  padding: EdgeInsets.all(7.r),
                  decoration: BoxDecoration(
                    color: AppColors.kWhiteColor.withAlpha(70),
                    borderRadius: BorderRadius.circular(35.r),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.r),
                      image: DecorationImage(
                        image: AssetImage(AppAssets.kAbout),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20.h),
              Center(
                child: FadeInUp(
                  controller: (controller) => controller = controller,
                  delay: const Duration(milliseconds: 400),
                  child: Text(
                    "Interior of a Mansion",
                    style: AppTypography.kDidotTitle34.copyWith(
                      color: AppColors.kWhiteColor,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              SizedBox(height: 10.h),
              FadeInUp(
                controller: (controller) => controller = controller,
                delay: const Duration(milliseconds: 500),
                child: Text(
                  "The influencial critic John Ruskin became a close friend, neighbor, and great support of the artist.",
                  style: AppTypography.kLight14
                      .copyWith(color: AppColors.kWhiteColor),
                  textAlign: TextAlign.center,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
