import '../../../core/app_export.dart';

/// This class is used in the [foodcomponent_item_widget] screen.
class FoodcomponentItemModel {
  FoodcomponentItemModel({
    this.pizzaImage,
    this.pizzaText,
    this.deliciousFoodText,
    this.priceText,
    this.id,
  }) {
    pizzaImage = pizzaImage ?? ImageConstant.imgImage3;
    pizzaText = pizzaText ?? "Pizza";
    deliciousFoodText = deliciousFoodText ?? "Delicious food 2020";
    priceText = priceText ?? "IDR 49.999";
    id = id ?? "";
  }

  String? pizzaImage;

  String? pizzaText;

  String? deliciousFoodText;

  String? priceText;

  String? id;
}
