import 'package:flutter/material.dart';
import 'package:ahkeely/core/resources/color_manager.dart';
import 'package:ahkeely/features/onBoarding/onboarding_screen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class MyPageIndicator extends StatelessWidget {
  const MyPageIndicator({Key? key, required this.boardController})
      : super(key: key);
  final PageController boardController;

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: boardController,
      count: boardings.length,
      effect: SlideEffect(
          spacing: 5.0,
          radius: 4.0,
          // expansionFactor: 2,
          dotWidth: 18,
          dotHeight: 6.0,
          strokeWidth: 1.5,
          dotColor: ColorManager.grey,
          activeDotColor: ColorManager.trible),
    );
  }
}
