import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/five_item_model.dart';
import 'package:feedu___online_food_app/presentation/food_detail_screen/models/food_detail_model.dart';
part 'food_detail_event.dart';
part 'food_detail_state.dart';

/// A bloc that manages the state of a FoodDetail according to the event that is dispatched to it.
class FoodDetailBloc extends Bloc<FoodDetailEvent, FoodDetailState> {
  FoodDetailBloc(FoodDetailState initialState) : super(initialState) {
    on<FoodDetailInitialEvent>(_onInitialize);
    on<UpdateChipViewEvent>(_updateChipView);
  }

  _onInitialize(
    FoodDetailInitialEvent event,
    Emitter<FoodDetailState> emit,
  ) async {
    emit(state.copyWith(
        foodDetailModelObj: state.foodDetailModelObj
            ?.copyWith(fiveItemList: fillFiveItemList())));
  }

  _updateChipView(
    UpdateChipViewEvent event,
    Emitter<FoodDetailState> emit,
  ) {
    List<FiveItemModel> newList =
        List<FiveItemModel>.from(state.foodDetailModelObj!.fiveItemList);
    newList[event.index] =
        newList[event.index].copyWith(isSelected: event.isSelected);
    emit(state.copyWith(
        foodDetailModelObj:
            state.foodDetailModelObj?.copyWith(fiveItemList: newList)));
  }

  List<FiveItemModel> fillFiveItemList() {
    return List.generate(3, (index) => FiveItemModel());
  }
}
