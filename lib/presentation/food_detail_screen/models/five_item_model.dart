// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class is used in the [five_item_widget] screen.
class FiveItemModel extends Equatable {
  FiveItemModel({
    this.small,
    this.isSelected,
  }) {
    small = small ?? "S";
    isSelected = isSelected ?? false;
  }

  String? small;

  bool? isSelected;

  FiveItemModel copyWith({
    String? small,
    bool? isSelected,
  }) {
    return FiveItemModel(
      small: small ?? this.small,
      isSelected: isSelected ?? this.isSelected,
    );
  }

  @override
  List<Object?> get props => [small, isSelected];
}
