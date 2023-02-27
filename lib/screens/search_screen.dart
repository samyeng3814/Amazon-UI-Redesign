import 'package:amazon_uiclone_app/widgets/appbar_search_widget.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBarSearch(isReadOnly: false, hasBackButton: true),
      ),
    );
  }
}
