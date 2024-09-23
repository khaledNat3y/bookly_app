import 'package:bookly_app/core/helpers/spacing.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/core/utils/constants.dart';
import 'package:bookly_app/features/splash/presentation/views/widgets/sliding_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../home/presentaion/views/home_view.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slideAnimation;

  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
    ///Go To Home Screen
    navigateToHome();
  }
  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsData.logo),
        verticalSpace(5),
        SlidingText(slideAnimation: slideAnimation,),
      ],
    );
  }
  void initSlidingAnimation() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    slideAnimation = Tween<Offset>(begin: const Offset(0, 3), end: Offset.zero).animate(animationController);

    animationController.forward();
  }
  void navigateToHome() {
    Future.delayed(const Duration(seconds: 3),(){
      Get.to(() => const HomeView(), transition: Transition.fade, duration: kTransitionDuration);
    });
  }
}


