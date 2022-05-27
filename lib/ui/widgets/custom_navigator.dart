import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tm_reklama/const/app_routes.dart';

class CustomNavigator extends StatelessWidget {
  final Widget initialRoute;
  final int nestedId;

  const CustomNavigator(
      {required this.initialRoute, required this.nestedId, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: Get.nestedKey(nestedId),
      onGenerateRoute: _routes(initialRoute),
    );
  }

  RouteFactory _routes(Widget initialRoute) {
    return (settings) {
      Widget screen;
      switch (settings.name) {
        case AppRoutes.defaultRoute:
          screen = initialRoute;
          break;

        // case AppRoutes.productRoute:
        //   screen = const ProductScreen();
        //   break;

        // case AppRoutes.categoriesRoute:
        //   screen = const CategoriesScreen();
        //   break;

        // case AppRoutes.filterRoute:
        //   screen = const FilterScreen();
        //   break;
        // case AppRoutes.successRoute:
        //   screen = const SuccessScreen();
        //   break;

        // case AppRoutes.checkoutRoute:
        //   screen = const  CheckoutScreen();
        //   break;

        // case AppRoutes.checkoutSummaryRoute:
        //   screen = const PaymentScreen();
        //   break;

        // case AppRoutes.searchRoute:
        //   screen = const SearchScreen();
        //   break;

        // case AppRoutes.gridProductRoute:
        //   screen = SubCategory();
        //   break;

        default:
          return null;
      }
      return GetPageRoute(
          routeName: settings.name,
          page: () => screen,
          transition: Transition.cupertino,
          curve: Curves.fastOutSlowIn);
    };
  }
}
