import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:usthbin/bloc/homeworks/homework_cubit.dart';
import 'package:usthbin/shared/services/dio_helper.dart';
import 'package:usthbin/shared/widgets/loading.dart';

import 'bloc/authbloc/auth_bloc.dart';
import 'constants/const.dart';
import 'constants/theme.dart';
import 'features/auth/bloc/login_bloc.dart';
import 'features/auth/login_screen.dart';
import 'models/user/user.dart';

void main() {
  final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late AuthBloc authBloc;

  @override
  void initState() {
    DioHelper.init();
    authBloc = AuthBloc();
    super.initState();
  }

  @override
  void dispose() {
    authBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => authBloc,
        ),
        BlocProvider(
          create: (context) => LoginBloc(
            authBloc,
          ),
        ),
        BlocProvider(
          create: (context) => HomeworksCubit(),
        )
      ],
      child: ScreenUtilInit(
          designSize: const Size(393, 852),
          minTextAdapt: true,
          splitScreenMode: true,
          builder: (context, child) {
            return MaterialApp(
              title: 'USTHB IN',
              theme: AppTheme.lightTheme,
              debugShowCheckedModeBanner: false,
              routes: {
                LoginScreen.routeName: (context) => const LoginScreen(),
              },
              // home: const LoginScreen(),
              home: BlocBuilder<AuthBloc, AuthState>(
                builder: (context, state) {
                  return state.when(initial: () {
                    return const Center(child: Text('Initial'));
                  }, loading: () {
                    FlutterNativeSplash.remove();
                    return const Loading(
                      color: kBlue,
                    );
                  }, authenticated: (User user) {
                    return const Loading(
                      color: kBlue,
                    );
                  }, unauthenticated: () {
                    return const LoginScreen();
                  }, failure: (String message) {
                    FlutterNativeSplash.remove();
                    return const LoginScreen();
                  });
                },
              ),
            );
          }),
    );
  }
}
