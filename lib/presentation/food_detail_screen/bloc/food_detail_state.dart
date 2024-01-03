// ignore_for_file: must_be_immutable

part of 'food_detail_bloc.dart';

/// Represents the state of FoodDetail in the application.
class FoodDetailState extends Equatable {
  FoodDetailState({this.foodDetailModelObj});

  FoodDetailModel? foodDetailModelObj;

  @override
  List<Object?> get props => [
        foodDetailModelObj,
      ];
  FoodDetailState copyWith({FoodDetailModel? foodDetailModelObj}) {
    return FoodDetailState(
      foodDetailModelObj: foodDetailModelObj ?? this.foodDetailModelObj,
    );
  }
}
