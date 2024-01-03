import '../food_detail_screen/widgets/five_item_widget.dart';
import 'bloc/food_detail_bloc.dart';
import 'models/five_item_model.dart';
import 'models/food_detail_model.dart';
import 'package:feedu___online_food_app/core/app_export.dart';
import 'package:feedu___online_food_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:feedu___online_food_app/widgets/app_bar/appbar_trailing_image.dart';
import 'package:feedu___online_food_app/widgets/app_bar/custom_app_bar.dart';
import 'package:feedu___online_food_app/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class FoodDetailScreen extends StatelessWidget {
  const FoodDetailScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<FoodDetailBloc>(
        create: (context) => FoodDetailBloc(
            FoodDetailState(foodDetailModelObj: FoodDetailModel()))
          ..add(FoodDetailInitialEvent()),
        child: FoodDetailScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 30.h, vertical: 13.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("lbl_steak_house".tr,
                          style: CustomTextStyles.headlineLargeGray90001),
                      SizedBox(height: 5.v),
                      SizedBox(
                          width: 191.h,
                          child: Text("msg_our_very_own_smashed".tr,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: theme.textTheme.titleMedium)),
                      SizedBox(height: 46.v),
                      CustomImageView(
                          imagePath: ImageConstant.imgImage12,
                          height: 216.v,
                          width: 315.h),
                      SizedBox(height: 49.v),
                      _buildFoodDetailSize(context),
                      SizedBox(height: 40.v),
                      Text("lbl_quantity".tr,
                          style: CustomTextStyles.titleSmallGray90001),
                      SizedBox(height: 3.v),
                      Row(children: [
                        CustomIconButton(
                            height: 35.adaptSize,
                            width: 35.adaptSize,
                            padding: EdgeInsets.all(7.h),
                            decoration: IconButtonStyleHelper.fillGray,
                            child: CustomImageView(
                                imagePath: ImageConstant.imgIconMinusOutline)),
                        Padding(
                            padding: EdgeInsets.only(
                                left: 16.h, top: 2.v, bottom: 2.v),
                            child: Text("lbl_2".tr,
                                style: theme.textTheme.titleLarge)),
                        Padding(
                            padding: EdgeInsets.only(left: 16.h),
                            child: CustomIconButton(
                                height: 35.adaptSize,
                                width: 35.adaptSize,
                                padding: EdgeInsets.all(8.h),
                                child: CustomImageView(
                                    imagePath:
                                        ImageConstant.imgIconPlusOutline)))
                      ]),
                      SizedBox(height: 5.v)
                    ])),
            bottomNavigationBar: _buildBottom(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 54.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 30.h, top: 16.v, bottom: 16.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgFrame10,
              margin: EdgeInsets.symmetric(horizontal: 10.h, vertical: 16.v))
        ]);
  }

  /// Section Widget
  Widget _buildFoodDetailSize(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_size".tr, style: CustomTextStyles.titleSmallGray90001),
      SizedBox(height: 4.v),
      BlocSelector<FoodDetailBloc, FoodDetailState, FoodDetailModel?>(
          selector: (state) => state.foodDetailModelObj,
          builder: (context, foodDetailModelObj) {
            return Wrap(
                runSpacing: 20.v,
                spacing: 20.h,
                children: List<Widget>.generate(
                    foodDetailModelObj?.fiveItemList.length ?? 0, (index) {
                  FiveItemModel model =
                      foodDetailModelObj?.fiveItemList[index] ??
                          FiveItemModel();
                  return FiveItemWidget(model, onSelectedChipView: (value) {
                    context.read<FoodDetailBloc>().add(
                        UpdateChipViewEvent(index: index, isSelected: value));
                  });
                }));
          })
    ]);
  }

  /// Section Widget
  Widget _buildBottom(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 30.h, right: 30.h, bottom: 30.v),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("lbl_price".tr, style: theme.textTheme.titleSmall),
                Padding(
                    padding: EdgeInsets.only(top: 9.v),
                    child: Text("lbl_idr_49_999".tr,
                        style: theme.textTheme.titleLarge))
              ]),
          Spacer(),
          CustomIconButton(
              height: 60.adaptSize,
              width: 60.adaptSize,
              padding: EdgeInsets.all(18.h),
              decoration: IconButtonStyleHelper.fillGrayTL30,
              child: CustomImageView(
                  imagePath: ImageConstant.imgFavoriteGray90001)),
          Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: CustomIconButton(
                  height: 60.adaptSize,
                  width: 60.adaptSize,
                  padding: EdgeInsets.all(18.h),
                  decoration: IconButtonStyleHelper.fillGreenATL30,
                  child: CustomImageView(
                      imagePath: ImageConstant.imgThumbsUpWhiteA700)))
        ]));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
