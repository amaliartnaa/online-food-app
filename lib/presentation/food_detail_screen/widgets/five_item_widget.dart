import '../models/five_item_model.dart';
import 'package:feedu___online_food_app/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FiveItemWidget extends StatelessWidget {
  FiveItemWidget(
    this.fiveItemModelObj, {
    Key? key,
    this.onSelectedChipView,
  }) : super(
          key: key,
        );

  FiveItemModel fiveItemModelObj;

  Function(bool)? onSelectedChipView;

  @override
  Widget build(BuildContext context) {
    return RawChip(
      padding: EdgeInsets.symmetric(
        horizontal: 22.h,
        vertical: 12.v,
      ),
      showCheckmark: false,
      labelPadding: EdgeInsets.zero,
      label: Text(
        fiveItemModelObj.small!,
        style: TextStyle(
          color: (fiveItemModelObj.isSelected ?? false)
              ? appTheme.whiteA700
              : appTheme.gray90001,
          fontSize: 24.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        ),
      ),
      selected: (fiveItemModelObj.isSelected ?? false),
      backgroundColor: appTheme.gray50,
      selectedColor: appTheme.greenA700,
      shape: (fiveItemModelObj.isSelected ?? false)
          ? RoundedRectangleBorder(
              side: BorderSide.none,
              borderRadius: BorderRadius.circular(
                30.h,
              ),
            )
          : RoundedRectangleBorder(
              side: BorderSide.none,
              borderRadius: BorderRadius.circular(
                30.h,
              ),
            ),
      onSelected: (value) {
        onSelectedChipView?.call(value);
      },
    );
  }
}
