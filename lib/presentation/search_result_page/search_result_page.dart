// ignore_for_file: must_call_super

import '../search_result_page/widgets/foodcomponent_item_widget.dart';
import 'bloc/search_result_bloc.dart';
import 'models/foodcomponent_item_model.dart';
import 'models/search_result_model.dart';
import 'package:feedu___online_food_app/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class SearchResultPage extends StatefulWidget {
  const SearchResultPage({Key? key})
      : super(
          key: key,
        );

  @override
  SearchResultPageState createState() => SearchResultPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<SearchResultBloc>(
      create: (context) => SearchResultBloc(SearchResultState(
        searchResultModelObj: SearchResultModel(),
      ))
        ..add(SearchResultInitialEvent()),
      child: SearchResultPage(),
    );
  }
}

class SearchResultPageState extends State<SearchResultPage>
    with AutomaticKeepAliveClientMixin<SearchResultPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillWhiteA,
          child: Column(
            children: [
              SizedBox(height: 32.v),
              _buildFoodSection(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFoodSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_popular_food".tr,
            style: theme.textTheme.headlineLarge,
          ),
          SizedBox(height: 15.v),
          BlocSelector<SearchResultBloc, SearchResultState, SearchResultModel?>(
            selector: (state) => state.searchResultModelObj,
            builder: (context, searchResultModelObj) {
              return ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (
                  context,
                  index,
                ) {
                  return SizedBox(
                    height: 20.v,
                  );
                },
                itemCount:
                    searchResultModelObj?.foodcomponentItemList.length ?? 0,
                itemBuilder: (context, index) {
                  FoodcomponentItemModel model =
                      searchResultModelObj?.foodcomponentItemList[index] ??
                          FoodcomponentItemModel();
                  return FoodcomponentItemWidget(
                    model,
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
