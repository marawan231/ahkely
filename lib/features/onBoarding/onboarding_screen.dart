import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ahkeely/core/navigator/named_routes.dart';
import 'package:ahkeely/core/navigator/navigator.dart';
import 'package:ahkeely/core/resources/assets_manager.dart';
import 'package:ahkeely/core/resources/color_manager.dart';
import 'package:ahkeely/features/onBoarding/data/board_item.dart';
import 'package:ahkeely/features/onBoarding/widgets/my_page_indicator.dart';
import 'package:ahkeely/features/onBoarding/widgets/onboarding_button.dart';
import 'package:lottie/lottie.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  PageController boardController = PageController();
  bool isLast = false;

  Widget _buildOnBoardItem(BoardItem boardItem, context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          flex: 5,
          child: boardItem.image,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * .02,
        ),
        Expanded(
          child: Text(
            overflow: TextOverflow.visible,
            boardItem.title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: ColorManager.white,
              fontFamily: 'Familiar Pro',
              fontWeight: FontWeight.w500,
              fontSize: 25,
            ),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * .02,
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * .05),
            child: Text(
              boardItem.subTitle,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: ColorManager.white,
                fontFamily: 'Familiar Pro',
                fontSize: 14,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
        ),
      ],
    );
  }

  void _goToLoginScreen() {
    Go.toNamed(NamedRoutes.register);
  }

  Widget _buildTitle() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: RichText(
        text: const TextSpan(children: [
          TextSpan(
            text: 'ahkely',
            style: TextStyle(
              color: ColorManager.trible,
              fontFamily: 'Familiar Pro',
              fontSize: 40,
            ),
          ),
        ]),
      ),
    );
  }

  Widget _buildBoradingItem() {
    return Expanded(
      flex: 2,
      child: PageView.builder(
        onPageChanged: (index) {
          if (index == boardings.length) {
            setState(() {
              isLast = true;
              _goToLoginScreen();
            });
          }
        },
        controller: boardController,
        itemCount: boardings.length,
        itemBuilder: (context, index) =>
            _buildOnBoardItem(boardings[index], context),
      ),
    );
  }

  Widget _buildBottomText(context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Don\'t have an account?',
          style: TextStyle(
            color: ColorManager.white,
            fontWeight: FontWeight.w600,
            fontFamily: 'Lato',
            fontSize: 18,
            // fontWeight: FontWeightManager.regular,
          ),
        ),
        TextButton(
          onPressed: () {
            // Go.offNamed(NamedRoutes.register);
            // Navigator.pushNamed(context, Routes.registerRoute);
          },
          child: Text(
            'Sign up',
            style: TextStyle(
              color: Colors.blue.shade900,
              fontWeight: FontWeight.w600,
              fontFamily: 'Lato',
              fontSize: 18,
              // fontWeight: FontWeightManager.regular,
            ),
          ),
        )
      ],
    );
  }

  Widget _buildBody(context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _buildTitle(),
          _buildBoradingItem(),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MyPageIndicator(boardController: boardController),
                OnBoardingButton(
                  onPressed: () {
                    _goToLoginScreen();
                  },
                ),
                // _buildBottomText(context),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorManager.primary,
        appBar: AppBar(
          systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: ColorManager.white,
            statusBarBrightness: Brightness.dark,
          ),
          backgroundColor: ColorManager.primary,
          elevation: 0.0,
          // actions: [
          //   RoundedButton(
          //     onPressed: () {
          //       _goToLoginScreen();
          //     },
          //   ),
          // ],
        ),
        body: _buildBody(context),
      ),
    );
  }
}

List<BoardItem> boardings = [
  BoardItem(Lottie.asset(AssetsManager.onBoarding1), 'مرحبًا بك ahkely!',
      'استعد للانغماس في عوالم الخيال والمغامرة حيث تتحول الكلمات إلى قصص مثيرة ومشوقة.'),
  BoardItem(
      Lottie.asset(AssetsManager.onBoarding2),
      "اكتشف القدرات اللامحدودة للخيال!",
      'اصطحب القراء في رحلة استكشافية مثيرة واصنع قصصًا تبهج القلوب وتشد الأنفاس.'),
  BoardItem(
      Lottie.asset(AssetsManager.onBoarding3),
      'استمتع بالقصص السلسة والمثيرة!',
      'اترك للقارئ تغوص في عوالم الخيال المبهجة والمليئة بالمفاجآت والتحديات.')
];
