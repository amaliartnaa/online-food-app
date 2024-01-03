// ignore_for_file: must_be_immutable

part of 'search_result_container_bloc.dart';

/// Represents the state of SearchResultContainer in the application.
class SearchResultContainerState extends Equatable {
  SearchResultContainerState({this.searchResultContainerModelObj});

  SearchResultContainerModel? searchResultContainerModelObj;

  @override
  List<Object?> get props => [
        searchResultContainerModelObj,
      ];
  SearchResultContainerState copyWith(
      {SearchResultContainerModel? searchResultContainerModelObj}) {
    return SearchResultContainerState(
      searchResultContainerModelObj:
          searchResultContainerModelObj ?? this.searchResultContainerModelObj,
    );
  }
}
