import 'package:flutter/material.dart';
import 'package:fudge/Controller/userDetail_Controller.dart';
import 'package:fudge/Costome_widgets/common_widget.dart';
import 'package:fudge/Home/chart.dart';
import 'package:get/get.dart';
import 'package:time_chart/time_chart.dart';
import 'my_saved_cards.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  UserController controller = Get.put(UserController());

  final data = [
    DateTimeRange(
      start: DateTime(2021, 2, 24, 23, 15),
      end: DateTime(2021, 2, 25, 7, 30),
    ),
    DateTimeRange(
      start: DateTime(2021, 2, 22, 1, 55),
      end: DateTime(2021, 2, 22, 9, 12),
    ),
    DateTimeRange(
      start: DateTime(2021, 2, 20, 0, 25),
      end: DateTime(2021, 2, 20, 7, 34),
    ),
    DateTimeRange(
      start: DateTime(2021, 2, 17, 21, 23),
      end: DateTime(2021, 2, 18, 4, 52),
    ),
    DateTimeRange(
      start: DateTime(2021, 2, 13, 6, 32),
      end: DateTime(2021, 2, 13, 13, 12),
    ),
    DateTimeRange(
      start: DateTime(2021, 2, 1, 9, 32),
      end: DateTime(2021, 2, 1, 15, 22),
    ),
    DateTimeRange(
      start: DateTime(2021, 1, 22, 12, 10),
      end: DateTime(2021, 1, 22, 16, 20),
    ),
  ];

  List<String> imageList = [
    "assets/user_01.png",
    "assets/user_02.png",
    "assets/user_03.png",
    "assets/user_04.png",
    "assets/user_01.png",
    "assets/user_02.png",
    "assets/user_03.png",
    "assets/user_04.png",
    "assets/user_01.png",
    "assets/user_02.png",
    "assets/user_03.png",
    "assets/user_04.png",
    "assets/user_01.png",
    "assets/user_02.png",
    "assets/user_03.png",
    "assets/user_04.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      padding: EdgeInsets.all(0),
      children: [
        Container(
          decoration: BoxDecoration(
            color: Color(0xff171d3c),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(15),
              bottomRight: Radius.circular(15),
            ),
          ),
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  Stack(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RichText(
                            text: TextSpan(
                              text: 'Hola, ',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline4!
                                  .copyWith(
                                    color: Theme.of(context).canvasColor,
                                    fontWeight: FontWeight.bold,
                                  ),
                              children: const <TextSpan>[
                                TextSpan(
                                    text: 'Michael',
                                    style: TextStyle(
                                        fontWeight: FontWeight.normal)),
                              ],
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            'Te tenemos excelentes noticias para ti',
                            style:
                                Theme.of(context).textTheme.caption!.copyWith(
                                      color: Theme.of(context).canvasColor,
                                    ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Image.asset(
                              "assets/bell_Icon.png",
                              height: 18,
                            ),
                            SizedBox(width: 20),
                            CircleAvatar(
                              radius: 10,
                              backgroundImage:
                                  AssetImage("assets/profile_00.png"),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 40),
                  Text(
                    '\$56,271.68',
                    style: Theme.of(context).textTheme.headline4!.copyWith(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).canvasColor,
                        ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 5, 0, 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '+\$9,736',
                          style: Theme.of(context)
                              .textTheme
                              .headline4!
                              .copyWith(
                                  color: Theme.of(context).canvasColor,
                                  fontSize: 16),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 20,
                            right: 5,
                          ),
                          child: Icon(
                            Icons.arrow_upward_rounded,
                            color: Color(
                              0xff3cd942,
                            ),
                            size: 19,
                          ),
                        ),
                        Text(
                          '2.3%',
                          style: Theme.of(context)
                              .textTheme
                              .headline4!
                              .copyWith(color: Color(0xff3cd942), fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                  Text("ACCOUNT BALANCE",
                      style: Theme.of(context).textTheme.headline2!),
                  SizedBox(height: 30),
                  SizedBox(
                    height: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              '12',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline4!
                                  .copyWith(
                                      color: Theme.of(context).canvasColor,
                                      fontWeight: FontWeight.bold),
                            ),
                            Text('Following',
                                style: Theme.of(context).textTheme.headline2!),
                          ],
                        ),
                        VerticalDivider(
                          indent: 5,
                          thickness: 1.4,
                          endIndent: 5,
                          color: Colors.grey,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              '36',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline4!
                                  .copyWith(
                                      color: Theme.of(context).canvasColor,
                                      fontWeight: FontWeight.bold),
                            ),
                            Text('Transactions',
                                style: Theme.of(context).textTheme.headline2!),
                          ],
                        ),
                        VerticalDivider(
                          indent: 5,
                          thickness: 1.4,
                          endIndent: 5,
                          color: Colors.grey,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              '4',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline4!
                                  .copyWith(
                                      color: Theme.of(context).canvasColor,
                                      fontWeight: FontWeight.bold),
                            ),
                            Text('     Bills     ',
                                style: Theme.of(context).textTheme.headline2!),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Performance Chart".toUpperCase(),
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
                  ),
                  SizedBox(
                    width: 70,
                    height: 30,
                    child: MaterialButton(
                      padding: EdgeInsets.all(0),
                      color: Color(0xffb4b9d1),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8))),
                      onPressed: () {},
                      child: Text(
                        "More".toUpperCase(),
                        style: Theme.of(context)
                            .textTheme
                            .headline1!
                            .copyWith(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                padding: const EdgeInsets.fromLTRB(5, 5, 0, 5),
                decoration: BoxDecoration(
                    color: Color(0xffcfd3e7),
                    borderRadius: BorderRadius.circular(10)),
                child: TimeChart(
                  data: data,
                  chartType: ChartType.amount,
                  viewMode: ViewMode.weekly,
                  barColor: Color(0xff171d3c),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 0, 20),
          child: Text(
            "Top USERS FROM YOUR COMMUNITY".toUpperCase(),
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
          ),
        ),
        Container(
          height: 90,
          child: GetX<UserController>(builder: (cntrlr) {
            return ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.fromLTRB(15, 0, 10, 0),
              itemCount: cntrlr.lstusers.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.fromLTRB(5, 0, 10, 0),
                  child: Column(
                    children: [
                      Image.asset(
                        imageList[index],
                        width: 55,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(cntrlr.lstusers[index].username.toString()),
                    ],
                  ),
                );
              },
            );
          }),
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Performance Chart".toUpperCase(),
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
                  ),
                  SizedBox(
                    width: 70,
                    height: 30,
                    child: MaterialButton(
                      padding: EdgeInsets.all(0),
                      color: Color(0xffb4b9d1),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8))),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MySavedCards(),
                          ),
                        );
                      },
                      child: Text(
                        "More".toUpperCase(),
                        style: Theme.of(context)
                            .textTheme
                            .headline1!
                            .copyWith(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
              CommonWidget.costomeChart(context: context, progressIcon: true),
              CommonWidget.costomeChart(context: context, progressIcon: false),
              CommonWidget.costomeChart(context: context, progressIcon: false),
              CommonWidget.costomeChart(context: context, progressIcon: false),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                child: Row(
                  children: [
                    Text(
                      "Financial Goals".toUpperCase(),
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
                    ),
                  ],
                ),
              ),
              goalsProgress(value: 0.35, color: Color(0xff147ad6)),
              goalsProgress(value: 0.80, color: Color(0xffec6666)),
              goalsProgress(value: 0.70, color: Color(0xff79d2de)),
            ],
          ),
        ),
      ],
    ));
  }

  Widget goalsProgress({
    required double value,
    required Color color,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 30, 0, 13),
          child: Text("XX of total XX"),
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Container(
            height: 3.5,
            child: LinearProgressIndicator(
              value: value, // percent filled
              valueColor: AlwaysStoppedAnimation(color),
              backgroundColor: Color(0xffb4b9d1),
            ),
          ),
        ),
      ],
    );
  }
}
