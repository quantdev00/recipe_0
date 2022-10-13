import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:recipe_0/utilities/app_layout.dart';
import 'package:recipe_0/utilities/app_styling.dart';
import 'package:recipe_0/widgets/rounded_container.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  const TicketView({super.key, required this.ticket});

  @override
  Widget build(BuildContext context) {
    //app current size
    final size = AppLayout.getCurrentAppSize(context);

    return SizedBox(
      width: size.width * 0.85,
      height: 200,
      child: Container(
        margin: const EdgeInsets.only(right: 16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
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
                      Text(
                        ticket['from']['code'],
                        style:
                            Style.headLineStyle3.copyWith(color: Colors.white),
                      ),
                      Expanded(child: Container()),
                      const RoundedContainer(),
                      Expanded(
                        child: Stack(children: [
                          SizedBox(
                            height: 25,
                            child: LayoutBuilder(
                              builder: (p0, p1) {
                                log('${p1.constrainWidth()}');
                                return Flex(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  direction: Axis.horizontal,
                                  mainAxisSize: MainAxisSize.max,
                                  children: List.generate(
                                      (p1.constrainWidth() / 6).floor(),
                                      (index) => const SizedBox(
                                            width: 3,
                                            height: 1,
                                            child: DecoratedBox(
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                              ),
                                            ),
                                          )),
                                );
                              },
                            ),
                          ),
                          Center(
                            child: Transform.rotate(
                              angle: 1.5,
                              child: const Icon(
                                Icons.airplanemode_active,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ]),
                      ),
                      const RoundedContainer(),
                      Expanded(child: Container()),
                      Text(ticket['to']['code'],
                          style: Style.headLineStyle3
                              .copyWith(color: Colors.white))
                    ],
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Row(
                    children: [
                      Text(ticket['from']['name'],
                          style: Style.headLineStyle4
                              .copyWith(color: Colors.white)),
                      const Spacer(),
                      Text(ticket['flying_time'],
                          style: Style.headLineStyle4
                              .copyWith(color: Colors.white)),
                      const Spacer(),
                      Text(ticket['to']['name'],
                          style: Style.headLineStyle4
                              .copyWith(color: Colors.white)),
                    ],
                  )
                ],
              ),
            ),
            /*
            Creating the orange part of the ticket
            */
            Container(
              color: Style.orangeColor,
              child: Row(
                children: [
                  const SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                          )),
                    ),
                  ),
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: LayoutBuilder(
                      builder: (p0, p1) {
                        return Flex(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.max,
                          direction: Axis.horizontal,
                          children: List.generate(
                              (p1.constrainWidth() / 15).floor(),
                              (index) => const SizedBox(
                                    width: 5,
                                    height: 1,
                                    child: DecoratedBox(
                                        decoration:
                                            BoxDecoration(color: Colors.white)),
                                  )),
                        );
                      },
                    ),
                  )),
                  const SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                          )),
                    ),
                  )
                ],
              ),
            ),
            /*
            Bottom orange part of the ticket
            */
            Container(
              padding: const EdgeInsets.only(
                  top: 10, bottom: 16, right: 16, left: 16),
              decoration: BoxDecoration(
                  color: Style.orangeColor,
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(21),
                    bottomRight: Radius.circular(21),
                  )),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        ticket['date'],
                        style:
                            Style.headLineStyle3.copyWith(color: Colors.white),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        'Date',
                        style:
                            Style.headLineStyle4.copyWith(color: Colors.white),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        ticket['departure_time'],
                        style:
                            Style.headLineStyle3.copyWith(color: Colors.white),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        'Departure time',
                        style:
                            Style.headLineStyle4.copyWith(color: Colors.white),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        ticket['ticket_number'].toString(),
                        style:
                            Style.headLineStyle3.copyWith(color: Colors.white),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        'Number',
                        style:
                            Style.headLineStyle4.copyWith(color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
