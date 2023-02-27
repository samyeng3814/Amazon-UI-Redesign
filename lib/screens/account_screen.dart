import 'package:amazon_uiclone_app/account/widgets/account_screen_appbar.dart';
import 'package:amazon_uiclone_app/account/widgets/user_account_detail.dart';
import 'package:flutter/material.dart';

import '../account/widgets/orders.dart';
import '../account/widgets/top_buttons.dart';
import '../constants/global_variables.dart';
import '../home/widgets/product_showcase_list_view.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AccountScreenAppBar(),
      body: Column(
        children: [
          UserAccountDetail(),
          SizedBox(
            height: 12,
          ),
          TopButtons(),
          SizedBox(
            height: 20,
          ),
          Orders(),
          ProductsShowcaseListView(
            reverse: false,
            title: "Keep shopping for",
            children: testChildren,
          ),
        ],
      ),
    );
  }
}
