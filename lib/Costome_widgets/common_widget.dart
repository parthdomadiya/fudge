import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CommonWidget {
  static Widget costomeChart(
      {required bool progressIcon, required BuildContext context}) {
    return ListTile(
        contentPadding: EdgeInsets.all(0),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("John Doe"),
            Text("80,000 AED"),
          ],
        ),
        subtitle: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "United Kingdom",
              style: Theme.of(context).textTheme.headline2!,
            ),
            Text(
              "11 Aug 2021",
              style: Theme.of(context).textTheme.headline2!,
            ),
          ],
        ),
        leading: Container(
          height: 42,
          width: 42,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Color(0xff28323c)),
          child: Icon(
            FontAwesomeIcons.user,
            color: Colors.white,
            size: 16,
          ),
        ),
        trailing: progressIcon
            ? Image.asset(
                'assets/progress.png',
                height: 15,
              )
            : CircleAvatar(
                backgroundColor: Color(0xffaade8f),
                radius: 8,
                child: Center(
                  child: Icon(
                    Icons.done_rounded,
                    size: 12,
                    color: Theme.of(context).backgroundColor,
                  ),
                ),
              ));
  }
}
