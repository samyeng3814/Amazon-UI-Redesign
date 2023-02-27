import 'package:amazon_uiclone_app/constants/utils.dart';
import 'package:amazon_uiclone_app/home/widgets/address_box.dart';
import 'package:amazon_uiclone_app/model/review_model.dart';
import 'package:amazon_uiclone_app/widgets/appbar_search_widget.dart';
import 'package:amazon_uiclone_app/widgets/rating_star_widget.dart';
import 'package:amazon_uiclone_app/widgets/review_dialog.dart';
import 'package:amazon_uiclone_app/widgets/review_widget.dart';
import 'package:flutter/material.dart';

import '../constants/global_variables.dart';
import '../model/product_model.dart';
import '../widgets/cost_widget.dart';
import '../widgets/custom_main_button.dart';
import '../widgets/custom_simple_rounded_buttton.dart';

class ProductScreen extends StatefulWidget {
  final ProductModel productModel;
  const ProductScreen({
    Key? key,
    required this.productModel,
  }) : super(key: key);

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  SizedBox spaceThingy = const SizedBox(height: 10);
  @override
  Widget build(BuildContext context) {
    Size screenSize = Utils().getScreenSize();
    return SafeArea(
      child: Scaffold(
        appBar: AppBarSearch(
          isReadOnly: true,
          hasBackButton: true,
        ),
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: Column(
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          child: Column(
                            children: [
                              SizedBox(
                                height: kAppBarHeight / 2,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 10.0),
                                child: Container(
                                  width: screenSize.width,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            width: screenSize.width / 2,
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                bottom: 5.0,
                                              ),
                                              child: Text(
                                                widget.productModel.sellerName,
                                                style: TextStyle(
                                                  color: activeCyanColor,
                                                  fontSize: 16,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: screenSize.width / 2,
                                            child: Text(
                                              widget.productModel.productName,
                                              maxLines: 3,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ),
                                        ],
                                      ),
                                      RatingStartWidget(
                                        rating: widget.productModel.rating,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Container(
                                  height: screenSize.height / 3,
                                  constraints: BoxConstraints(
                                      maxHeight: screenSize.height / 4),
                                  child: Image.network(
                                    widget.productModel.url,
                                  ),
                                ),
                              ),
                              spaceThingy,
                              CostWidget(
                                color: Colors.black,
                                cost: widget.productModel.cost,
                              ),
                              spaceThingy,
                              CustomMainButton(
                                child: Text(
                                  "Buy Now",
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                                isLoading: false,
                                color: Colors.orange,
                                onPressed: () {},
                              ),
                              CustomMainButton(
                                child: Text(
                                  "Add to cart",
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                                isLoading: false,
                                color: yellowColor,
                                onPressed: () {},
                              ),
                              spaceThingy,
                              CustomSimpleRoundedButton(
                                onPressed: () {
                                  showDialog(
                                      context: context,
                                      builder: (context) {
                                        return const ReviewDialog();
                                      });
                                },
                                text: "Add review",
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: screenSize.height / 2,
                          child: ListView.builder(
                            itemCount: 10,
                            itemBuilder: (context, index) {
                              return ReviewWidget(
                                review: ReviewModel(
                                  senderName: "Rick",
                                  description: "Very good product",
                                  rating: 3,
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            AddressBox(
                offset: 0, name: 'Vinoth', address: "Somewhere on earth"),
          ],
        ),
      ),
    );
  }
}
