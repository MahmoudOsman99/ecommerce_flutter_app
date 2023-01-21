import 'package:ecommerce_app/models/product.dart';
import 'package:ecommerce_app/views/widgets/card_widget.dart';
import 'package:flutter/material.dart';

class SaleSection extends StatelessWidget {
  const SaleSection({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Sale',
                    style: Theme.of(context).textTheme.headline4!.copyWith(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  SizedBox(
                    height: size.height * 0.007,
                  ),
                  Text(
                    "Super summer sale",
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          color: Colors.grey.shade500,
                        ),
                  ),
                ],
              ),
              InkWell(
                child: Text(
                  'View all',
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        color: Colors.grey.shade800,
                      ),
                ),
              ),
            ],
          ),

          SizedBox(
            height: 10,
          ),

          SizedBox(
            height: size.height / 2.9,
            child: ListView.separated(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemBuilder: ((context, index) => CardWidget(
                    itemName: dummyProducts[index].name,
                    itemCategory: dummyProducts[index].category!,
                    itemImagePath: dummyProducts[index].imgUrl,
                    itemPrice: dummyProducts[index].price.roundToDouble(),
                  )),
              separatorBuilder: ((context, index) => const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                  )),
              itemCount: dummyProducts.length,
            ),
          ),

          // ...List.generate(
          //   dummyProducts.length,
          //   ((index) => CardWidget(
          //         itemName: dummyProducts[index].name,
          //         itemCategory: dummyProducts[index].category!,
          //         itemImagePath: dummyProducts[index].imgUrl,
          //         itemPrice: dummyProducts[index].price.roundToDouble(),
          //       )),
          // ),
        ],
      ),
    );
  }
}
