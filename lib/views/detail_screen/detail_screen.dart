import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:virtual_exhibition_app/models/tile_model.dart';
import 'package:virtual_exhibition_app/resources/app_colors.dart';
import 'package:virtual_exhibition_app/resources/app_typography.dart';
import 'package:virtual_exhibition_app/views/detail_screen/widget/bottom_sheet_widget.dart';
import 'package:virtual_exhibition_app/views/detail_screen/widget/image_container.dart';
import 'package:virtual_exhibition_app/views/detail_screen/widget/like_button.dart';
import 'package:virtual_exhibition_app/views/detail_screen/widget/specs_widget.dart';

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
                  backgroundColor: AppColors.kWhiteColor.withValues(alpha: 0.7),
                  child: IconButton(
                    onPressed: () => Get.back(),
                    icon: const Icon(Icons.arrow_back_ios_new),
                  ),
                ),
              ),
              SlideInRight(
                controller: (controller) => controller = controller,
                delay: const Duration(milliseconds: 300),
                child: CircleAvatar(
                  backgroundColor: AppColors.kWhiteColor.withValues(alpha: 0.7),
                  radius: 24,
                  child: const FavoriteButton(),
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
          SizedBox(height: 30.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                FadeInUp(
                  controller: (controller) => controller = controller,
                  delay: const Duration(milliseconds: 500),
                  child: SpecsWidget(
                    title: "Distance",
                    value: "${tileModel.distance}Km",
                  ),
                ),
                FadeInUp(
                  controller: (controller) => controller = controller,
                  delay: const Duration(milliseconds: 800),
                  child: SpecsWidget(
                    title: "Temp",
                    value: "${tileModel.temp}° C",
                  ),
                ),
                FadeInUp(
                  controller: (controller) => controller = controller,
                  delay: const Duration(milliseconds: 1100),
                  child: SpecsWidget(
                    title: "Rating",
                    value: tileModel.rating,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w),
            child: FadeInUp(
              controller: (controller) => controller = controller,
              delay: const Duration(milliseconds: 1200),
              child: Text(
                "Description",
                style: AppTypography.kBold16,
              ),
            ),
          ),
          SizedBox(height: 8.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w),
            child: FadeInUp(
              controller: (controller) => controller = controller,
              delay: const Duration(milliseconds: 1300),
              child: Text(
                tileModel.description,
                style: AppTypography.kLight12
                    .copyWith(color: AppColors.kGreyColor),
              ),
            ),
          ),
          FadeInUp(
            controller: (controller) => controller = controller,
            delay: const Duration(milliseconds: 1400),
            child: BottomSheetWidget(price: "\$${tileModel.price}"),
          )
        ],
      ),
    );
  }
}
