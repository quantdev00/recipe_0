import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:recipe_0/screens/tickets_view.dart';
import 'package:recipe_0/utilities/app_styling.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Style.bgColor,
      body: ListView(children: [
        const SizedBox(height: 40),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Good Morning',
                      style: Style.headLineStyle3,
                    ),
                    const SizedBox(height: 5),
                    //But we can use gap package instead
                    /*flutter pub add gap 
                    then use it like this 

                    //! -> Gap(5),
                    
                    //? its goign to know directly if you need the height or width
                    */
                    Text(
                      'Book Tickets',
                      style: Style.headLineStyle,
                    ),
                  ],
                ),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),

                    // image: DecorationImage(
                    //   //to fit the image well in the box
                    //   fit: BoxFit.fill,
                    //   image: AssetImage('assets/images/img.png'))
                  ),
                  //!This should be an image to change later
                  child: const Icon(
                    Icons.airplanemode_active_rounded,
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 25),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
              decoration: BoxDecoration(
                color: const Color(0xfff4f6fd),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  const Icon(
                    Icons.search,
                    color: Color(0xffbfc205),
                  ),
                  Text(
                    'Search',
                    style: Style.headLineStyle4,
                  )
                ],
              ),
            ),
            const SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Upcoming Flights',
                  style: Style.headLineStyle2,
                ),
                InkWell(
                  onTap: () => log('view all typed'),
                  child: Text(
                    'View all',
                    style: Style.textStyle.copyWith(
                      color: Style.primaryColor,
                    ),
                  ),
                ),
              ],
            ),
            const TicketView(),
            
          ],),
        )
      ]),
    );
  }
}
