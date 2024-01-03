// ignore_for_file: must_be_immutable, empty_constructor_bodies

import 'package:equatable/equatable.dart';
import 'five_item_model.dart';

/// This class defines the variables used in the [food_detail_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class FoodDetailModel extends Equatable {
  FoodDetailModel({this.fiveItemList = const []}) {}

  List<FiveItemModel> fiveItemList;

  FoodDetailModel copyWith({List<FiveItemModel>? fiveItemList}) {
    return FoodDetailModel(
      fiveItemList: fiveItemList ?? this.fiveItemList,
    );
  }

  @override
  List<Object?> get props => [fiveItemList];
}
