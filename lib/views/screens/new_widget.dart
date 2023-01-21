import 'package:ecommerce_app/views/widgets/card_widget.dart';
import 'package:flutter/material.dart';
import '../../utilities/app_assets.dart';

class NewWidget extends StatelessWidget {
  const NewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(),
      body: const Center(
        child: CardWidget(
          itemDiscount: 50,
          itemPrice: 120,
          itemCategory: 'Dorothy Perkines',
          itemName: 'Evening Dress',
          starRatingCount: 5,
          itemImagePath: AppAssets.topBannerHomeScreenAsset,
          ratingCount: 13,
        ),
      ),
    );
  }
}
