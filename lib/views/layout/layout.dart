import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tranqulity/core/style/app_colors.dart';
import 'package:tranqulity/core/utils/utils.dart';
import 'package:tranqulity/core/widgets/custom_image_widget.dart';

class LayoutView extends StatefulWidget {
  const LayoutView({super.key});

  @override
  State<LayoutView> createState() => _LayoutViewState();
}

class _LayoutViewState extends State<LayoutView> {
  final list = [
    Model(
      'chat.svg',
      'chats_active.svg',
      'Chats',
      Scaffold(body: Center(child: Text("Chat"))),
    ),
    Model(
      'quote.svg',
      'quote_active.svg',
      'Quotes',
      Scaffold(body: Center(child: Text("Quote"))),
    ),
    Model(
      'profile.svg',
      'profile_acive.svg',
      'Profile',
      Scaffold(body: Center(child: Text("Profile"))),
    ),
  ];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),

      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          list[currentIndex].label,
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: list[currentIndex].page,
      bottomNavigationBar: Container(
        height: 65.h,
        color: AppColors.primary,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(
            list.length,
            (index) => GestureDetector(
              onTap: () {
                setState(() {
                  currentIndex = index;
                });
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomImageWidget(
                    imageName: currentIndex == index
                        ? list[index].activeImage
                        : list[index].image,
                  ),
                  6.ph,
                  Text(
                    list[index].label,
                    style: Theme.of(context).textTheme.titleSmall!.copyWith(
                      fontSize: 12.sp,
                      color: currentIndex == index
                          ? AppColors.white
                          : const Color(0xffFFFFFF).withValues(alpha: .30),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Model {
  final String image, activeImage, label;
  final Widget page;
  Model(this.image, this.activeImage, this.label, this.page);
}
