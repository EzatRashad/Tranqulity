import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tranqulity/core/style/app_colors.dart';
import 'package:tranqulity/core/utils/navigate.dart';
import 'package:tranqulity/core/utils/utils.dart';
import 'package:tranqulity/core/widgets/custom_image_widget.dart';
import 'package:tranqulity/views/login/login.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  late PageController pageController;
  int currentPage = 0;

  final List<Map<String, String>> onboardingData = [
    {
      "image": "onborading_1.jpg",
      "title": "Feel Free",
      "subTitle":
          "because I'm the friendly chatbot here to assist you with anything you need.",
    },
    {
      "image": "onborading_2.jpg",
      "title": "Ask For Anything",
      "subTitle":
          "I'm your friendly neighborhood chatbot ready to assist you with any questions or concerns.",
    },
    {
      "image": "onborading_3.jpg",
      "title": "Your Secert is Save",
      "subTitle": "Our platform prioritizes your privacy and security",
    },
  ];

  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      setState(() {
        currentPage = pageController.page!.round();
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;

    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: pageController,
              itemCount: onboardingData.length,
              itemBuilder: (context, index) {
                final item = onboardingData[index];
                return Column(
                  children: [
                    CustomImageWidget(
                      width: double.infinity,
                      height: 600.h,
                      imageName: item["image"]!,
                    ),
                    20.ph,
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12.0.w),
                      child: Column(
                        
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(item["title"]!, style: theme.titleLarge),
                          24.ph,
                          Text(
                            item["subTitle"]!,
                            style: theme.titleSmall!.copyWith(fontSize: 22.sp),
                            textAlign: TextAlign.left,
                          ),
                        ],
                      ),
                    )
                  ],
                );
              },
            ),
          ),
    
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
             children: [
              12.pw,
              GestureDetector(
              onTap: () {
                 context.nextScreen(const Login(), replacment: true);
              },
              child: Text( "Skip", style: theme.titleSmall)),
              const Spacer(),
              GestureDetector(
                onTap: () {
                  if (currentPage == onboardingData.length - 1) {
                    context.nextScreen(const Login(), replacment: true);
                  } else {
                    pageController.nextPage(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeIn,
                    );
                  }
                },
                child: Container(
                  height: 60.h,
                  width:  50.w,
                   decoration: BoxDecoration(
                    color: AppColors.primary,
                    shape: BoxShape.circle
                  ),
                  child: Center(
                    child: CustomImageWidget(imageName: "arrow.svg")
                  ),
                ),
              ),
              12.pw,
            ],
          ),
    
          50.ph,
        ],
      ),
    );
  }
}
