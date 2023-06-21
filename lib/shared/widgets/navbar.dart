import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconly/iconly.dart';
import 'package:usthbin/bloc/navigationcubit.dart';
import 'package:usthbin/constants/const.dart';
import 'package:usthbin/shared/services/extension.dart';

class MyNavBar extends StatelessWidget {
  static const String routeName = '/nav';
  const MyNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> titles = [
      'Home',
      'Chat',
      'Homeworks',
      'Ressources',
      'Exams',
      'Profile',
    ];
    final List<IconData> icons = [
      IconlyBold.home,
      IconlyBold.chat,
      Icons.quiz_rounded,
      Icons.folder_copy_rounded,
      Icons.assignment_turned_in,
      IconlyBold.profile,
    ];
    return Container(
      width: double.infinity,
      height: 780.sp,
      padding: EdgeInsets.symmetric(vertical: 15.sp, horizontal: 20.sp),
      child: AlertDialog(
        backgroundColor: kWhite,
        shape: RoundedRectangleBorder(borderRadius: kBorderRadius),
        content: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                const Spacer(),
                InkWell(
                  onTap: () => context.pop(),
                  child: Container(
                    width: 26.sp,
                    height: 26.sp,
                    decoration: BoxDecoration(
                        color: kBlack, borderRadius: kBorderRadius),
                    child: Icon(
                      Icons.close_rounded,
                      color: kWhite,
                      size: 17.sp,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 50.sp),
            Expanded(
              child: ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) =>
                    NavBarItem(icon: icons[index], title: titles[index]),
                separatorBuilder: (context, index) => Container(
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(vertical: 25.sp),
                  decoration: BoxDecoration(
                      border: Border.all(
                    color: kDeactivateColor.withOpacity(.2),
                    width: 1.sp,
                    strokeAlign: BorderSide.strokeAlignCenter,
                  )),
                ),
                itemCount: icons.length,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class NavBarItem extends StatelessWidget {
  final IconData icon;
  final String title;
  const NavBarItem({super.key, required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavigationCubit, String>(
      builder: (context, state) {
        return InkWell(
          onTap: () {
            switch (title) {
              case 'Home':
                context.read<NavigationCubit>().home();
                context.pushNamedAndRemoveUntil('/home');
                break;
              case 'Chat':
                context.read<NavigationCubit>().chat();
                context.pushNamedAndRemoveUntil('/chat');
                break;
              case 'Homeworks':
                context.read<NavigationCubit>().homeworks();
                context.pushNamedAndRemoveUntil('/homeworks');
                break;
              case 'Ressources':
                context.read<NavigationCubit>().ressources();
                context.pushNamedAndRemoveUntil('/ressources');
                break;
              case 'Exams':
                context.read<NavigationCubit>().exams();
                context.pushNamedAndRemoveUntil('/exams');
                break;
              case 'Profile':
                context.read<NavigationCubit>().profile();
                context.pushReplacementNamed('/profile');
                break;
              default:
                context.read<NavigationCubit>().home();
                context.pushNamedAndRemoveUntil('/home');
            }
          },
          child: Padding(
            padding: EdgeInsets.all(10.sp).copyWith(left: 50.sp),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  icon,
                  color: state == title ? kBlue : kDeactivateColor,
                ),
                SizedBox(width: 10.sp),
                Text(
                  title,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
