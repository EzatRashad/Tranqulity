import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tranqulity/core/style/app_colors.dart';
import 'package:tranqulity/core/utils/navigate.dart';
import 'package:tranqulity/core/widgets/custom_image_widget.dart';
import 'package:tranqulity/views/onboarding_view.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 600),
    );

    _scaleAnimation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeOutBack,
    );

    _controller.forward();

    Future.delayed(const Duration(seconds: 1), () {
      context.nextScreen(const OnboardingView(), replacment: true);
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Center(
        child: ScaleTransition(
          scale: Tween<double>(begin: 0.85, end: 1.0).animate(_scaleAnimation),
          child: Center(
            child: CustomImageWidget(
              imageName: "tranquiliey.jpg",
              width: 250.w,
             ),
          ),
        ),
      ),
    );
  }
}
