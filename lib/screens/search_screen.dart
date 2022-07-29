import 'package:bookticket/utils/app_layout.dart';
import 'package:bookticket/widgets/icon_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:bookticket/utils/app_styles.dart';
import 'package:gap/gap.dart';

import '../widgets/double_text_widget.dart';

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
          FittedBox(
            child: Container(
              padding: EdgeInsets.all(AppLayout.getHeight(3.5)),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppLayout.getHeight(50)),
                color: const Color(0xFFF4F6FD),
              ),
              child: Row(children: [
                /* Airline tickets */
                Container(
                  width: AppLayout.getScreenWidth() * AppLayout.getWidth(0.44),
                  padding:
                      EdgeInsets.symmetric(vertical: AppLayout.getHeight(8)),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.horizontal(
                        left: Radius.circular(AppLayout.getHeight(50))),
                    color: Colors.white,
                  ),
                  child: const Center(child: Text('Airline tickets')),
                ),
                /* Hotels */
                Container(
                  width: AppLayout.getScreenWidth() * AppLayout.getWidth(0.44),
                  padding:
                      EdgeInsets.symmetric(vertical: AppLayout.getHeight(8)),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.horizontal(
                        right: Radius.circular(AppLayout.getHeight(50))),
                    color: Colors.transparent,
                  ),
                  child: const Center(child: Text('Hotels')),
                ),
              ]),
            ),
          ),
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
            children: [
              Container(
                height: AppLayout.getHeight(400),
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
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
