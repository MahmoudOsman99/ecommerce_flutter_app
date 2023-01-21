import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import '../../utilities/app_assets.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({
    super.key,
    required this.itemName,
    required this.itemCategory,
    required this.itemImagePath,
    required this.itemPrice,
    this.itemDiscount = 0,
    this.ratingCount = 0,
    this.starRatingCount = 0,
  });

  final String itemName;
  final String itemCategory;
  final String itemImagePath;
  final double itemDiscount;
  final double itemPrice;
  final int ratingCount;
  final double starRatingCount;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return DecoratedBox(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: SizedBox(
        width: size.width / 2.7,
        height: size.height / 2.9,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              width: size.width / 2.7,
              height: size.height / 4,
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      itemImagePath,
                      width: double.infinity,
                      height: size.height / 4.5,
                      fit: BoxFit.cover,
                    ),
                  ),
                  if (itemDiscount > 0)
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 10,
                      ),
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          color: Theme.of(context).primaryColor,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 5,
                          ),
                          child: Text(
                            '%${itemDiscount.round()}',
                            style:
                                Theme.of(context).textTheme.bodySmall!.copyWith(
                                      color: Colors.white,
                                    ),
                          ),
                        ),
                      ),
                    ),
                  Align(
                    alignment: AlignmentDirectional.bottomEnd,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 2,
                            offset: Offset(0, 1),
                          )
                        ],
                      ),
                      child: CircleAvatar(
                        radius: 17,
                        backgroundColor: Colors.white,
                        child: InkWell(
                          onTap: () => debugPrint('hhhh'),
                          child: Icon(
                            Icons.favorite_border,
                            size: 25,
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                ...List.generate(
                  starRatingCount.toInt(),
                  (index) {
                    return const Icon(
                      Icons.star,
                      size: 17,
                      color: Colors.amber,
                    );
                  },
                ),
                Text(
                  '($ratingCount)',
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        color: Colors.grey,
                        fontSize: 10,
                      ),
                ),
              ],
            ),
            SizedBox(
              height: size.height * 0.004,
            ),
            Text(
              itemCategory,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.bodyText2!.copyWith(
                    color: Colors.grey,
                    fontSize: 10,
                  ),
            ),
            SizedBox(
              height: size.height * 0.003,
            ),
            Text(
              itemName,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.bodyText2!.copyWith(
                    fontWeight: FontWeight.bold,
                    // fontSize: 14,
                  ),
            ),
            SizedBox(
              height: size.height * 0.003,
            ),
            Row(
              children: [
                if (itemDiscount > 0)
                  Text(
                    '$itemPrice\$',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          color: Colors.grey,
                          fontSize: 15,
                          decoration: TextDecoration.lineThrough,
                        ),
                  ),
                if (itemDiscount > 0)
                  const SizedBox(
                    width: 5,
                  ),
                Text(
                  '${itemPrice - (itemPrice * itemDiscount / 100)}\$',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        color: Theme.of(context).primaryColor,
                        fontSize: 15,
                      ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
