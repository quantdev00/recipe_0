import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:recipe_0/utilities/app_layout.dart';
import 'package:recipe_0/utilities/app_styling.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getCurrentAppSize(context);

    return SizedBox(
      width: size.width,
      height: 200,
      child: Container(
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                  color: Color(0xff526799),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(21),
                    topRight: Radius.circular(21),
                  )),
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text('NYC',
                          style: Style.headLineStyle3
                              .copyWith(color: Colors.white)),
                      const Spacer(),
                      Text('London',
                          style: Style.headLineStyle3
                              .copyWith(color: Colors.white))
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
