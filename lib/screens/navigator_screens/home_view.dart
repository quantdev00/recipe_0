import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:recipe_0/screens/hotel_view.dart';
import 'package:recipe_0/screens/tickets_view.dart';
import 'package:recipe_0/utilities/app_hotels_list.dart';
import 'package:recipe_0/utilities/app_styling.dart';
import 'package:recipe_0/utilities/app_tickets_list.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Style.bgColor,
      body: ListView(
        children: [
          const SizedBox(height: 40),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
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
                ),
                const SizedBox(height: 25),
                //!Search bar
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12, vertical: 12),
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
                ),
                const SizedBox(height: 25),
                //!Next row upcoming Flights view all
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
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
                ),
                const SizedBox(height: 15),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    children: ticketsList
                        .map((oneTicket) => TicketView(ticket: oneTicket))
                        .toList(),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Hotels',
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
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: 20),
            child: Row(
              //*reading the hotels map from the list and pastin it to HotelView
              mainAxisAlignment: MainAxisAlignment.start,
              children: hotelsList
                  .map((singleHotel) => HotelView(hotels: singleHotel))
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
