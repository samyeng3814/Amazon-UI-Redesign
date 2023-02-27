import 'package:amazon_uiclone_app/widgets/appbar_search_widget.dart';
import 'package:flutter/material.dart';

import '../constants/global_variables.dart';

class ResultsScreen extends StatelessWidget {
  final String query;
  const ResultsScreen({
    Key? key,
    required this.query,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBarSearch(isReadOnly: false, hasBackButton: true),
        body: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: RichText(
                  text: TextSpan(
                    children: [
                      const TextSpan(
                        text: "Showing results for ",
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        text: query,
                        style: const TextStyle(
                          fontSize: 17,
                          fontStyle: FontStyle.italic,
                          color: Colors.black,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: GridView.builder(
                  itemCount: searchScreenProducts.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    childAspectRatio: 0.6,
                  ),
                  itemBuilder: (context, index) {
                    return searchScreenProducts[index];
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
