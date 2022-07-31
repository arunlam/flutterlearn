import 'package:flutter/material.dart';

import '../utils/app_layout.dart';

class AppTicketTabs extends StatelessWidget {
  final String firstTab;
  final String secondTab;
  const AppTicketTabs(
      {Key? key, required this.firstTab, required this.secondTab})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FittedBox(
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
            padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(8)),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.horizontal(
                  left: Radius.circular(AppLayout.getHeight(50))),
              color: Colors.white,
            ),
            child: Center(child: Text(firstTab)),
          ),
          /* Hotels */
          Container(
            width: AppLayout.getScreenWidth() * AppLayout.getWidth(0.44),
            padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(8)),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.horizontal(
                  right: Radius.circular(AppLayout.getHeight(50))),
              color: Colors.transparent,
            ),
            child: Center(child: Text(secondTab)),
          ),
        ]),
      ),
    );
  }
}
