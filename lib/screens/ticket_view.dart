import 'package:booking_apps/utils/app_layout.dart';
import 'package:booking_apps/utils/app_styles.dart';
import 'package:booking_apps/widgets/thick_container.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool? IsColor;
  const TicketView({Key? key, required this.ticket, this.IsColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width * 0.85,
      height: AppLayout.getHeight(200),
      child: Container(
        margin: EdgeInsets.only(right: AppLayout.getHeight(16)),
        child: Column(
          children: [
            /*
            Showing Blue Part of the card/ticket
            */
            Container(
              decoration: BoxDecoration(
                  color: IsColor == null ? Color(0xFF526799) : Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(AppLayout.getHeight(21)),
                      topRight: Radius.circular(21))),
              padding: EdgeInsets.all(AppLayout.getHeight(16)),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        ticket['from']['code'],
                        style: IsColor == null
                            ? Styles.headlineStyle3
                                .copyWith(color: Colors.white)
                            : Styles.headlineStyle3,
                      ),
                      Expanded(child: Container()),
                      ThickContainer(
                        isColor: true,
                      ),
                      Expanded(
                          child: Stack(
                        children: [
                          SizedBox(
                            height: AppLayout.getHeight(24),
                            child: LayoutBuilder(
                              builder: (BuildContext context,
                                  BoxConstraints constraints) {
                                print(
                                    "The Width is ${constraints.constrainWidth()}");
                                return Flex(
                                  direction: Axis.horizontal,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  mainAxisSize: MainAxisSize.max,
                                  children: List.generate(
                                      (constraints.constrainWidth() / 6)
                                          .floor(),
                                      (index) => SizedBox(
                                            width: 3,
                                            height: 1,
                                            child: DecoratedBox(
                                              decoration: BoxDecoration(
                                                  color: IsColor == null
                                                      ? Colors.white
                                                      : Colors.grey.shade300),
                                            ),
                                          )),
                                );
                              },
                            ),
                          ),
                          Center(
                            child: Transform.rotate(
                              angle: 1.5,
                              child: Icon(
                                Icons.local_airport_rounded,
                                color: IsColor == null
                                    ? Colors.white
                                    : Color(0xFF8aCCf7),
                              ),
                            ),
                          ),
                        ],
                      )),
                      ThickContainer(
                        isColor: true,
                      ),
                      Expanded(child: Container()),
                      Text(
                        ticket['to']['code'],
                        style: IsColor == null
                            ? Styles.headlineStyle3
                                .copyWith(color: Colors.white)
                            : Styles.headlineStyle3,
                      )
                    ],
                  ),
                  const Gap(3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: AppLayout.getWidth(46),
                        child: Text(
                          ticket['from']['name'],
                          style: IsColor == null
                              ? Styles.headlineStyle4
                                  .copyWith(color: Colors.white)
                              : Styles.headlineStyle4,
                        ),
                      ),
                      Text(
                        ticket['flying_time'],
                        style: IsColor == null
                            ? Styles.headlineStyle4
                                .copyWith(color: Colors.white)
                            : Styles.headlineStyle4,
                      ),
                      SizedBox(
                        width: AppLayout.getWidth(43),
                        child: Text(
                          ticket['to']['name'],
                          textAlign: TextAlign.end,
                          style: IsColor == null
                              ? Styles.headlineStyle4
                                  .copyWith(color: Colors.white)
                              : Styles.headlineStyle4,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            /*
          Showing Red Part of the card/ticket
          */
            Container(
              color: IsColor == null ? Styles.orangeColor : Colors.white,
              child: Row(
                children: [
                  SizedBox(
                    height: AppLayout.getHeight(20),
                    width: AppLayout.getWidth(5),
                    child: DecoratedBox(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10),
                                bottomRight: Radius.circular(10)))),
                  ),
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: LayoutBuilder(
                      builder:
                          (BuildContext context, BoxConstraints constraints) {
                        return Flex(
                          direction: Axis.horizontal,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.max,
                          children: List.generate(
                              (constraints.constrainWidth() / 15).floor(),
                              (index) => SizedBox(
                                    width: 5,
                                    height: 1,
                                    child: DecoratedBox(
                                        decoration: BoxDecoration(
                                            color: IsColor == null
                                                ? Colors.white
                                                : Colors.grey.shade300)),
                                  )),
                        );
                      },
                    ),
                  )),
                  SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                        decoration: BoxDecoration(
                            color: IsColor == null
                                ? Colors.white
                                : Colors.grey.shade300,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10)))),
                  )
                ],
              ),
            ),
            /*
          Bottom Part of the  Red card/ticket
          */
            Container(
              decoration: BoxDecoration(
                  color: IsColor == null ? Styles.orangeColor : Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(21),
                      bottomRight: Radius.circular(21))),
              padding: const EdgeInsets.only(
                  left: 16, top: 10, right: 16, bottom: 16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            ticket['date'],
                            style: IsColor == null
                                ? Styles.headlineStyle3
                                    .copyWith(color: Colors.white)
                                : Styles.headlineStyle3,
                          ),
                          const Gap(5),
                          Text(
                            "DATE",
                            style: IsColor == null
                                ? Styles.headlineStyle4
                                    .copyWith(color: Colors.white)
                                : Styles.headlineStyle4,
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            ticket['departure_time'],
                            style: IsColor == null
                                ? Styles.headlineStyle3
                                    .copyWith(color: Colors.white)
                                : Styles.headlineStyle3,
                          ),
                          const Gap(5),
                          Text(
                            "Departure Time",
                            style: IsColor == null
                                ? Styles.headlineStyle4
                                    .copyWith(color: Colors.white)
                                : Styles.headlineStyle4,
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            ticket['number'].toString(),
                            style: IsColor == null
                                ? Styles.headlineStyle3
                                    .copyWith(color: Colors.white)
                                : Styles.headlineStyle3,
                          ),
                          const Gap(5),
                          Text(
                            "Number",
                            style: IsColor == null
                                ? Styles.headlineStyle4
                                    .copyWith(color: Colors.white)
                                : Styles.headlineStyle4,
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
