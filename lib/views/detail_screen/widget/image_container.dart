import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:virtual_exhibition_app/models/tile_model.dart';
import 'package:virtual_exhibition_app/resources/app_colors.dart';

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
            height: Get.height * 0.36,
            width: Get.width,
            decoration: BoxDecoration(
              color: AppColors.kGreyColor,
              image: DecorationImage(
                image: AssetImage(tileModel.image),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
