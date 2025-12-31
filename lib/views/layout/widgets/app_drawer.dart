import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tranqulity/core/style/app_colors.dart';
import 'package:tranqulity/core/utils/navigate.dart';
import 'package:tranqulity/core/utils/utils.dart';
import 'package:tranqulity/core/widgets/custom_image_widget.dart';
import 'package:tranqulity/views/login/login.dart';
import 'package:tranqulity/views/suggestions.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return Drawer(
      width: 344.w,
      backgroundColor: Colors.white,
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 286.h,
            decoration: BoxDecoration(
              color: Color(0xff284243),
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(25.r),
                bottomLeft: Radius.circular(25.r),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AppImage(
                  imageName: 'drawer_profile.jpg',
                  height: 160.h,
                  width: 160.w,
                ),
                17.ph,
                Text(
                  'Sara',
                  style: theme.titleMedium!.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 16.sp,
                  ),
                ),
                8.ph,
                Text(
                  '01027545631',
                  style: theme.titleMedium!.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 16.sp,
                  ),
                ),
              ],
            ),
          ),
          24.ph,
          Item(title: "About Us", image: "about_us.svg", page: LoginView()),
          16.ph,
          Item(title: "Rate Our App", image: "star.svg", page: LoginView()),
          16.ph,
          Item(
            title: "Suggestions",
            image: "suggestion.svg",
            page: Suggestions(),
          ),
          16.ph,
          Item(
            title: "Enable Easy Login",
            image: "finger.svg",
            page: LoginView(),
            finger: true,
          ),
          16.ph,
          Item(
            title: "Logout",
            image: "log_out.svg",
            page: LoginView(),
            logout: true,
          ),
        ],
      ),
    );
  }
}

class Item extends StatefulWidget {
  const Item({
    super.key,
    this.finger = false,
    required this.title,
    required this.image,
    required this.page,
    this.logout = false,
  });
  final String title, image;
  final Widget page;
  final bool finger;
  final bool logout;

  @override
  State<Item> createState() => _ItemState();
}

class _ItemState extends State<Item> {
  bool activeFinger = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.r),
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              widget.finger ? null : context.nextScreen(widget.page);
            },
            child: Container(
              height: 56,
              width: double.infinity,
              decoration: BoxDecoration(
                color: widget.logout
                    ? Color(0xffFF3A3A).withValues(alpha: .10)
                    : AppColors.primary.withValues(alpha: .10),
                borderRadius: BorderRadius.circular(16.r),
              ),
              child: ListTile(
                leading: AppImage(imageName: widget.image),
                title: Text(
                  widget.title,
                  style: Theme.of(context).textTheme.titleSmall!.copyWith(
                    color: widget.logout ? Color(0xffFF3A3A) : Colors.black,
                  ),
                ),
                trailing: widget.finger
                    ? Switch(
                        activeColor: AppColors.white,
                        value: activeFinger,
                        activeTrackColor: Colors.blueAccent,
                        onChanged: (value) {
                          setState(() {
                            activeFinger = value;
                          });
                        },
                      )
                    : null,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
