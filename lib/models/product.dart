import 'package:ecommerce_app/utilities/app_assets.dart';

class Product {
  final int id;
  final String name;
  final int price;
  final double? discountedValue;
  final String imgUrl;
  final String? category;
  final int? ratingValue;

  Product({
    required this.id,
    required this.name,
    required this.price,
    this.discountedValue = 0,
    required this.imgUrl,
    this.category = 'Other',
    this.ratingValue = 0,
  });
}

List<Product> dummyProducts = [
  ...List.generate(
    10,
    (index) => Product(
      id: index,
      name: 'product $index',
      price: 300,
      imgUrl: AppAssets.topBannerHomeScreenAsset,
      category: 'Clothes',
      discountedValue: 20,
      ratingValue: 10,
    ),
  ),
];
