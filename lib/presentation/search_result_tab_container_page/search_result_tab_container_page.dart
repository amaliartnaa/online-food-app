import 'bloc/search_result_tab_container_bloc.dart';
import 'models/search_result_tab_container_model.dart';
import 'package:feedu___online_food_app/core/app_export.dart';
import 'package:feedu___online_food_app/presentation/search_result_page/search_result_page.dart';
import 'package:feedu___online_food_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:feedu___online_food_app/widgets/app_bar/appbar_trailing_image.dart';
import 'package:feedu___online_food_app/widgets/app_bar/custom_app_bar.dart';
import 'package:feedu___online_food_app/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class SearchResultTabContainerPage extends StatefulWidget {
  const SearchResultTabContainerPage({Key? key})
      : super(
          key: key,
        );

  @override
  SearchResultTabContainerPageState createState() =>
      SearchResultTabContainerPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<SearchResultTabContainerBloc>(
      create: (context) =>
          SearchResultTabContainerBloc(SearchResultTabContainerState(
        searchResultTabContainerModelObj: SearchResultTabContainerModel(),
      ))
            ..add(SearchResultTabContainerInitialEvent()),
      child: SearchResultTabContainerPage(),
    );
  }
}

class SearchResultTabContainerPageState
    extends State<SearchResultTabContainerPage> with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 5.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.h),
                child: BlocSelector<SearchResultTabContainerBloc,
                    SearchResultTabContainerState, TextEditingController?>(
                  selector: (state) => state.searchController,
                  builder: (context, searchController) {
                    return CustomSearchView(
                      controller: searchController,
                      hintText: "msg_search_your_favorite".tr,
                    );
                  },
                ),
              ),
              SizedBox(height: 29.v),
              _buildTabview(context),
              SizedBox(
                height: 533.v,
                child: TabBarView(
                  controller: tabviewController,
                  children: [
                    SearchResultPage(),
                    SearchResultPage(),
                    SearchResultPage(),
                    SearchResultPage(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 54.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgMegaphone,
        margin: EdgeInsets.only(
          left: 30.h,
          top: 16.v,
          bottom: 16.v,
        ),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgThumbsUp,
          margin: EdgeInsets.symmetric(
            horizontal: 30.h,
            vertical: 16.v,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return Container(
      height: 24.v,
      width: 315.h,
      child: TabBar(
        controller: tabviewController,
        labelPadding: EdgeInsets.zero,
        labelColor: appTheme.greenA700,
        labelStyle: TextStyle(
          fontSize: 14.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w600,
        ),
        unselectedLabelColor: appTheme.gray500,
        unselectedLabelStyle: TextStyle(
          fontSize: 14.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        ),
        indicatorColor: appTheme.greenA700,
        tabs: [
          Tab(
            child: Text(
              "lbl_fast_food".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_desert".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_drinks".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_snacks".tr,
            ),
          ),
        ],
      ),
    );
  }
}
