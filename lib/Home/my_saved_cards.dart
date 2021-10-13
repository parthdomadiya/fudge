import 'package:flutter/material.dart';
import 'package:fudge/Costome_widgets/common_widget.dart';

class MySavedCards extends StatefulWidget {
  const MySavedCards({Key? key}) : super(key: key);

  @override
  _MySavedCardsState createState() => _MySavedCardsState();
}

class _MySavedCardsState extends State<MySavedCards> {
  final PageController _pageController = PageController();
  final PageController _listPageController = PageController();
  late TabController _tabController;

  int page = 0;
  int listPage = 0;
  bool isList0 = true;
  bool isList1 = false;
  bool isList2 = false;

  @override
  void dispose() {
    _pageController.dispose();
    _listPageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Center(
              child: Icon(
                Icons.arrow_back,
                color: Theme.of(context).iconTheme.color,
              ),
            ),
          ),
          title: Row(
            children: [
              Text(
                'My saved cards',
              ),
            ],
          ),
          iconTheme: IconThemeData(color: Theme.of(context).iconTheme.color),
          actions: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
              child: Image.asset(
                "assets/Icon material-menu.png",
                height: 15,
                width: 15,
              ),
            ),
          ],
        ),
        body: Column(
          children: [
            Column(
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                  height: 250,
                  child: PageView(
                    children: [
                      Image.asset("assets/Visa Card Copy 00.png"),
                      Image.asset("assets/Visa Card Copy 01.png"),
                    ],
                    // controller: _pageController,
                    onPageChanged: (pageNumbe) {
                      setState(() {
                        page = pageNumbe;
                      });
                    },
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 5,
                      width: page == 0 ? 20 : 10,
                      decoration: BoxDecoration(
                        color: page == 0 ? Colors.black : Colors.grey,
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    SizedBox(width: 8),
                    Container(
                      height: 5,
                      width: page == 1 ? 20 : 10,
                      decoration: BoxDecoration(
                        color: page == 1 ? Colors.black : Colors.grey,
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                    child: Row(
                      children: [
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                isList0 = true;
                                isList1 = false;
                                isList2 = false;
                              });
                            },
                            child: Container(
                              height: 35,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Menu title 1",
                                    style: TextStyle(
                                        fontWeight: isList0
                                            ? FontWeight.bold
                                            : FontWeight.normal,
                                        fontSize: 13),
                                  ),
                                  isList0
                                      ? Container(
                                          color: Colors.black,
                                          height: 3,
                                          // height: listPage == 0 ? 4 : 0,
                                        )
                                      : SizedBox()
                                ],
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                isList0 = false;
                                isList1 = true;
                                isList2 = false;
                              });
                            },
                            child: Container(
                              height: 35,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Menu title 2",
                                    style: TextStyle(
                                        fontWeight: isList1
                                            ? FontWeight.bold
                                            : FontWeight.normal,
                                        fontSize: 13),
                                  ),
                                  isList1
                                      ? Container(
                                          color: Colors.black,
                                          height: 3,
                                          // height: listPage == 1 ? 4 : 0,
                                        )
                                      : SizedBox()
                                ],
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                isList0 = false;
                                isList1 = false;
                                isList2 = true;
                              });
                            },
                            child: Container(
                              height: 35,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Menu title 3",
                                    style: TextStyle(
                                        fontWeight: isList2
                                            ? FontWeight.bold
                                            : FontWeight.normal,
                                        fontSize: 13),
                                  ),
                                  isList2
                                      ? Container(
                                          color: Colors.black,
                                          height: 3,
                                          // width: 25,

                                          // height: listPage == 2 ? 4 : 0,
                                        )
                                      : SizedBox()
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    height: 0,
                    thickness: 2,
                    endIndent: 20,
                    indent: 20,
                  ),
                  Expanded(
                    child: ListView(
                      padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                      children: [
                        isList0
                            ? Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: 20),
                                  Text(
                                    "Recent Transactions".toUpperCase(),
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 13),
                                  ),
                                  CommonWidget.costomeChart(
                                      context: context, progressIcon: true),
                                  CommonWidget.costomeChart(
                                      context: context, progressIcon: false),
                                  CommonWidget.costomeChart(
                                      context: context, progressIcon: false),
                                  CommonWidget.costomeChart(
                                      context: context, progressIcon: false),
                                  CommonWidget.costomeChart(
                                      context: context, progressIcon: false),
                                  CommonWidget.costomeChart(
                                      context: context, progressIcon: false),
                                  CommonWidget.costomeChart(
                                      context: context, progressIcon: false),
                                  CommonWidget.costomeChart(
                                      context: context, progressIcon: false),
                                  CommonWidget.costomeChart(
                                      context: context, progressIcon: false),
                                  CommonWidget.costomeChart(
                                      context: context, progressIcon: false),
                                ],
                              )
                            : isList1
                                ? Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(height: 20),
                                      Text(
                                        "Recent Transactions".toUpperCase(),
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 13),
                                      ),
                                      CommonWidget.costomeChart(
                                          context: context, progressIcon: true),
                                      CommonWidget.costomeChart(
                                          context: context, progressIcon: true),
                                      CommonWidget.costomeChart(
                                          context: context,
                                          progressIcon: false),
                                      CommonWidget.costomeChart(
                                          context: context,
                                          progressIcon: false),
                                      CommonWidget.costomeChart(
                                          context: context,
                                          progressIcon: false),
                                      CommonWidget.costomeChart(
                                          context: context,
                                          progressIcon: false),
                                      CommonWidget.costomeChart(
                                          context: context,
                                          progressIcon: false),
                                      CommonWidget.costomeChart(
                                          context: context,
                                          progressIcon: false),
                                      CommonWidget.costomeChart(
                                          context: context,
                                          progressIcon: false),
                                      CommonWidget.costomeChart(
                                          context: context,
                                          progressIcon: false),
                                    ],
                                  )
                                : Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(height: 20),
                                      Text(
                                        "Recent Transactions".toUpperCase(),
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 13),
                                      ),
                                      CommonWidget.costomeChart(
                                          context: context, progressIcon: true),
                                      CommonWidget.costomeChart(
                                          context: context, progressIcon: true),
                                      CommonWidget.costomeChart(
                                          context: context, progressIcon: true),
                                      CommonWidget.costomeChart(
                                          context: context,
                                          progressIcon: false),
                                      CommonWidget.costomeChart(
                                          context: context,
                                          progressIcon: false),
                                      CommonWidget.costomeChart(
                                          context: context,
                                          progressIcon: false),
                                      CommonWidget.costomeChart(
                                          context: context,
                                          progressIcon: false),
                                      CommonWidget.costomeChart(
                                          context: context,
                                          progressIcon: false),
                                      CommonWidget.costomeChart(
                                          context: context,
                                          progressIcon: false),
                                      CommonWidget.costomeChart(
                                          context: context,
                                          progressIcon: false),
                                    ],
                                  ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ));
  }
}
