import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:feedu___online_food_app/presentation/search_result_tab_container_page/models/search_result_tab_container_model.dart';
part 'search_result_tab_container_event.dart';
part 'search_result_tab_container_state.dart';

/// A bloc that manages the state of a SearchResultTabContainer according to the event that is dispatched to it.
class SearchResultTabContainerBloc
    extends Bloc<SearchResultTabContainerEvent, SearchResultTabContainerState> {
  SearchResultTabContainerBloc(SearchResultTabContainerState initialState)
      : super(initialState) {
    on<SearchResultTabContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SearchResultTabContainerInitialEvent event,
    Emitter<SearchResultTabContainerState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
  }
}
