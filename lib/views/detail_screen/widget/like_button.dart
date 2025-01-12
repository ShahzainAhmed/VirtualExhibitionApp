import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';
import 'package:virtual_exhibition_app/resources/app_colors.dart';

class FavoriteButton extends StatelessWidget {
  const FavoriteButton({super.key});

  @override
  Widget build(BuildContext context) {
    return LikeButton(
      padding: EdgeInsets.zero,
      size: 20,
      circleColor: const CircleColor(
        start: AppColors.kBlackColor,
        end: AppColors.kBlackColor,
      ),
      bubblesColor: const BubblesColor(
        dotPrimaryColor: AppColors.kBlackColor,
        dotSecondaryColor: AppColors.kBlackColor,
      ),
      likeBuilder: (bool isLiked) {
        return Icon(
          isLiked ? Icons.favorite_rounded : Icons.favorite_outline,
          color: isLiked ? AppColors.kBlackColor : AppColors.kBlackColor,
          size: 24,
        );
      },
    );
  }
}
