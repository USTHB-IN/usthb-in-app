import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconly/iconly.dart';
import 'package:usthbin/bloc/navigationcubit.dart';
import 'package:usthbin/constants/const.dart';

class MyNavBar extends StatelessWidget {
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
    return AlertDialog(
        backgroundColor: kWhite,
        content: Container(
          width: 323.sp,
          height: 780.sp,
          padding: EdgeInsets.symmetric(vertical: 15.sp, horizontal: 20.sp),
          child: Column(
            children: [
              Row(
                children: [
                  const Spacer(),
                  IconButton(
                    icon: const Icon(Icons.close),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
              SizedBox(height: 40.sp),
              ListView.separated(
                itemBuilder: (context, index) =>
                    NavBarItem(icon: icons[index], title: titles[index]),
                separatorBuilder: (context, index) => Container(
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(vertical: 31.sp),
                  decoration: BoxDecoration(
                      border: Border.all(
                    color: kDeactivateColor,
                    width: 1.sp,
                    strokeAlign: BorderSide.strokeAlignCenter,
                  )),
                ),
                itemCount: icons.length,
              )
            ],
          ),
        ));
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
                Navigator.pushReplacementNamed(context, '/home');
                break;
              case 'Chat':
                context.read<NavigationCubit>().chat();
                Navigator.pushReplacementNamed(context, '/chat');
                break;
              case 'Homeworks':
                context.read<NavigationCubit>().homeworks();
                Navigator.pushReplacementNamed(context, '/homeworks');
                break;
              case 'Ressources':
                context.read<NavigationCubit>().ressources();
                Navigator.pushReplacementNamed(context, '/ressources');
                break;
              case 'Exams':
                context.read<NavigationCubit>().exams();
                Navigator.pushReplacementNamed(context, '/exams');
                break;
              case 'Profile':
                context.read<NavigationCubit>().profile();
                break;
              default:
                context.read<NavigationCubit>().home();
            }
          },
          child: Row(
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
        );
      },
    );
  }
}
