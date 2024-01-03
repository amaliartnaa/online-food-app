// ignore_for_file: must_be_immutable

part of 'food_detail_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///FoodDetail widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class FoodDetailEvent extends Equatable {}

/// Event that is dispatched when the FoodDetail widget is first created.
class FoodDetailInitialEvent extends FoodDetailEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing ChipView selection
class UpdateChipViewEvent extends FoodDetailEvent {
  UpdateChipViewEvent({
    required this.index,
    this.isSelected,
  });

  int index;

  bool? isSelected;

  @override
  List<Object?> get props => [
        index,
        isSelected,
      ];
}
