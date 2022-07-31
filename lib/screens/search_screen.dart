import 'package:bookticket/components/ticket_tabs.dart';
import 'package:bookticket/utils/app_layout.dart';
import 'package:bookticket/components/icon_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:bookticket/utils/app_styles.dart';
import 'package:gap/gap.dart';

import '../components/double_text_widget.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getWidth(20),
            vertical: AppLayout.getHeight(20)),
        children: [
          Gap(AppLayout.getHeight(40)),
          Text(
            "Where are\nyou looking for?",
            style: AppStyles.headlineStyle1
                .copyWith(fontSize: AppLayout.getWidth(35)),
          ),
          Gap(AppLayout.getHeight(20)),
          /* Tabs */
          const AppTicketTabs(firstTab: 'Airline Tickets', secondTab: 'Hotels'),
          Gap(AppLayout.getHeight(25)),
          const AppIconText(
              icon: Icons.flight_takeoff_rounded, text: 'Departure'),
          Gap(AppLayout.getHeight(20)),
          const AppIconText(icon: Icons.flight_land_rounded, text: 'Arrival'),
          Gap(AppLayout.getHeight(25)),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: AppLayout.getWidth(16),
              vertical: AppLayout.getHeight(16),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppLayout.getWidth(10)),
              color: const Color(0xD91130CE),
            ),
            child: Center(
              child: Text(
                'Find tickets',
                style: AppStyles.textStyle.copyWith(color: Colors.white),
              ),
            ),
          ),
          Gap(AppLayout.getHeight(25)),
          const AppDoubleTextWidget(
              bigText: 'Upcoming Flights', smallText: 'View All'),
          Gap(AppLayout.getHeight(16)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: AppLayout.getWidth(8),
                    vertical: AppLayout.getHeight(8)),
                // height: AppLayout.getHeight(400),
                width: size.width * 0.42,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(
                    AppLayout.getHeight(12),
                  ),
                ),
                child: Column(
                  children: [
                    Container(
                      height: AppLayout.getHeight(190),
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/sit.jpg"),
                        ),
                        borderRadius: BorderRadius.circular(
                          AppLayout.getHeight(12),
                        ),
                      ),
                    ),
                    Gap(AppLayout.getHeight(12)),
                    Text(
                      "20% discount on the early booking of this flight. Don't miss.",
                      style: AppStyles.headlineStyle2,
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: size.width * 0.42,
                        height: AppLayout.getHeight(180),
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(AppLayout.getHeight(12)),
                          color: const Color(0xFF3AB8B8),
                        ),
                        padding: EdgeInsets.symmetric(
                          horizontal: AppLayout.getWidth(12),
                          vertical: AppLayout.getHeight(12),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Discount\nfor survey",
                              style: AppStyles.headlineStyle2.copyWith(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            Gap(AppLayout.getHeight(8)),
                            Text(
                              "Take the survey about our services and get discount",
                              style: AppStyles.headlineStyle2.copyWith(
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                                fontSize: 18,
                              ),
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
                            color: Colors.transparent,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Gap(AppLayout.getHeight(16)),
                  Container(
                    width: size.width * 0.42,
                    height: AppLayout.getHeight(144),
                    padding: EdgeInsets.symmetric(
                      horizontal: AppLayout.getWidth(12),
                      vertical: AppLayout.getHeight(12),
                    ),
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(AppLayout.getHeight(12)),
                      color: const Color(0xFF3AB8B8),
                    ),
                    child: Column(
                      children: [
                        Text(
                          'Take love',
                          style: AppStyles.headlineStyle2.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Gap(AppLayout.getWidth(16)),
                        RichText(
                          text: const TextSpan(
                            children: [
                              TextSpan(
                                  text: '😍', style: TextStyle(fontSize: 30)),
                              TextSpan(
                                  text: '🥰', style: TextStyle(fontSize: 50)),
                              TextSpan(
                                  text: '😘', style: TextStyle(fontSize: 30)),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
