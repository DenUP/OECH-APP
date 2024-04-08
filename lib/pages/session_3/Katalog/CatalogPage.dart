import 'package:flutter/material.dart';
import 'package:oech/widgets/session_3/appbar_widget.dart';

class CatalogPage extends StatelessWidget {
  const CatalogPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const AppBarDefoult(
          button: true,
          titleText: 'Каталог товаров',
        ),
        body: Text('Ехуу скоро будет интересно...'));
  }
}
