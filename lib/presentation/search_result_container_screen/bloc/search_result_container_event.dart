// ignore_for_file: must_be_immutable

part of 'search_result_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SearchResultContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SearchResultContainerEvent extends Equatable {}

/// Event that is dispatched when the SearchResultContainer widget is first created.
class SearchResultContainerInitialEvent extends SearchResultContainerEvent {
  @override
  List<Object?> get props => [];
}
