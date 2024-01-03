// ignore_for_file: must_be_immutable, unused_import, empty_constructor_bodies

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'foodcomponent_item_model.dart';

/// This class defines the variables used in the [search_result_page],
/// and is typically used to hold data that is passed between different parts of the application.
class SearchResultModel extends Equatable {
  SearchResultModel({this.foodcomponentItemList = const []}) {}

  List<FoodcomponentItemModel> foodcomponentItemList;

  SearchResultModel copyWith(
      {List<FoodcomponentItemModel>? foodcomponentItemList}) {
    return SearchResultModel(
      foodcomponentItemList:
          foodcomponentItemList ?? this.foodcomponentItemList,
    );
  }

  @override
  List<Object?> get props => [foodcomponentItemList];
}
