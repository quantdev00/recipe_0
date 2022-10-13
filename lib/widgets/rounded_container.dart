import 'package:flutter/material.dart';

class RoundedContainer extends StatelessWidget {
  const RoundedContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(3.0),
      decoration: BoxDecoration(
        border: Border.all(
          width: 2.5,
          color: Colors.white,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}
