// ignore_for_file: must_be_immutable

part of 'search_result_tab_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SearchResultTabContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SearchResultTabContainerEvent extends Equatable {}

/// Event that is dispatched when the SearchResultTabContainer widget is first created.
class SearchResultTabContainerInitialEvent
    extends SearchResultTabContainerEvent {
  @override
  List<Object?> get props => [];
}
