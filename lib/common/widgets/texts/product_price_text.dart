import 'package:flutter/material.dart';

class TProductPriceText extends StatelessWidget {
  const TProductPriceText({
    super.key,
    required this.currencySign,
    required this.price,
    required this.maxLines,
    required this.isLarge,
    required this.lineThrough,
  });

  final String currencySign, price;
  final int maxLines;
  final bool isLarge;
  final bool lineThrough;

  @override
  Widget build(BuildContext context) {
    return Text('\$76',
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: Theme.of(context).textTheme.headlineMedium);
  }
}
