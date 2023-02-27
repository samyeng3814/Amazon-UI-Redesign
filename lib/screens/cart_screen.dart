import 'package:amazon_uiclone_app/constants/global_variables.dart';
import 'package:amazon_uiclone_app/widgets/appbar_search_widget.dart';
import 'package:amazon_uiclone_app/widgets/custom_main_button.dart';
import 'package:flutter/material.dart';

import '../home/widgets/address_box.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarSearch(
        isReadOnly: true,
        hasBackButton: false,
      ),
      body: Center(
        child: Stack(
          children: [
            Column(
              children: [
                const SizedBox(
                  height: kAppBarHeight / 2,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomMainButton(
                    child: Text(
                      "Proceed to Buy (n item)",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    color: yellowColor,
                    isLoading: false,
                    onPressed: () {},
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: cartProduct.length,
                    itemBuilder: (context, index) {
                      return cartProduct[index];
                    },
                  ),
                ),
              ],
            ),
            const AddressBox(
              offset: 0,
              name: "Vinoth",
              address: '32C, East Car Street, Thenmalai, Tirunelveli - 623456',
            ),
          ],
        ),
      ),
    );
  }
}
