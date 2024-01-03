import 'bloc/search_result_container_bloc.dart';
import 'models/search_result_container_model.dart';
import 'package:feedu___online_food_app/core/app_export.dart';
import 'package:feedu___online_food_app/presentation/search_result_tab_container_page/search_result_tab_container_page.dart';
import 'package:feedu___online_food_app/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class SearchResultContainerScreen extends StatelessWidget {
  SearchResultContainerScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<SearchResultContainerBloc>(
        create: (context) => SearchResultContainerBloc(
            SearchResultContainerState(
                searchResultContainerModelObj: SearchResultContainerModel()))
          ..add(SearchResultContainerInitialEvent()),
        child: SearchResultContainerScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchResultContainerBloc, SearchResultContainerState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: Navigator(
                  key: navigatorKey,
                  initialRoute: AppRoutes.searchResultTabContainerPage,
                  onGenerateRoute: (routeSetting) => PageRouteBuilder(
                      pageBuilder: (ctx, ani, ani1) =>
                          getCurrentPage(context, routeSetting.name!),
                      transitionDuration: Duration(seconds: 0))),
              bottomNavigationBar: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.h),
                  child: _buildBottomBar(context))));
    });
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Frame6:
        return AppRoutes.searchResultTabContainerPage;
      case BottomBarEnum.Favorite:
        return "/";
      case BottomBarEnum.Lock:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(
    BuildContext context,
    String currentRoute,
  ) {
    switch (currentRoute) {
      case AppRoutes.searchResultTabContainerPage:
        return SearchResultTabContainerPage();
      default:
        return DefaultWidget();
    }
  }
}
