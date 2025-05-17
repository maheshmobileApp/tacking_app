//Go_router

import 'package:activity_tracker_app/features/dashboard/view/dashboard_view.dart';
import 'package:activity_tracker_app/features/login/view/login_screen.dart';
import 'package:activity_tracker_app/features/signup/view/sign_up_screen.dart';
import 'package:activity_tracker_app/features/splash/view/splash_view.dart';
import 'package:activity_tracker_app/routes/app_route_names.dart';

final routes = {
  AppRouteNames.splash: (context) =>const SplashScreen() ,
  AppRouteNames.login: (context) => const LoginScreen(),
  AppRouteNames.signup: (context) => const SignUpScreen(),
  AppRouteNames.dashboard: (context) => const DashboardView(),
};
