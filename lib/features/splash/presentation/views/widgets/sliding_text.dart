import 'package:bookly_app/core/theming/app_theme.dart';
import 'package:flutter/material.dart';

class SlidingText extends StatelessWidget {
  final Animation<Offset> slideAnimation;
  const SlidingText({super.key, required this.slideAnimation});

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: slideAnimation,
      builder: (context, _) {
        return SlideTransition(
          position: slideAnimation,
          child: Text(
            "Read Free Books",
            style: AppTheme.font14LightGreyRegular,
            textAlign: TextAlign.center,
          ),
        
        );
      },
    );
  }
}
