import 'package:ecommerce_app/models/product.dart';
import 'package:ecommerce_app/utilities/app_assets.dart';
import 'package:ecommerce_app/views/widgets/card_widget.dart';
import 'package:ecommerce_app/views/widgets/new_section.dart';
import 'package:ecommerce_app/views/widgets/sale_section.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      height: double.infinity,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: const BouncingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: AlignmentDirectional.bottomStart,
              children: [
                DecoratedBox(
                  decoration: const BoxDecoration(color: Colors.black),
                  child: Opacity(
                    opacity: 0.6,
                    child: Image.asset(AppAssets.topBannerHomeScreenAsset),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 20,
                  ),
                  child: Text(
                    'Street Clothes',
                    style: Theme.of(context).textTheme.headline3!.copyWith(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                ),
              ],
            ),

            SizedBox(
              height: size.height * 0.05,
            ),

            // this is SALE section
            SaleSection(),

            NewSection(),
          ],
        ),
      ),
    );
  }
}
