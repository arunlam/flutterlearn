import 'package:bookticket/components/column_layout.dart';
import 'package:bookticket/components/layout_builder_widget.dart';
import 'package:bookticket/utils/app_layout.dart';
import 'package:bookticket/utils/app_styles.dart';
import 'package:bookticket/components/thick_container.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/utils.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool? isColor;
  const TicketView({Key? key, required this.ticket, this.isColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width * 0.85,
      height: AppLayout.getHeight(GetPlatform.isAndroid == true ? 167 : 170),
      child: Container(
        margin: EdgeInsets.only(right: AppLayout.getWidth(16)),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // ! showing the blue part of the card/ticket
            Container(
              decoration: BoxDecoration(
                color: isColor == null ? const Color(0xFF526799) : Colors.white,
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
                      Text(ticket['from']['code'].toString(),
                          style: isColor == null
                              ? AppStyles.headlineStyle3
                                  .copyWith(color: Colors.white)
                              : AppStyles.headlineStyle3),
                      const Spacer(),
                      ThickContainer(
                        isColor: isColor,
                      ),
                      Expanded(
                        child: Stack(
                          children: [
                            const SizedBox(
                              height: 24,
                              child: AppLayoutBuilderWidget(sections: 8),
                            ),
                            Center(
                              child: Transform.rotate(
                                angle: 1.2,
                                child: Icon(Icons.local_airport_rounded,
                                    color: isColor == null
                                        ? Colors.white
                                        : const Color(0xFF8ACCF7)),
                              ),
                            ),
                          ],
                        ),
                      ),
                      ThickContainer(isColor: isColor),
                      const Spacer(),
                      Text(
                        ticket['to']['code'].toString(),
                        style: isColor == null
                            ? AppStyles.headlineStyle3
                                .copyWith(color: Colors.white)
                            : AppStyles.headlineStyle3,
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
                          style: isColor == null
                              ? AppStyles.headlineStyle4
                                  .copyWith(color: Colors.white)
                              : AppStyles.headlineStyle4,
                        ),
                      ),
                      Text(
                        ticket['flying_time'].toString(),
                        style: isColor == null
                            ? AppStyles.headlineStyle4
                                .copyWith(color: Colors.white)
                            : AppStyles.headlineStyle4,
                      ),
                      SizedBox(
                        width: 100,
                        child: Text(
                          ticket['to']['name'].toString(),
                          textAlign: TextAlign.end,
                          style: isColor == null
                              ? AppStyles.headlineStyle4
                                  .copyWith(color: Colors.white)
                              : AppStyles.headlineStyle4,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            // ! showing the orange part of the card/ticket
            Container(
              color: isColor == null ? AppStyles.orangeColor : Colors.white,
              padding: const EdgeInsets.symmetric(vertical: 4),
              child: Row(
                children: [
                  SizedBox(
                    height: AppLayout.getHeight(20),
                    width: AppLayout.getWidth(10),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: isColor == null
                            ? Colors.grey.shade200
                            : Colors.white,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(AppLayout.getWidth(10)),
                          bottomRight: Radius.circular(AppLayout.getHeight(10)),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(6.0),
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
                              child: DecoratedBox(
                                decoration: BoxDecoration(
                                    color: isColor == null
                                        ? Colors.white
                                        : Colors.grey.shade300,
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(
                                            AppLayout.getHeight(1)))),
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
                        color: isColor == null
                            ? Colors.grey.shade200
                            : Colors.white,
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
                color: isColor == null ? AppStyles.orangeColor : Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(
                      AppLayout.getHeight(isColor == null ? 16 : 0)),
                  bottomRight: Radius.circular(
                      AppLayout.getHeight(isColor == null ? 16 : 0)),
                ),
              ),
              padding: EdgeInsets.only(
                left: AppLayout.getWidth(16),
                right: AppLayout.getWidth(16),
                bottom: AppLayout.getHeight(15),
                top: AppLayout.getHeight(8),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColumnLayout(
                        firstText: ticket['date'].toString(),
                        secondText: 'Date',
                        alignment: CrossAxisAlignment.start,
                        isColor: isColor,
                      ),
                      AppColumnLayout(
                        firstText: ticket['departure_time'].toString(),
                        secondText: 'Departure time',
                        alignment: CrossAxisAlignment.center,
                        isColor: isColor,
                      ),
                      AppColumnLayout(
                        firstText: ticket['number'].toString(),
                        secondText: 'Number',
                        alignment: CrossAxisAlignment.end,
                        isColor: isColor,
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
