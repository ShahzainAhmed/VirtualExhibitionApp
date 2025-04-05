import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:virtual_exhibition_app/models/tile_model.dart';
import 'package:virtual_exhibition_app/resources/app_colors.dart';
import 'package:virtual_exhibition_app/resources/app_typography.dart';
import 'package:virtual_exhibition_app/views/detail_screen/widget/image_container.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  late TileModel tileModel;

  @override
  void initState() {
    tileModel = Get.arguments;
    super.initState();
  }

  bool animate = true;
  late AnimationController controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: false,
        automaticallyImplyLeading: false,
        title: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SlideInLeft(
                controller: (controller) => controller = controller,
                delay: const Duration(milliseconds: 300),
                child: CircleAvatar(
                  radius: 24,
                  backgroundColor: AppColors.kBlackColor,
                  child: IconButton(
                    onPressed: () => Get.back(),
                    icon: const Icon(Icons.arrow_back_ios_new,
                        color: AppColors.kWhiteColor),
                  ),
                ),
              ),
              SlideInRight(
                controller: (controller) => controller = controller,
                delay: const Duration(milliseconds: 300),
                child: CircleAvatar(
                  radius: 24,
                  backgroundColor: AppColors.kBlackColor,
                  child: IconButton(
                    onPressed: () => Get.back(),
                    icon: const Icon(Icons.share_outlined,
                        color: AppColors.kWhiteColor),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ImageContainer(tileModel: tileModel),
          SizedBox(height: 24.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 28.w),
            child: FadeInUp(
              controller: (controller) => controller = controller,
              delay: const Duration(milliseconds: 400),
              child: Text(tileModel.title, style: AppTypography.kBold20),
            ),
          ),
          SizedBox(height: 8.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 28.w),
            child: FadeInUp(
              controller: (controller) => controller = controller,
              delay: const Duration(milliseconds: 500),
              child: Text(tileModel.year,
                  style: AppTypography.kMedium16.copyWith(
                    color: AppColors.kDarkGreyColor.withValues(alpha: 0.4),
                    fontStyle: FontStyle.italic,
                  )),
            ),
          ),
          SizedBox(height: 20.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 28.w),
            child: FadeInUp(
              controller: (controller) => controller = controller,
              delay: const Duration(milliseconds: 600),
              child: Text("About the artist", style: AppTypography.kMedium18),
            ),
          ),
          SizedBox(height: 8.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 28.w),
            child: FadeInUp(
              controller: (controller) => controller = controller,
              delay: const Duration(milliseconds: 700),
              child: Text(
                tileModel.description,
                style: AppTypography.kMedium16
                    .copyWith(color: AppColors.kBlackColor.withAlpha(180)),
              ),
            ),
          ),
          SizedBox(height: 20.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 28.w),
            child: FadeInUp(
                controller: (controller) => controller = controller,
                delay: const Duration(milliseconds: 800),
                child: Text(
                  "About the painting",
                  style: AppTypography.kMedium18,
                )),
          ),
          SizedBox(height: 8.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 28.w),
            child: FadeInUp(
              controller: (controller) => controller = controller,
              delay: const Duration(milliseconds: 900),
              child: Text(
                tileModel.description,
                style: AppTypography.kMedium16
                    .copyWith(color: AppColors.kBlackColor.withAlpha(180)),
              ),
            ),
          ),
          // BottomSheetWidget(price: "\$${tileModel.price}")
        ],
      ),
    );
  }
}
