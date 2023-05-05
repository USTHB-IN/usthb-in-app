import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:usthbin/bloc/navigationcubit.dart';
import 'package:usthbin/constants/const.dart';
import 'package:usthbin/shared/services/extension.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavigationCubit, String>(
      builder: (context, state) {
        return SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  state,
                  style: Theme.of(context).textTheme.displayLarge,
                ),
                IconButton(
                  icon: Container(
                    width: 26.sp,
                    height: 26.sp,
                    padding: EdgeInsets.all(1.sp),
                    decoration: BoxDecoration(
                      color: kBlack,
                      borderRadius: kBorderRadius,
                    ),
                    child: const Icon(
                      Icons.menu,
                      color: kWhite,
                    ),
                  ),
                  onPressed: () {
                    context.showNavBar();
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(80.sp);
}
