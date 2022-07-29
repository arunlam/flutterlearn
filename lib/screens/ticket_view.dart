import 'package:bookticket/utils/app_layout.dart';
import 'package:bookticket/utils/app_styles.dart';
import 'package:bookticket/widgets/thick_container.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  const TicketView({Key? key, required this.ticket}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width * 0.85,
      height: AppLayout.getHeight(200),
      child: Container(
        margin: EdgeInsets.only(right: AppLayout.getWidth(16)),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // ! showing the blue paart of the card/ticket
            Container(
              decoration: BoxDecoration(
                color: const Color(0xFF526799),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(AppLayout.getHeight(16)),
                  topRight: Radius.circular(AppLayout.getHeight(16)),
                ),
              ),
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        ticket['from']['code'].toString(),
                        style: AppStyles.headlineStyle3
                            .copyWith(color: Colors.white),
                      ),
                      const Spacer(),
                      const ThickContainer(),
                      Expanded(
                        child: Stack(
                          children: [
                            SizedBox(
                              height: 24,
                              child: LayoutBuilder(
                                builder: (BuildContext context,
                                    BoxConstraints constraints) {
                                  return Flex(
                                    direction: Axis.horizontal,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    mainAxisSize: MainAxisSize.max,
                                    children: List.generate(
                                      (constraints.constrainWidth() / 8)
                                          .floor(),
                                      (index) => const SizedBox(
                                        width: 4,
                                        height: 1,
                                        child: DecoratedBox(
                                          decoration: BoxDecoration(
                                              color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                            Center(
                              child: Transform.rotate(
                                angle: 1.2,
                                child: const Icon(Icons.local_airport_rounded,
                                    color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const ThickContainer(),
                      const Spacer(),
                      Text(
                        ticket['to']['code'].toString(),
                        style: AppStyles.headlineStyle3
                            .copyWith(color: Colors.white),
                      )
                    ],
                  ),
                  const Gap(4),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 100,
                        child: Text(
                          ticket['from']['name'].toString(),
                          style: AppStyles.headlineStyle4
                              .copyWith(color: Colors.white),
                        ),
                      ),
                      Text(
                        ticket['flying_time'].toString(),
                        style: AppStyles.headlineStyle4
                            .copyWith(color: Colors.white),
                      ),
                      SizedBox(
                        width: 100,
                        child: Text(
                          ticket['to']['name'].toString(),
                          textAlign: TextAlign.end,
                          style: AppStyles.headlineStyle4
                              .copyWith(color: Colors.white),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            // ! showing the orange part of the card/ticket
            Container(
              color: AppStyles.orangeColor,
              padding: const EdgeInsets.symmetric(vertical: 4),
              child: Row(
                children: [
                  SizedBox(
                    height: AppLayout.getHeight(20),
                    width: AppLayout.getWidth(10),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: const Color(0xFFEEEDF2),
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(AppLayout.getWidth(10)),
                          bottomRight: Radius.circular(AppLayout.getHeight(10)),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: LayoutBuilder(builder:
                          (BuildContext context, BoxConstraints constraints) {
                        return Flex(
                          direction: Axis.horizontal,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.max,
                          children: List.generate(
                            (constraints.constrainWidth() / 6).floor(),
                            (index) => SizedBox(
                              width: AppLayout.getWidth(2),
                              height: AppLayout.getHeight(2),
                              child: const DecoratedBox(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(1))),
                              ),
                            ),
                          ),
                        );
                      }),
                    ),
                  ),
                  SizedBox(
                    height: AppLayout.getHeight(20),
                    width: AppLayout.getWidth(10),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: const Color(0xFFEEEDF2),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(AppLayout.getWidth(10)),
                          bottomLeft: Radius.circular(AppLayout.getWidth(10)),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: AppStyles.orangeColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(AppLayout.getHeight(16)),
                  bottomRight: Radius.circular(AppLayout.getHeight(16)),
                ),
              ),
              padding: EdgeInsets.only(
                left: AppLayout.getWidth(16),
                right: AppLayout.getWidth(16),
                bottom: AppLayout.getHeight(16),
                top: AppLayout.getHeight(4),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(ticket['date'].toString(),
                              style: AppStyles.headlineStyle3
                                  .copyWith(color: Colors.white)),
                          const Gap(4),
                          Text('Date',
                              style: AppStyles.headlineStyle4
                                  .copyWith(color: Colors.white)),
                        ],
                      ),
                      const Spacer(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(ticket['departure_time'].toString(),
                              style: AppStyles.headlineStyle3
                                  .copyWith(color: Colors.white)),
                          const Gap(4),
                          Text('Departure Time',
                              style: AppStyles.headlineStyle4
                                  .copyWith(color: Colors.white)),
                        ],
                      ),
                      const Spacer(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(ticket['number'].toString(),
                              style: AppStyles.headlineStyle3
                                  .copyWith(color: Colors.white)),
                          const Gap(4),
                          Text('Number',
                              textAlign: TextAlign.end,
                              style: AppStyles.headlineStyle4
                                  .copyWith(color: Colors.white)),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
