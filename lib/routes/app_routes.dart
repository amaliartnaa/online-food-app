import 'package:flutter/material.dart';
import 'package:feedu___online_food_app/presentation/search_result_container_screen/search_result_container_screen.dart';
import 'package:feedu___online_food_app/presentation/food_detail_screen/food_detail_screen.dart';
import 'package:feedu___online_food_app/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String searchResultPage = '/search_result_page';

  static const String searchResultTabContainerPage =
      '/search_result_tab_container_page';

  static const String searchResultContainerScreen =
      '/search_result_container_screen';

  static const String foodDetailScreen = '/food_detail_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        searchResultContainerScreen: SearchResultContainerScreen.builder,
        foodDetailScreen: FoodDetailScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: SearchResultContainerScreen.builder
      };
}
