import 'package:bookticket/screens/ticket_view.dart';
import 'package:bookticket/utils/app_styles.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Column(
              children: [
                const Gap(42),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Good Morning',
                          style: AppStyles.headlineStyle3,
                        ),
                        const Gap(8.0),
                        Text(
                          'Book Tickets',
                          style: AppStyles.headlineStyle1,
                        ),
                      ],
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                          fit: BoxFit.fitHeight,
                          image: AssetImage('assets/images/img_1.png'),
                        ),
                      ),
                    ),
                  ],
                ),
                const Gap(25),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: const Color(0xFFF4F6FD),
                  ),
                  child: Row(
                    children: [
                      const Icon(
                        FluentSystemIcons.ic_fluent_search_regular,
                        color: Color(0xFFBFC205),
                      ),
                      Text('search', style: AppStyles.headlineStyle4),
                    ],
                  ),
                ),
                const Gap(25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Upcoming Flights',
                      style: AppStyles.headlineStyle2,
                    ),
                    InkWell(
                      onTap: () {
                        print('you tapped.');
                      },
                      child: Text(
                        'View All',
                        style: AppStyles.textStyle
                            .copyWith(color: AppStyles.primaryColor),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Gap(16),
          Container(
            width: 200,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.only(left: 16),
              child: Row(
                children: [
                  TicketView(),
                  TicketView(),
                  TicketView(),
                  TicketView(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
