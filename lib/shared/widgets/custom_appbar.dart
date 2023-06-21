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
    final ModalRoute<dynamic>? parentRoute = ModalRoute.of(context);

    return BlocBuilder<NavigationCubit, String>(
      builder: (context, state) {
        return SafeArea(
          child: Padding(
            padding: kDefaultPadding,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                parentRoute?.canPop ?? false
                    ? IconButton(
                        icon: Container(
                          padding: EdgeInsets.all(5.sp),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: kBlack,
                            borderRadius: kBorderRadius,
                          ),
                          child: Icon(
                            Icons.arrow_back_ios_new_rounded,
                            size: 15.sp,
                            color: kWhite,
                          ),
                        ),
                        onPressed: () {
                          context.pop();
                        },
                      )
                    : Text(
                        state,
                        style: Theme.of(context).textTheme.displayLarge,
                      ),
                IconButton(
                  icon: Container(
                    padding: EdgeInsets.all(5.sp),
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
