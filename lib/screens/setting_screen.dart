import 'package:bookticket/components/column_layout.dart';
import 'package:bookticket/components/layout_builder_widget.dart';
import 'package:bookticket/utils/app_layout.dart';
import 'package:bookticket/utils/app_styles.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(24)),
        children: [
          Gap(AppLayout.getHeight(48)),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /* Profile Image */
              Container(
                height: AppLayout.getHeight(86),
                width: AppLayout.getWidth(86),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppLayout.getWidth(16)),
                  image: const DecorationImage(
                    image: AssetImage("assets/images/img_1.png"),
                  ),
                ),
              ),
              Gap(AppLayout.getHeight(16)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Book Tickets', style: AppStyles.headlineStyle1),
                  Gap(AppLayout.getHeight(4)),
                  Text(
                    'New-York',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey.shade500,
                    ),
                  ),
                  Gap(AppLayout.getHeight(4)),
                  /* User License */
                  Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: AppLayout.getWidth(8),
                        vertical: AppLayout.getHeight(8)),
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(AppLayout.getHeight(100)),
                      color: const Color(0xFFFEF4F3),
                    ),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(AppLayout.getHeight(3)),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xFF526799),
                          ),
                          child: const Icon(
                            FluentSystemIcons.ic_fluent_shield_filled,
                            color: Colors.white,
                            size: 15,
                          ),
                        ),
                        Gap(AppLayout.getWidth(8)),
                        const Text(
                          "Premium Status",
                          style: TextStyle(
                            color: Color(0xFF536799),
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
              const Spacer(),
              Column(
                children: [
                  InkWell(
                    onTap: () {
                      print("You tabbed");
                    },
                    child: Text(
                      "Edit",
                      style: AppStyles.textStyle.copyWith(
                        color: AppStyles.primaryColor,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Gap(AppLayout.getHeight(8)),
          Divider(color: Colors.grey.shade300),
          Stack(
            children: [
              Container(
                height: AppLayout.getHeight(90),
                decoration: BoxDecoration(
                  color: AppStyles.primaryColor,
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(16)),
                ),
              ),
              Positioned(
                right: -45,
                top: -40,
                child: Container(
                  padding: EdgeInsets.all(AppLayout.getHeight(30)),
                  height: AppLayout.getHeight(90),
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    shape: BoxShape.circle,
                    border:
                        Border.all(width: 18, color: const Color(0xFF264CD2)),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: AppLayout.getWidth(16),
                    vertical: AppLayout.getHeight(20)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      maxRadius: 24,
                      backgroundColor: Colors.white,
                      child: Icon(
                        FluentSystemIcons.ic_fluent_lightbulb_filament_filled,
                        color: AppStyles.primaryColor,
                        size: 24,
                      ),
                    ),
                    Gap(AppLayout.getWidth(8)),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'You\'v got a new reward.',
                          style: AppStyles.headlineStyle2.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'You have 95 flights in a year.',
                          style: AppStyles.headlineStyle4.copyWith(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: Colors.white.withOpacity(0.9),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
          Gap(AppLayout.getHeight(24)),
          Text("Accumulated miles", style: AppStyles.headlineStyle2),
          Gap(AppLayout.getHeight(24)),
          Container(
            padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(16)),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  AppLayout.getHeight(16),
                ),
                color: AppStyles.bgColor,
                boxShadow: [
                  BoxShadow(
                      blurRadius: 2,
                      color: Colors.grey.shade100,
                      spreadRadius: 4),
                ]),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding:
                      EdgeInsets.symmetric(vertical: AppLayout.getHeight(16)),
                  child: Text(
                    '192,802',
                    style: AppStyles.textStyle
                        .copyWith(fontSize: 45, fontWeight: FontWeight.w600),
                  ),
                ),
                Gap(AppLayout.getHeight(16)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Miles accrued',
                        style: AppStyles.headlineStyle4.copyWith(fontSize: 16)),
                    Text('31 July 2022',
                        style: AppStyles.headlineStyle4.copyWith(fontSize: 16)),
                  ],
                ),
                Gap(AppLayout.getHeight(4)),
                Divider(color: Colors.grey.shade300),
                Gap(AppLayout.getHeight(4)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    AppColumnLayout(
                      firstText: "23,042",
                      secondText: "Miles",
                      alignment: CrossAxisAlignment.start,
                      isColor: false,
                    ),
                    AppColumnLayout(
                      firstText: "Airline CO",
                      secondText: "Received from",
                      alignment: CrossAxisAlignment.end,
                      isColor: false,
                    ),
                  ],
                ),
                Gap(AppLayout.getHeight(16)),
                const AppLayoutBuilderWidget(sections: 8, isColor: false),
                Gap(AppLayout.getHeight(16)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    AppColumnLayout(
                      firstText: "24",
                      secondText: "Miles",
                      alignment: CrossAxisAlignment.start,
                      isColor: false,
                    ),
                    AppColumnLayout(
                      firstText: "McDonal's",
                      secondText: "Received from",
                      alignment: CrossAxisAlignment.end,
                      isColor: false,
                    ),
                  ],
                ),
                Gap(AppLayout.getHeight(16)),
                const AppLayoutBuilderWidget(sections: 8, isColor: false),
                Gap(AppLayout.getHeight(16)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    AppColumnLayout(
                      firstText: "53,340",
                      secondText: "Miles",
                      alignment: CrossAxisAlignment.start,
                      isColor: false,
                    ),
                    AppColumnLayout(
                      firstText: "DBestech",
                      secondText: "Received from",
                      alignment: CrossAxisAlignment.end,
                      isColor: false,
                    ),
                  ],
                ),
                Gap(AppLayout.getHeight(16)),
                // const AppLayoutBuilderWidget(sections: 8, isColor: false),
                // Gap(AppLayout.getHeight(16)),
              ],
            ),
          ),
          Gap(AppLayout.getHeight(16)),
          InkWell(
            onTap: () {
              print("you tabbed.");
            },
            child: Center(
              child: Text(
                "How to get more miles",
                style: AppStyles.textStyle.copyWith(
                    color: AppStyles.primaryColor, fontWeight: FontWeight.w500),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
