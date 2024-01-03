// ignore_for_file: must_be_immutable

part of 'search_result_tab_container_bloc.dart';

/// Represents the state of SearchResultTabContainer in the application.
class SearchResultTabContainerState extends Equatable {
  SearchResultTabContainerState({
    this.searchController,
    this.searchResultTabContainerModelObj,
  });

  TextEditingController? searchController;

  SearchResultTabContainerModel? searchResultTabContainerModelObj;

  @override
  List<Object?> get props => [
        searchController,
        searchResultTabContainerModelObj,
      ];
  SearchResultTabContainerState copyWith({
    TextEditingController? searchController,
    SearchResultTabContainerModel? searchResultTabContainerModelObj,
  }) {
    return SearchResultTabContainerState(
      searchController: searchController ?? this.searchController,
      searchResultTabContainerModelObj: searchResultTabContainerModelObj ??
          this.searchResultTabContainerModelObj,
    );
  }
}
