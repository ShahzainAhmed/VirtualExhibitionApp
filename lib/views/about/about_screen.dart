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
      body: Container(
        height: Get.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppAssets.kAbout2),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              AppColors.kBlackColor.withAlpha(180),
              BlendMode.darken,
            ),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.only(left: 30.w, right: 30.w, top: 140.h),
          child: Column(
            children: [
              Container(
                height: 300.h,
                width: 220.w,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(AppAssets.kAbout),
                    fit: BoxFit.cover, // keeps it covering the entire box
                  ),
                ),
              ),
              SizedBox(height: 20.h),
              Center(
                child: Text(
                  "Interior of a \n Mansion",
                  style: AppTypography.kBold26
                      .copyWith(color: AppColors.kWhiteColor),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 20.h),
              Text(
                "The influencial critic John Ruskin became a close friend, neighbor, and great support of the artist.",
                style: AppTypography.kLight14
                    .copyWith(color: AppColors.kWhiteColor),
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ),
    );
  }
}
