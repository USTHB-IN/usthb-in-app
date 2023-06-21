import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:usthbin/constants/const.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class ToggleRessourceTypeCubit extends Cubit<bool> {
  ToggleRessourceTypeCubit() : super(false);

  void toggle() {
    emit(!state);
  }

  void on() {
    emit(true);
  }

  void off() {
    emit(false);
  }

  void set(bool value) {
    emit(value);
  }

  void toggleWith(bool value) {
    emit(!value);
  }
}

class RessourceYearCard extends StatelessWidget {
  final String subjectName;
  final Color bgColor;
  final Function onTap;
  const RessourceYearCard(
      {super.key,
      required this.subjectName,
      required this.bgColor,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ToggleRessourceTypeCubit(),
      child: BlocBuilder<ToggleRessourceTypeCubit, bool>(
        builder: (context, state) {
          return Column(
            children: [
              InkWell(
                onTap: () {
                  context.read<ToggleRessourceTypeCubit>().toggle();
                },
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(vertical: 35.sp),
                  decoration: BoxDecoration(
                    color: bgColor,
                    borderRadius: BorderRadius.circular(20.sp),
                  ),
                  child: Center(
                    child: Text(
                      subjectName,
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium!
                          .copyWith(color: kWhite),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10.sp),
              AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  height: state ? 0 : 1,
                  width: double.infinity,
                  color: kLightBlue,
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {

                        },
                        child: Expanded(
                            child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 10.sp, vertical: 5.sp),
                          child: Text(
                            'Cours',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(color: kWhite),
                          ),
                        )),
                      ),
                      SizedBox(width: 10.sp),
                      Expanded(child: Container()),
                      SizedBox(width: 10.sp),
                      Expanded(child: Container()),
                    ],
                  )),
            ],
          );
        },
      ),
    );
  }
}
