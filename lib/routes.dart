import 'package:get/get.dart';
import '/screens/splash.dart';
import '/screens/auth/authScreen.dart';
import '/screens/dashboard/basicDashboardScreen.dart';
import '/screens/city/table/cityTableScreen.dart';
import '/screens/market/table/marketTableScreen.dart';
import '/screens/tapri/table/tapriTableScreen.dart';
import '/screens/customer/table/customerTableScreen.dart';

AppRoutes() => [
      GetPage(
        name: '/splash',
        page: () => SplashScreen(),
        transition: Transition.leftToRightWithFade,
        transitionDuration: const Duration(milliseconds: 500),
      ),
      GetPage(
        name: '/auth',
        page: () => AuthScreen(),
        transition: Transition.leftToRightWithFade,
        transitionDuration: const Duration(milliseconds: 500),
      ),
      GetPage(
        name: '/dashboard',
        page: () => BasicDashboardScreen(),
        transition: Transition.leftToRightWithFade,
        transitionDuration: const Duration(milliseconds: 500),
      ),
      GetPage(
        name: '/cityTable',
        page: () => CityTableScreen(),
        transition: Transition.leftToRightWithFade,
        transitionDuration: const Duration(milliseconds: 500),
      ),
      GetPage(
        name: '/marketTable',
        page: () => MarketTableScreen(),
        transition: Transition.leftToRightWithFade,
        transitionDuration: const Duration(milliseconds: 500),
      ),
      GetPage(
        name: '/tapriTable',
        page: () => TapriTableScreen(),
        transition: Transition.leftToRightWithFade,
        transitionDuration: const Duration(milliseconds: 500),
      ),
      GetPage(
        name: '/customerTable',
        page: () => CustomerTableScreen(),
        transition: Transition.leftToRightWithFade,
        transitionDuration: const Duration(milliseconds: 500),
      )
    ];
