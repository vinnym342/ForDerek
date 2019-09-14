import 'package:flutter/material.dart';
import './tabs/HCP.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        backgroundColor: Color.fromRGBO(105, 43, 135, 1),
        primarySwatch: Colors.deepPurple,
      ),
      home: MyTabbedPage(),
    );
  }
}

class MyTabbedPage extends StatefulWidget {
  const MyTabbedPage({Key key}) : super(key: key);
  @override
  _MyTabbedPageState createState() => _MyTabbedPageState();
}

class _MyTabbedPageState extends State<MyTabbedPage>
    with SingleTickerProviderStateMixin {
  final List<Tab> myTabs = <Tab>[
    Tab(
      text: 'Home',
      icon: Icon(Icons.home),
    ),
    Tab(
      text: 'HCP',
      icon: Icon(Icons.home),
    ),
    Tab(
      text: 'Trial',
      icon: Icon(Icons.flag),
    ),
    Tab(
      text: 'Races',
      icon: Icon(Icons.blur_on),
    ),
    Tab(
      text: 'More',
      icon: Icon(Icons.more_vert),
      // child: Text("More"),
    ),
  ];

  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: myTabs.length);
    _tabController.index = 1;
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Handicaps & ratings"),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: TabBar(
            // isScrollable: true,
            controller: _tabController,
            tabs: myTabs,
          ),
        ),
      ),
      body: TabBarView(controller: _tabController, children: <Widget>[
        Text("Home"),
        HCPTab(),
        Text("Trial"),
        Text("Races"),
        Text("More"),
      ]),
    );
  }
}
