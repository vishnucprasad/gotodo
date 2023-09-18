import 'package:auto_route/auto_route.dart';
import 'package:gotodo/presentation/pages/splash_page/splash_page.dart';
import 'package:gotodo/presentation/pages/signin_page/signin_page.dart';
import 'package:gotodo/presentation/pages/signup_page/signup_page.dart';
import 'package:gotodo/presentation/pages/home_page/home_page.dart';
import 'package:gotodo/presentation/pages/statistics_page/statistics_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes {
    return [
      AutoRoute(
        page: SplashRoute.page,
        initial: true,
      ),
      CustomRoute(
        page: SigninRoute.page,
        transitionsBuilder: TransitionsBuilders.fadeIn,
      ),
      CustomRoute(
        page: SignupRoute.page,
        transitionsBuilder: TransitionsBuilders.fadeIn,
      ),
      CustomRoute(
        page: HomeRoute.page,
        transitionsBuilder: TransitionsBuilders.fadeIn,
      ),
      CustomRoute(
        page: StatisticsRoute.page,
        transitionsBuilder: TransitionsBuilders.fadeIn,
      ),
    ];
  }
}
