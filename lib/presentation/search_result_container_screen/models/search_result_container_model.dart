// ignore_for_file: must_be_immutable, empty_constructor_bodies

import 'package:equatable/equatable.dart';

/// This class defines the variables used in the [search_result_container_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SearchResultContainerModel extends Equatable {
  SearchResultContainerModel() {}

  SearchResultContainerModel copyWith() {
    return SearchResultContainerModel();
  }

  @override
  List<Object?> get props => [];
}
