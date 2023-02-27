import 'package:amazon_uiclone_app/screens/results_screen.dart';
import 'package:amazon_uiclone_app/widgets/appbar_search_widget.dart';
import 'package:flutter/material.dart';

import '../constants/global_variables.dart';
import '../more/widgets/category_widget.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarSearch(isReadOnly: true, hasBackButton: false),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            childAspectRatio: 2.2 / 3.5,
            mainAxisSpacing: 15,
            crossAxisSpacing: 15,
          ),
          itemCount: categoriesList.length,
          itemBuilder: (context, index) => CategoryWidget(
            index: index,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ResultsScreen(
                    query: "query",
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
