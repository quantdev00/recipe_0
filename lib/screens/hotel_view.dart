import 'package:flutter/material.dart';
import 'package:recipe_0/utilities/app_layout.dart';
import 'package:recipe_0/utilities/app_styling.dart';

class HotelView extends StatelessWidget {
  final Map<String, dynamic> hotels;
  const HotelView({Key? key, required this.hotels}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // print('the hotel destinations is ${hotels['destination']}');
    final size = AppLayout.getCurrentAppSize(context);
    return Container(
      height: 350,
      width: size.width * 0.6,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 17),
      margin: const EdgeInsets.only(right: 17, top: 5),
      decoration: BoxDecoration(
        color: Style.primaryColor,
        borderRadius: BorderRadius.circular(24),
        boxShadow: const [
          BoxShadow(
            color: Colors.black,
            blurRadius: 3,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
                color: Style.primaryColor,
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/${hotels['image']}'))),
          ),
          const SizedBox(height: 10),
          Text(
            hotels['place'],
            style: Style.headLineStyle2.copyWith(color: Style.kakiColor),
          ),
          const SizedBox(height: 5),
          Text(
            hotels['destination'],
            style: Style.headLineStyle3.copyWith(color: Colors.white),
          ),
          const SizedBox(height: 8),
          Text(
            '\$${hotels['price']}/night',
            style: Style.headLineStyle.copyWith(color: Style.kakiColor),
          ),
        ],
      ),
    );
  }
}
