import 'package:booking_apps/utils/app_styles.dart';
import 'package:booking_apps/widgets/icon_text_widget.dart';
import 'package:booking_apps/widgets/ticket_tabs.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

import '../utils/app_layout.dart';
import '../widgets/double_text_widget.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getWidth(10),
            vertical: AppLayout.getHeight(10)),
        children: [
          Gap(AppLayout.getHeight(40)),
          Text(
            "What are\nyou looking for?",
            style: Styles.headlineStyle1
                .copyWith(fontSize: AppLayout.getWidth(18)),
          ),
          Gap(AppLayout.getHeight(20)),
          const AppTicketTabs(
            firstTab: "Airline Tickets",
            secondTab: "Hotels",
          ),
          Gap(AppLayout.getHeight(25)),
          AppIconText(icon: Icons.flight_takeoff_rounded, text: "Departure"),
          Gap(AppLayout.getHeight(20)),
          const AppIconText(icon: Icons.flight_land_rounded, text: "Arrival"),
          Gap(AppLayout.getHeight(25)),
          Container(
              padding: EdgeInsets.symmetric(
                  vertical: AppLayout.getWidth(10),
                  horizontal: AppLayout.getWidth(15)),
              decoration: BoxDecoration(
                color: Color(0xD91130CE),
                borderRadius: BorderRadius.circular(AppLayout.getWidth(10)),
              ),
              child: Center(
                child: Text(
                  "Find tickets",
                  style: Styles.textStyle.copyWith(color: Colors.white),
                ),
              )),
          Gap(AppLayout.getHeight(15)),
          const AppDoubleTextWidget(
              bigText: "Upcoming Flights", smallText: "View all"),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: AppLayout.getHeight(410),
                width: size.width * 0.42,
                padding: EdgeInsets.symmetric(
                    horizontal: AppLayout.getHeight(10),
                    vertical: AppLayout.getWidth(5)),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.circular(AppLayout.getHeight(20)),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade200,
                          blurRadius: 1,
                          spreadRadius: 1)
                    ]),
                child: Column(
                  children: [
                    Container(
                      height: AppLayout.getHeight(190),
                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(AppLayout.getHeight(12)),
                          image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("assets/images/up-1.jpg"))),
                    ),
                    Gap(AppLayout.getHeight(20)),
                    Text(
                      "20% discount on the early booking of this flight. Don`t miss out this chance",
                      style: Styles.headlineStyle2,
                    )
                  ],
                ),
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: size.width * 0.44,
                        height: AppLayout.getHeight(184),
                        decoration: BoxDecoration(
                            color: const Color(0xFF3AB8B8),
                            borderRadius:
                                BorderRadius.circular(AppLayout.getHeight(18))),
                        padding: EdgeInsets.symmetric(
                            vertical: AppLayout.getHeight(15),
                            horizontal: AppLayout.getHeight(15)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Discount\nfor survey",
                              style: Styles.headlineStyle2.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Gap(AppLayout.getHeight(10)),
                            Text(
                              "Take the survey about our services and get discount",
                              style: Styles.headlineStyle2.copyWith(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                  fontSize: 18),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                          right: -45,
                          top: -40,
                          child: Container(
                            padding: EdgeInsets.all(AppLayout.getHeight(30)),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                    width: 18, color: const Color(0xFF189999)),
                                color: Colors.transparent),
                          ))
                    ],
                  ),
                  Gap(AppLayout.getHeight(15)),
                  Container(
                    width: size.width * 0.44,
                    height: AppLayout.getHeight(210),
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(AppLayout.getHeight(18)),
                      color: const Color(0xFFEC6545),
                    ),
                    child: Column(
                      children: [
                        Text(
                          "Take Discount",
                          style: Styles.headlineStyle2.copyWith(
                              color: Colors.white, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                        Gap(AppLayout.getHeight(5)),
                        RichText(
                            text: const TextSpan(children: [
                          TextSpan(text: '😀', style: TextStyle(fontSize: 38)),
                          TextSpan(text: '😈', style: TextStyle(fontSize: 50)),
                          TextSpan(text: '🤬', style: TextStyle(fontSize: 38)),
                        ]))
                      ],
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
