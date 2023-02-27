import 'package:amazon_uiclone_app/widgets/appbar_search_widget.dart';
import 'package:flutter/material.dart';

import '../constants/global_variables.dart';
import '../home/widgets/address_box.dart';
import '../home/widgets/carousel_images.dart';
import '../home/widgets/deals_of_day.dart';
import '../home/widgets/product_showcase_list_view.dart';
import '../home/widgets/small_ad_widget.dart';
import '../home/widgets/top_categories.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarSearch(
        isReadOnly: true,
        hasBackButton: false,
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                const AddressBox(
                  name: "Vinoth",
                  address:
                      "32C, East Car Street, Thenmalai, Tirunelveli - 623456",
                  offset: 0,
                ),
                SizedBox(
                  height: 10,
                ),
                TopCategories(),
                SizedBox(
                  height: 10,
                ),
                CarouselImage(),
                SizedBox(
                  height: 15,
                ),
                SmallAdWidget(),
                DealOfDay(),
                ProductsShowcaseListView(
                  reverse: false,
                  title: "Upto 75% Off",
                  children: testChildren,
                ),
                ProductsShowcaseListView(
                  reverse: true,
                  title: "Upto 60% Off",
                  children: testChildren,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
