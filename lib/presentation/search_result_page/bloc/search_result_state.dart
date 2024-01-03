// ignore_for_file: must_be_immutable

part of 'search_result_bloc.dart';

/// Represents the state of SearchResult in the application.
class SearchResultState extends Equatable {
  SearchResultState({this.searchResultModelObj});

  SearchResultModel? searchResultModelObj;

  @override
  List<Object?> get props => [
        searchResultModelObj,
      ];
  SearchResultState copyWith({SearchResultModel? searchResultModelObj}) {
    return SearchResultState(
      searchResultModelObj: searchResultModelObj ?? this.searchResultModelObj,
    );
  }
}
