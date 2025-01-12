import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:virtual_exhibition_app/models/tile_model.dart';
import 'package:virtual_exhibition_app/resources/app_colors.dart';
import 'package:virtual_exhibition_app/resources/app_typography.dart';

class ImageContainer extends StatelessWidget {
  final TileModel tileModel;
  const ImageContainer({super.key, required this.tileModel});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomLeft,
      children: [
        Hero(
          tag: tileModel.image,
          child: Container(
            height: Get.height * 0.5,
            width: Get.width,
            decoration: BoxDecoration(
              color: AppColors.kGreyColor,
              borderRadius:
                  BorderRadius.vertical(bottom: Radius.circular(70.r)),
              image: DecorationImage(
                image: AssetImage(tileModel.image),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Container(
          height: Get.height * 0.5,
          width: Get.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(70.r)),
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.center,
              colors: [
                AppColors.kBlackColor.withValues(alpha: 0.6),
                AppColors.kTransparentColor,
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 30.h, horizontal: 50.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FadeInUp(
                controller: (controller) => controller = controller,
                delay: const Duration(milliseconds: 300),
                child: Text(
                  tileModel.title,
                  style: AppTypography.kLight24.copyWith(
                    color: AppColors.kWhiteColor,
                  ),
                ),
              ),
              SizedBox(height: 4.h),
              FadeInUp(
                controller: (controller) => controller = controller,
                delay: const Duration(milliseconds: 400),
                child: Row(
                  children: [
                    const Icon(
                      Icons.pin_drop,
                      color: AppColors.kWhiteColor,
                      size: 20,
                    ),
                    SizedBox(width: 6.w),
                    Text(
                      tileModel.subtitle,
                      style: AppTypography.kMedium14.copyWith(
                        color: AppColors.kWhiteColor,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
