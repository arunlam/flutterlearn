import 'package:bookticket/screens/hotel_screen.dart';
import 'package:bookticket/screens/ticket_view.dart';
import 'package:bookticket/utils/app_info_list.dart';
import 'package:bookticket/utils/app_styles.dart';
import 'package:bookticket/components/double_text_widget.dart';
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
                const AppDoubleTextWidget(
                    bigText: 'Upcoming Flights', smallText: 'View All'),
              ],
            ),
          ),
          const Gap(16),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 16),
            child: Row(
              children: ticketList.map((e) => TicketView(ticket: e)).toList(),
            ),
          ),
          // const Gap(8),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: const AppDoubleTextWidget(
                bigText: 'Hotels', smallText: 'View All'),
          ),
          const Gap(8),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 16),
            child: Row(
              children: hotelList.map((e) => HotelScreen(hotel: e)).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
