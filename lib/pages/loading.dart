import 'package:flutter/material.dart';
import 'package:card_loading/card_loading.dart';

class LoadingCard extends StatelessWidget {
  const LoadingCard({super.key});

  @override
  Widget build(BuildContext context) {
    return CardLoading(
      height: 100,
      borderRadius: BorderRadius.all(Radius.circular(10)),
      margin: EdgeInsets.only(bottom: 10),
    );
  }
}
