import 'dart:math';

import 'package:barcode_widget/barcode_widget.dart';
import 'package:dotted_dashed_line/dotted_dashed_line.dart';
import 'package:flights_mojo/core/extension/screen_size.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:qr_widget/qr_widget.dart';
import 'package:torn_ticket/torn_ticket.dart';

class UpcomingTabView extends StatefulWidget {
  const UpcomingTabView({super.key});

  @override
  State<UpcomingTabView> createState() => _UpcomingTabViewState();
}

class _UpcomingTabViewState extends State<UpcomingTabView> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          FlipCard(
            flipOnTouch: true,
            direction: FlipDirection.HORIZONTAL,
            front: TornTicket(
              borderRadius: 15.0,
              cutoutRadius: 10.0,
              cutoutHeight: 15.0,
              cutoutPosition: 0.63,
              bottomEndSpacing: 5.0,
              bottomArcSpacing: 10.0,
              elevation: 5.0,
              width: context.screenWidth * 0.88,
              height: context.screenHeight * 0.65,
              hasShadow: true,
              shadowColor: Colors.black,
              margin: EdgeInsets.symmetric(horizontal: 10),
              shadowOffset: Offset(5, 2),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                    child: Row(
                      children: [
                        SizedBox(
                          height: 50,
                          width: 50,
                          child: SvgPicture.network(
                            "https://www.flightsmojo.in/images/airlinesSvg/QP.svg",
                          ),
                        ),
                        SizedBox(width: context.screenWidth * 0.10),
                        Center(
                          child: Text(
                            "Air India Express",
                            style: Theme.of(context).textTheme.headlineLarge
                                ?.copyWith(
                                  color: Theme.of(context).colorScheme.primary,
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      SizedBox(height: 10),
                      DottedDashedLine(
                        height: 0,
                        width: double.maxFinite,
                        axis: Axis.horizontal,
                        dashColor: Colors.grey,
                        dashSpace: 5,
                        dashWidth: 10,
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              Text(
                                "DEL",
                                style: Theme.of(context).textTheme.bodyLarge
                                    ?.copyWith(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25,
                                    ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 120,
                            height: 20,
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                DottedDashedLine(
                                  height: 0,
                                  width: double.maxFinite,
                                  axis: Axis.horizontal,
                                  dashColor: Colors.deepOrange,
                                  dashWidth: 4,
                                ),
                                Positioned(
                                  left: -3,
                                  child: Icon(
                                    Icons.fiber_manual_record,
                                    size: 15,
                                    color: Colors.deepOrange,
                                  ),
                                ),
                                Positioned(
                                  right: -3,
                                  child: Icon(
                                    Icons.fiber_manual_record,
                                    size: 15,
                                    color: Colors.deepOrange,
                                  ),
                                ),
                                Center(
                                  child: Icon(
                                    FontAwesomeIcons.plane,
                                    size: 20,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          Column(
                            children: [
                              Text(
                                "BOM",
                                style: Theme.of(context).textTheme.bodyLarge
                                    ?.copyWith(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25,
                                    ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            child: Text(
                              "Indira Gandhi",
                              textAlign: TextAlign.center,
                            ),
                          ),
                          SizedBox(
                            child: Text(
                              "Chhatrapati Shivaj",
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Expanded(
                            child: DottedDashedLine(
                              height: 0,
                              width: double.maxFinite,
                              axis: Axis.horizontal,
                              dashColor: Colors.grey,
                              dashSpace: 5,
                              dashWidth: 10,
                            ),
                          ),
                          SizedBox(width: 15),
                          Text("3h 10m"),
                          SizedBox(width: 15),
                          Expanded(
                            child: DottedDashedLine(
                              height: 0,
                              width: double.maxFinite,
                              axis: Axis.horizontal,
                              dashColor: Colors.grey,
                              dashSpace: 5,
                              dashWidth: 10,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    Text("Flight No."),
                                    SizedBox(height: 5),
                                    Text(
                                      "AIR 123",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyLarge
                                          ?.copyWith(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 16,
                                          ),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text("Ticket"),
                                    SizedBox(height: 5),
                                    Text(
                                      "AIR 123",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyLarge
                                          ?.copyWith(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 16,
                                          ),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text("Class"),
                                    SizedBox(height: 5),
                                    Text(
                                      "Business",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyLarge
                                          ?.copyWith(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 16,
                                          ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    Text("Passenger"),
                                    SizedBox(height: 5),
                                    Text(
                                      "1 Adult",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyLarge
                                          ?.copyWith(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 16,
                                          ),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text("Seat"),
                                    SizedBox(height: 5),
                                    Text(
                                      "E5",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyLarge
                                          ?.copyWith(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 16,
                                          ),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text("Gate"),
                                    SizedBox(height: 5),
                                    Text(
                                      "F Gate",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyLarge
                                          ?.copyWith(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 16,
                                          ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: DottedDashedLine(
                                  height: 0,
                                  width: double.maxFinite,
                                  axis: Axis.horizontal,
                                  dashColor: Colors.grey,
                                  dashSpace: 5,
                                  dashWidth: 10,
                                ),
                              ),
                              SizedBox(width: 15),
                              Text("14 October 2025"),
                              SizedBox(width: 15),
                              Expanded(
                                child: DottedDashedLine(
                                  height: 0,
                                  width: double.maxFinite,
                                  axis: Axis.horizontal,
                                  dashColor: Colors.grey,
                                  dashSpace: 5,
                                  dashWidth: 10,
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    Text("Boarding"),
                                    SizedBox(height: 5),
                                    Text(
                                      "12:00 am",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyLarge
                                          ?.copyWith(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 16,
                                          ),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text("Departure"),
                                    SizedBox(height: 5),
                                    Text(
                                      "02:00 am",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyLarge
                                          ?.copyWith(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 16,
                                          ),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text("Arrival"),
                                    SizedBox(height: 5),
                                    Text(
                                      "05:10 am",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyLarge
                                          ?.copyWith(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 16,
                                          ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 20,
                              right: 20,
                              top: 10,
                            ),
                            child: BarcodeWidget(
                              barcode: Barcode.code128(),
                              data: 'PNR-AIR123456',
                              width: 200,
                              height: 80,
                              backgroundColor: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            back: TornTicket(
              borderRadius: 15.0,
              cutoutRadius: 10.0,
              cutoutHeight: 15.0,
              cutoutPosition: 0.34,
              bottomEndSpacing: 5.0,
              bottomArcSpacing: 10.0,
              elevation: 5.0,
              width: context.screenWidth * 0.88,
              height: context.screenHeight * 0.65,
              backgroundColor: Colors.deepOrange,
              hasShadow: true,
              shadowColor: Colors.black,
              margin: EdgeInsets.symmetric(horizontal: 10),
              shadowOffset: Offset(5, 2),
              padding: EdgeInsets.zero,
              child: LayoutBuilder(
                builder: (context, constrains) {
                  final ticketHeight = constrains.maxHeight;
                  return Column(
                    children: [
                      Container(
                        color: Colors.white,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: 20,
                            right: 20,
                            top: 10,
                          ),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "BUSINESS CLASS",
                                    style: Theme.of(context).textTheme.bodyLarge
                                        ?.copyWith(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                        ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 20),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        "DEPARTURE",
                                        style: TextStyle(fontSize: 12),
                                      ),
                                      Text(
                                        "02:00 am",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyLarge
                                            ?.copyWith(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16,
                                            ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 10),
                                  Column(
                                    children: [
                                      Text(
                                        "ARRIVAL",
                                        style: TextStyle(fontSize: 12),
                                      ),
                                      Text(
                                        "05:10 am",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyLarge
                                            ?.copyWith(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16,
                                            ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(height: 10),
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 20),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "YOUR PLANE",
                                          style: TextStyle(fontSize: 12),
                                        ),
                                        Text(
                                          "AIRBUS 7876 MK",
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyLarge
                                              ?.copyWith(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16,
                                              ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(height: 20, color: Colors.white),
                      Container(
                        color: Colors.white,
                        child: Row(
                          children: [
                            Expanded(
                              child: DottedDashedLine(
                                height: 0,
                                width: double.maxFinite,
                                axis: Axis.horizontal,
                                dashColor: Colors.grey,
                                dashSpace: 5,
                                dashWidth: 10,
                              ),
                            ),
                            SizedBox(width: 5),
                            CircleAvatar(
                              backgroundColor: Colors.deepOrange,
                              child: Icon(
                                FontAwesomeIcons.plane,
                                size: 20,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(width: 5),
                            Expanded(
                              child: DottedDashedLine(
                                height: 0,
                                width: double.maxFinite,
                                axis: Axis.horizontal,
                                dashColor: Colors.grey,
                                dashSpace: 5,
                                dashWidth: 10,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(height: 10, color: Colors.white),
                      Container(
                        color: Colors.white,
                        child: Center(
                          child: Text(
                            "SHOW YOUR PASSPORT AND YOUR QR CODE \nAT THE BOARDING GATE",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 12),
                          ),
                        ),
                      ),
                      Stack(
                        children: [
                          Container(height: ticketHeight * 0.10),
                          Container(
                            height: ticketHeight * 0.34,
                            color: Colors.white,
                          ),
                          Align(
                            alignment: Alignment.topCenter,
                            child: QrImageView(
                              data: '1234567890',
                              version: QrVersions.auto,
                              size: 200.0,
                              backgroundColor: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 15,),
                      Row(
                        mainAxisAlignment:
                        MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "PASSENGER",
                                style: TextStyle(fontSize: 12,color: Colors.white),
                              ),
                              Text(
                                "PRATYUSH K JENA",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge
                                    ?.copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 10),
                          Column(
                            children: [
                              Text(
                                "SEAT",
                                style: TextStyle(fontSize: 12,color: Colors.white),
                              ),
                              Text(
                                "E5",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge
                                    ?.copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
