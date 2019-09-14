import 'package:flutter/material.dart';

class HCPTab extends StatefulWidget {
  HCPTab({Key key}) : super(key: key);

  _HCPTabState createState() => _HCPTabState();
}

class _HCPTabState extends State<HCPTab> with TickerProviderStateMixin {
  bool _expanded = false;
  bool _refresh = true;
  @override
  final List<Widget> tab = [
    Tab(
      text: 'Handicaps',
    ),
    Tab(
      text: 'Rating List',
    ),
  ];
  TabController _nestedTabController;
  @override
  void initState() {
    super.initState();
    _nestedTabController = new TabController(length: 2, vsync: this);
  }

  List polyTrack = [
    {
      "title": "Class 3 - 1700M (Polytrac) Prize Money \$70,000",
      "contents": [
        {
          "one": "Viviano",
          "two": "796644",
          "three": "E1",
          "four": "60",
        },
        {
          "one": "Viviano",
          "two": "796644",
          "three": "E1",
          "four": "60",
        },
        {
          "one": "Viviano",
          "two": "796644",
          "three": "E1",
          "four": "60",
        },
        {
          "one": "Viviano",
          "two": "796644",
          "three": "E1",
          "four": "60",
        }
      ]
    },
    {
      "title": "Class 3 - 1700M (Polytrac) Prize Money \$70,000",
      "contents": [
        {
          "one": "Viviano",
          "two": "796644",
          "three": "E1",
          "four": "60",
        },
        {
          "one": "Viviano",
          "two": "796644",
          "three": "E1",
          "four": "60",
        },
        {
          "one": "Viviano",
          "two": "796644",
          "three": "E1",
          "four": "60",
        },
        {
          "one": "Viviano",
          "two": "796644",
          "three": "E1",
          "four": "60",
        }
      ]
    },
    {
      "title": "Class 3 - 1700M (Polytrac) Prize Money \$70,000",
      "contents": [
        {
          "one": "Viviano",
          "two": "796644",
          "three": "E1",
          "four": "60",
        },
        {
          "one": "Viviano",
          "two": "796644",
          "three": "E1",
          "four": "60",
        },
        {
          "one": "Viviano",
          "two": "796644",
          "three": "E1",
          "four": "60",
        },
        {
          "one": "Viviano",
          "two": "796644",
          "three": "E1",
          "four": "60",
        }
      ]
    },
    {
      "title": "Class 3 - 1700M (Polytrac) Prize Money \$70,000",
      "contents": [
        {
          "one": "Viviano",
          "two": "796644",
          "three": "E1",
          "four": "60",
        },
        {
          "one": "Viviano",
          "two": "796644",
          "three": "E1",
          "four": "60",
        },
        {
          "one": "Viviano",
          "two": "796644",
          "three": "E1",
          "four": "60",
        },
        {
          "one": "Viviano",
          "two": "796644",
          "three": "E1",
          "four": "60",
        }
      ]
    },
    {
      "title": "Class 3 - 1700M (Polytrac) Prize Money \$70,000",
      "contents": [
        {
          "one": "Viviano",
          "two": "796644",
          "three": "E1",
          "four": "60",
        },
        {
          "one": "Viviano",
          "two": "796644",
          "three": "E1",
          "four": "60",
        },
        {
          "one": "Viviano",
          "two": "796644",
          "three": "E1",
          "four": "60",
        },
        {
          "one": "Viviano",
          "two": "796644",
          "three": "E1",
          "four": "60",
        }
      ]
    },
    {
      "title": "Class 3 - 1700M (Polytrac) Prize Money \$70,000",
      "contents": [
        {
          "one": "Viviano",
          "two": "796644",
          "three": "E1",
          "four": "60",
        },
        {
          "one": "Viviano",
          "two": "796644",
          "three": "E1",
          "four": "60",
        },
        {
          "one": "Viviano",
          "two": "796644",
          "three": "E1",
          "four": "60",
        },
        {
          "one": "Viviano",
          "two": "796644",
          "three": "E1",
          "four": "60",
        }
      ]
    },
    {
      "title": "Class 3 - 1700M (Polytrac) Prize Money \$70,000",
      "contents": [
        {
          "one": "Viviano",
          "two": "796644",
          "three": "E1",
          "four": "60",
        },
        {
          "one": "Viviano",
          "two": "796644",
          "three": "E1",
          "four": "60",
        },
        {
          "one": "Viviano",
          "two": "796644",
          "three": "E1",
          "four": "60",
        },
        {
          "one": "Viviano",
          "two": "796644",
          "three": "E1",
          "four": "60",
        }
      ]
    },
  ];
  void setExpanded(value) {
    setState(() {
      _expanded = value;
    });
  }

  Widget build(BuildContext context) {
    return new Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Container(
          // height: 60,
          color: Color.fromRGBO(118, 51, 152, 1),
          width: MediaQuery.of(context).size.width,
          alignment: Alignment(-1.0, -1.0),
          child: TabBar(
            indicatorColor: Colors.white,
            labelColor: Colors.white,
            unselectedLabelColor: Colors.white,
            controller: _nestedTabController,
            tabs: tab,
          ),
        ),
        Container(
          color: Color.fromRGBO(225, 217, 229, 1),
          width: MediaQuery.of(context).size.width,
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              RaisedButton(onPressed: () {}, child: Text("By Race")),
              RaisedButton(onPressed: () {}, child: Text("By Trainer")),
              Text("Today"),
              Text("9/13/2019"),
              Icon(Icons.date_range),
              Icon(Icons.more_vert),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Container(
                margin: EdgeInsets.all(5),
                child: RaisedButton(
                    onPressed: () {
                      setExpanded(true);
                    },
                    child: Text("Expand All"))),
            Container(
                margin: EdgeInsets.all(5),
                child: RaisedButton(
                    onPressed: () {
                      setExpanded(false);
                    },
                    child: Text("Collapse All"))),
          ],
        ),
        Expanded(
          child: !_refresh
              ? SizedBox()
              : ListView(
                  // shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  children: polyTrack
                      .map<Widget>((element) => ExpansionTile(
                            key: GlobalKey(),
                            initiallyExpanded: _expanded,
                            title: Text("${element["title"]}",
                                style: TextStyle(fontSize: 13)),
                            children: element["contents"]
                                .map<Widget>((content) => Container(
                                      // height: 30,
                                      child: Row(
                                        children: <Widget>[
                                          Expanded(
                                            child: Container(
                                              margin: EdgeInsets.only(left: 20),
                                              child: Row(
                                                children: <Widget>[
                                                  Text("${content["one"]}"),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: Container(
                                                margin:
                                                    EdgeInsets.only(bottom: 10),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: <Widget>[
                                                    Text("${content["two"]}"),
                                                    Text("${content["three"]}"),
                                                    Container(
                                                      margin: EdgeInsets.only(
                                                          right: 10),
                                                      child: Text(
                                                          "${content["four"]}"),
                                                    )
                                                  ],
                                                )),
                                          ),
                                        ],
                                      ),
                                    ))
                                .toList(),
                          ))
                      .toList(),
                ),
        ),
      ],
    );
  }
}
