import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:virtual_exhibition_app/models/tile_model.dart';
import 'package:virtual_exhibition_app/resources/app_colors.dart';
import 'package:virtual_exhibition_app/resources/app_typography.dart';


class LargeTiles extends StatelessWidget {
  final VoidCallback onTap;
  final TileModel tileModel;
  const LargeTiles({
    super.key,
    required this.tileModel,
    required this.onTap,
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Hero(
        tag: tileModel.image,
        child: Container(
          padding: const EdgeInsets.all(20),
          width: 224.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.r),
            image: DecorationImage(
              image: AssetImage(tileModel.image),
              fit: BoxFit.cover,
            ),
          ),
          child: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: 50.h,
                    width: Get.width,
                    decoration: BoxDecoration(
                      color: AppColors.kWhiteColor,
                      borderRadius: BorderRadius.circular(16.r),
                    ),
                    child: Material(
                      color: AppColors.kTransparentColor,
                      child: ListTile(
                        title: Text(
                          tileModel.title,
                          style: AppTypography.kBold14
                              .copyWith(color: AppColors.kBlackColor),
                        ),
                        subtitle: Text(
                          tileModel.subtitle,
                          style: AppTypography.kMedium12.copyWith(
                            color:
                                AppColors.kDarkGreyColor.withValues(alpha: 0.6),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Positioned(
                right: 28,
                bottom: 60,
                child: Container(
                  height: 15.h,
                  padding: EdgeInsets.symmetric(horizontal: 6.w),
                  decoration: BoxDecoration(
                    color: AppColors.kWhiteColor,
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Icon(Icons.star, color: Colors.amber, size: 16),
                      SizedBox(width: 2.w),
                      Text(tileModel.rating, style: AppTypography.kMedium10),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
