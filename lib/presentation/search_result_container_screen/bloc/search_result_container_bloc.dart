import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:feedu___online_food_app/presentation/search_result_container_screen/models/search_result_container_model.dart';
part 'search_result_container_event.dart';
part 'search_result_container_state.dart';

/// A bloc that manages the state of a SearchResultContainer according to the event that is dispatched to it.
class SearchResultContainerBloc
    extends Bloc<SearchResultContainerEvent, SearchResultContainerState> {
  SearchResultContainerBloc(SearchResultContainerState initialState)
      : super(initialState) {
    on<SearchResultContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SearchResultContainerInitialEvent event,
    Emitter<SearchResultContainerState> emit,
  ) async {
    Future.delayed(const Duration(milliseconds: 3000), () {
      NavigatorService.popAndPushNamed(
        AppRoutes.foodDetailScreen,
      );
    });
  }
}
