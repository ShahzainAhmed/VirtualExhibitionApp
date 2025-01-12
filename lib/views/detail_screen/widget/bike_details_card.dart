import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:virtual_exhibition_app/models/tile_model.dart';
import 'package:virtual_exhibition_app/resources/app_colors.dart';
import 'package:virtual_exhibition_app/resources/app_typography.dart';

class BikeDetailsCard extends StatelessWidget {
  final TileModel productTileModel;
  const BikeDetailsCard({super.key, required this.productTileModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.h,
      width: Get.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        color: const Color(0xffeaeaea),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Rating",
                  style: AppTypography.kMedium12
                      .copyWith(color: AppColors.kGreyColor),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      productTileModel.rating,
                      style: AppTypography.kExtraBold14
                          .copyWith(color: AppColors.kBlackColor),
                    ),
                    const Icon(Icons.star, color: Colors.amber),
                  ],
                ),
              ],
            ),
          ),
          VerticalDivider(
            color: AppColors.kGreyColor.withValues(alpha:0.5),
            thickness: 0.3,
            width: 10.w,
            indent: 20,
            endIndent: 20,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Price (PKR)",
                  style: AppTypography.kMedium12
                      .copyWith(color: AppColors.kGreyColor),
                ),
                Text(
                  "productTileModel.price",
                  style: AppTypography.kExtraBold14
                      .copyWith(color: AppColors.kBlackColor),
                ),
              ],
            ),
          ),
          VerticalDivider(
            color: AppColors.kGreyColor.withValues(alpha:0.5),
            thickness: 0.3,
            width: 10.w,
            indent: 20,
            endIndent: 20,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Engine",
                  style: AppTypography.kMedium12
                      .copyWith(color: AppColors.kGreyColor),
                ),
                Text(
                  "productTileModel.engine",
                  style: AppTypography.kExtraBold14
                      .copyWith(color: AppColors.kBlackColor),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
