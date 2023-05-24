import 'package:booking_apps/screens/ticket_view.dart';
import 'package:booking_apps/utils/app_info_list.dart';
import 'package:booking_apps/utils/app_layout.dart';
import 'package:booking_apps/utils/app_styles.dart';
import 'package:booking_apps/widgets/ticket_tabs.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
        body: Stack(
      children: [
        ListView(
          padding: EdgeInsets.symmetric(
              horizontal: AppLayout.getHeight(20),
              vertical: AppLayout.getHeight(20)),
          children: [
            Gap(AppLayout.getHeight(40)),
            Text(
              "Tickets",
              style: Styles.headlineStyle1,
            ),
            Gap(AppLayout.getHeight(20)),
            AppTicketTabs(firstTab: "Upcoming", secondTab: "Previous"),
            Gap(AppLayout.getHeight(20)),
            Container(
              padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
              child: TicketView(
                ticket: ticketList[0],
                IsColor: true,
              ),
            )
          ],
        )
      ],
    ));
  }
}
