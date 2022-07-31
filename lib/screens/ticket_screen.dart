import 'package:barcode_widget/barcode_widget.dart';
import 'package:bookticket/components/column_layout.dart';
import 'package:bookticket/components/ticket_tabs.dart';
import 'package:bookticket/screens/ticket_view.dart';
import 'package:bookticket/utils/app_info_list.dart';
import 'package:bookticket/utils/app_layout.dart';
import 'package:bookticket/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../components/layout_builder_widget.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.symmetric(
                horizontal: AppLayout.getWidth(24),
                vertical: AppLayout.getHeight(24)),
            children: [
              Gap(AppLayout.getHeight(40)),
              Text("Tickets", style: AppStyles.headlineStyle1),
              Gap(AppLayout.getHeight(24)),
              const AppTicketTabs(firstTab: "Upcoming", secondTab: "Previous"),
              Gap(AppLayout.getHeight(24)),
              Container(
                padding: EdgeInsets.only(left: AppLayout.getWidth(16)),
                child: TicketView(ticket: ticketList[0], isColor: true),
              ),
              const SizedBox(height: 1),
              Container(
                color: Colors.white,
                padding: EdgeInsets.symmetric(
                    horizontal: AppLayout.getWidth(16),
                    vertical: AppLayout.getHeight(16)),
                margin:
                    EdgeInsets.symmetric(horizontal: AppLayout.getWidth(16)),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        AppColumnLayout(
                          firstText: "Flutter DB",
                          secondText: "Passenger",
                          alignment: CrossAxisAlignment.start,
                          isColor: false,
                        ),
                        AppColumnLayout(
                          firstText: "5221 346869",
                          secondText: "Passport",
                          alignment: CrossAxisAlignment.end,
                          isColor: false,
                        ),
                      ],
                    ),
                    Gap(AppLayout.getHeight(20)),
                    const AppLayoutBuilderWidget(
                      sections: 8,
                      isColor: false,
                      width: 4,
                    ),
                    Gap(AppLayout.getHeight(20)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        AppColumnLayout(
                          firstText: "043 9990 0923",
                          secondText: "Number of ticket",
                          alignment: CrossAxisAlignment.start,
                          isColor: false,
                        ),
                        AppColumnLayout(
                          firstText: "B2207-Z451",
                          secondText: "Booking code",
                          alignment: CrossAxisAlignment.end,
                          isColor: false,
                        ),
                      ],
                    ),
                    Gap(AppLayout.getHeight(20)),
                    const AppLayoutBuilderWidget(
                      sections: 8,
                      isColor: false,
                      width: 4,
                    ),
                    Gap(AppLayout.getHeight(20)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Image.asset("assets/images/visa.png",
                                    scale: 11),
                                Text(" *** 2426",
                                    style: AppStyles.headlineStyle3),
                              ],
                            ),
                            Gap(AppLayout.getHeight(5)),
                            Text('Payment method',
                                style: AppStyles.headlineStyle4)
                          ],
                        ),
                        Column(
                          children: const [
                            AppColumnLayout(
                              firstText: "\$249.99",
                              secondText: "Price",
                              alignment: CrossAxisAlignment.end,
                              isColor: false,
                            )
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 1),
                  ],
                ),
              ),
              /* bar code */
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(AppLayout.getHeight(24)),
                      bottomLeft: Radius.circular(AppLayout.getHeight(24))),
                ),
                margin: EdgeInsets.only(
                    left: AppLayout.getWidth(16),
                    right: AppLayout.getWidth(16)),
                padding: EdgeInsets.only(
                    top: AppLayout.getHeight(8),
                    bottom: AppLayout.getHeight(16)),
                child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: AppLayout.getWidth(16)),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(AppLayout.getHeight(0)),
                    child: BarcodeWidget(
                      data: 'https://github.com/martinovovo',
                      drawText: false,
                      color: AppStyles.textColor,
                      barcode: Barcode.code128(),
                      width: double.infinity,
                      height: AppLayout.getHeight(70),
                    ),
                  ),
                ),
              ),
              Gap(AppLayout.getHeight(16)),
              Container(
                padding: EdgeInsets.only(
                  left: AppLayout.getWidth(16),
                ),
                child: TicketView(
                  ticket: ticketList[0],
                ),
              ),
            ],
          ),
          Positioned(
            left: AppLayout.getWidth(28),
            top: AppLayout.getHeight(280),
            child: Container(
              padding: EdgeInsets.all(AppLayout.getWidth(4)),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: AppStyles.primaryColor, width: 2),
              ),
              child: CircleAvatar(
                maxRadius: 4,
                backgroundColor: AppStyles.primaryColor,
              ),
            ),
          ),
          Positioned(
            right: AppLayout.getWidth(28),
            top: AppLayout.getHeight(280),
            child: Container(
              padding: EdgeInsets.all(AppLayout.getWidth(4)),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: AppStyles.primaryColor, width: 2),
              ),
              child: CircleAvatar(
                maxRadius: 4,
                backgroundColor: AppStyles.primaryColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
