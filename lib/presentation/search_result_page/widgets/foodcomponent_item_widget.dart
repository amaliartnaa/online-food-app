import '../models/foodcomponent_item_model.dart';
import 'package:feedu___online_food_app/core/app_export.dart';
import 'package:feedu___online_food_app/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FoodcomponentItemWidget extends StatelessWidget {
  FoodcomponentItemWidget(
    this.foodcomponentItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  FoodcomponentItemModel foodcomponentItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15.v),
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            width: 204.h,
            margin: EdgeInsets.symmetric(vertical: 10.v),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomImageView(
                  imagePath: foodcomponentItemModelObj.pizzaImage,
                  height: 70.v,
                  width: 68.h,
                  radius: BorderRadius.circular(
                    34.h,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 4.v),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        foodcomponentItemModelObj.pizzaText!,
                        style: CustomTextStyles.titleSmallGray900,
                      ),
                      Text(
                        foodcomponentItemModelObj.deliciousFoodText!,
                        style: theme.textTheme.labelLarge,
                      ),
                      SizedBox(height: 7.v),
                      Text(
                        foodcomponentItemModelObj.priceText!,
                        style: CustomTextStyles.titleSmallGray900SemiBold,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 54.v),
            child: CustomIconButton(
              height: 36.adaptSize,
              width: 36.adaptSize,
              padding: EdgeInsets.all(11.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgClose,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
