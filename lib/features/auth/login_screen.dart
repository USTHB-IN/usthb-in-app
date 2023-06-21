import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:usthbin/constants/const.dart';
import 'package:usthbin/shared/widgets/custom_formtextfield.dart';
import 'package:usthbin/shared/widgets/password_input.dart';

import 'bloc/login_bloc.dart';

class LoginScreen extends StatefulWidget {
  static const String routeName = '/login';
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  Map<String, String> loginData = {};
  final _formKey = GlobalKey<FormState>();
  late LoginBloc _loginBloc;

  void login() {
    FocusManager.instance.primaryFocus?.unfocus();

    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();

      context.read<LoginBloc>().add(LoginEvent.login(
          email: loginData['email']!, password: loginData['password']!));
    }
  }

  @override
  void initState() {
    _loginBloc = context.read<LoginBloc>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        body: SafeArea(
            child: SizedBox(
          height: ScreenUtil().setHeight(852),
          width: ScreenUtil().setWidth(393),
          child: SingleChildScrollView(
              child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 25.sp,
                ),
                Center(
                  child: SvgPicture.asset(
                    '${images}logo.svg',
                    width: ScreenUtil().setWidth(74.04),
                    height: ScreenUtil().setHeight(54.28),
                  ),
                ),
                SvgPicture.asset(
                  '${images}login.svg',
                  width: ScreenUtil().setWidth(393),
                  height: ScreenUtil().setHeight(221),
                ),
                SizedBox(
                  height: 45.sp,
                ),
                Center(
                  child: Text(
                    'Welcome Back',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ),
                SizedBox(
                  height: 36.sp,
                ),
                Padding(
                  padding: kDefaultPadding,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Email or Matricule',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      SizedBox(
                        height: 6.sp,
                      ),
                      CustomInput(
                        keyboardType: TextInputType.emailAddress,
                        validator: validateEmail,
                        hintText: 'email@etu.usthb.dz',
                        data: loginData,
                        mapKey: 'email',
                      ),
                      SizedBox(
                        height: 14.sp,
                      ),
                      Text(
                        'Password',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      SizedBox(
                        height: 6.sp,
                      ),
                      PasswordInput(
                        hintText: 'enter your password',
                        data: loginData,
                        validator: validatePassword,
                      ),
                      SizedBox(
                        height: 76.sp,
                      ),
                      TextButton(
                        onPressed: login,
                        style: Theme.of(context).textButtonTheme.style,
                        child: const Text(
                          'Sign In',
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )),
        )),
      ),
    );
  }
}
