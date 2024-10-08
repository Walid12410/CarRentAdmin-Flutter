import 'package:carrent/screen/Authentication/LogIn/LogInPage.dart';
import 'package:carrent/screen/Authentication/Register/SignUpPage.dart';
import 'package:carrent/screen/CarCategoryPage/CategoryPage.dart';
import 'package:carrent/screen/CarDetailsPage/CarDetailsPage.dart';
import 'package:carrent/screen/HomePage/HomePage.dart';
import 'package:carrent/screen/OnBoardingPage/PageView.dart';
import 'package:carrent/screen/ProfilePage/ProfilePage.dart';
import 'package:carrent/screen/PromotionDetailsPage/PromotionDetailsPage.dart';
import 'package:carrent/screen/PromotionPage/PromotionPage.dart';
import 'package:carrent/screen/RentWayPage/RentWayPage.dart';
import 'package:carrent/Widget/NavBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

class AppNavigation {
  AppNavigation._();

  static String initial = "/home";
  static final _rootNavigatorKey = GlobalKey<NavigatorState>();

  static final _shellNavigatorHome =
      GlobalKey<NavigatorState>(debugLabel: 'shellHome');
  static final _shellNavigatorCategory =
      GlobalKey<NavigatorState>(debugLabel: 'shellCategory');
  static final _shellNavigatorRentWay =
      GlobalKey<NavigatorState>(debugLabel: 'shellRentWay');
  static final _shellNavigatorProfile =
      GlobalKey<NavigatorState>(debugLabel: 'shellProfile');
  static final _shellNavigatorCoupons =
      GlobalKey<NavigatorState>(debugLabel: 'shellCoupons');

  static final GoRouter router = GoRouter(
    initialLocation: initial,
    debugLogDiagnostics: true,
    navigatorKey: _rootNavigatorKey,
    routes: [
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) {
          return NavBar(
            navigationShell: navigationShell,
            router: router,
          );
        },
        branches: <StatefulShellBranch>[
          StatefulShellBranch(
            navigatorKey: _shellNavigatorHome,
            routes: <RouteBase>[
              GoRoute(
                path: "/home",
                name: "Home",
                builder: (BuildContext context, GoRouterState state) =>
                    const HomePage(),
              ),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: _shellNavigatorCategory,
            routes: <RouteBase>[
              GoRoute(
                path: "/category",
                name: "Category",
                builder: (BuildContext context, GoRouterState state) =>
                    const CarCategoryPage(),
                // routes: [
                // ],
              ),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: _shellNavigatorRentWay,
            routes: <RouteBase>[
              GoRoute(
                path: "/rentWay",
                name: "RentWay",
                builder: (BuildContext context, GoRouterState state) =>
                    const RentWayPage(),
                // routes: [
                // ],
              ),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: _shellNavigatorProfile,
            routes: <RouteBase>[
              GoRoute(
                path: "/profile",
                name: "Profile",
                builder: (BuildContext context, GoRouterState state) =>
                    const ProfilePage(),
                // routes: [
                // ],
              ),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: _shellNavigatorCoupons,
            routes: <RouteBase>[
              GoRoute(
                path: "/coupons",
                name: "Coupons",
                builder: (BuildContext context, GoRouterState state) =>
                    const PromotionPage(),
                // routes: [
                // ],
              ),
            ],
          ),
        ],
      ),
      GoRoute(
        parentNavigatorKey: _rootNavigatorKey,
        path: '/logIn',
        name: "LogIn",
        builder: (context, state) => LogInPage(
          key: state.pageKey,
        ),
      ),
      GoRoute(
        parentNavigatorKey: _rootNavigatorKey,
        path: '/signUp',
        name: "SignUp",
        builder: (context, state) => SignUpPage(
          key: state.pageKey,
        ),
      ),
      GoRoute(
        parentNavigatorKey: _rootNavigatorKey,
        path: '/onBoarding',
        name: "OnBoarding",
        builder: (context, state) => PageViewScreen(
          key: state.pageKey,
        ),
      ),
      GoRoute(
        parentNavigatorKey: _rootNavigatorKey,
        path: '/promoDetails/:id',
        name: "PromoDetails",
        builder: (context, state) => PromotionDetailsPage(
          key: state.pageKey,
          promoId: state.pathParameters['id']!,
        ),
      ),
      GoRoute(
        parentNavigatorKey: _rootNavigatorKey,
        path: '/carDetails/:id',
        name: "CarDetails",
        builder: (context, state) => CarDetailsPage(
          key: state.pageKey,
          carId: state.pathParameters['id']!,
        ),
      ),
    ],
  );
}
