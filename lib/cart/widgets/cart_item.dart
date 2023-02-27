import 'package:amazon_uiclone_app/account/widgets/custom_square_button.dart';
import 'package:amazon_uiclone_app/constants/utils.dart';
import 'package:amazon_uiclone_app/model/product_model.dart';
import 'package:amazon_uiclone_app/widgets/custom_simple_rounded_buttton.dart';
import 'package:flutter/material.dart';

import '../../constants/global_variables.dart';
import '../../widgets/product_info_widget.dart';

class CartItemWidget extends StatelessWidget {
  final ProductModel product;

  const CartItemWidget({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int count = 0;
    Size screenSize = Utils().getScreenSize();
    return Container(
      padding: const EdgeInsets.all(20),
      height: screenSize.height / 2.2,
      width: screenSize.width,
      decoration: const BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom: BorderSide(
            color: Colors.grey,
            width: 1,
          ),
        ),
      ),
      child: Column(
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: screenSize.width / 3,
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: FittedBox(
                      fit: BoxFit.contain,
                      child: Image.network(
                        product.url,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                  height: screenSize.height,
                  child: ProductInformationWidget(
                    productName: product.productName,
                    cost: product.cost,
                    sellerName: product.sellerName,
                  ),
                ),
              ],
            ),
            flex: 3,
          ),
          Expanded(
            child: Row(
              children: [
                CustomSquareButton(
                  child: Icon(
                    Icons.remove,
                  ),
                  onPressed: () {
                    count--;
                  },
                  color: backgroundColor,
                  dimension: 40,
                ),
                CustomSquareButton(
                  child: Text(
                    '${count}',
                    style: TextStyle(
                      color: activeCyanColor,
                    ),
                  ),
                  onPressed: () {},
                  color: Colors.grey[200]!,
                  dimension: 40,
                ),
                CustomSquareButton(
                  child: Icon(
                    Icons.add,
                  ),
                  onPressed: () {
                    count++;
                  },
                  color: backgroundColor,
                  dimension: 40,
                ),
              ],
            ),
            flex: 1,
          ),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    CustomSimpleRoundedButton(
                      onPressed: () {},
                      text: "Delete",
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    CustomSimpleRoundedButton(
                      onPressed: () {},
                      text: "Save for later",
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 2.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: const Text(
                      "See more like this",
                      style: TextStyle(
                        color: activeCyanColor,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            flex: 1,
          ),
        ],
      ),
    );
  }
}
