import 'package:flutter/material.dart';
import 'package:shared_todo_mobile/core/constant/size.dart';

class HomeView extends StatefulWidget {
  HomeView({Key key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final List<String> entries = <String>['A', 'B', 'C'];
  final List<int> colorCodes = <int>[600, 500, 100];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.person_add),
            iconSize: 34,
            onPressed: () {},
          )
        ],
      ),
      body: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.bottomLeft,
            padding:
                EdgeInsetsDirectional.only(start: dynamicWidth(context, 0.1)),
            height: dynamicHeight(context, 0.1),
            child: Text(
              'Hi, Evren VURAL',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
            ),
          ),
          Expanded(
            child: Center(
              child: Container(
                height: dynamicHeight(context, 0.5),
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: entries.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      margin: EdgeInsets.only(
                          left: dynamicWidth(context, 0.05),
                          right: dynamicWidth(context, 0.05)),
                      width: dynamicWidth(context, 0.7),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.amber[colorCodes[index]],
                      ),
                      child: Column(children: <Widget>[
                        Align(
                          alignment: Alignment(1, 0.8),
                          child: IconButton(
                            icon: Icon(Icons.more_vert),
                            onPressed: () {},
                          ),
                        ),
                        Center(
                          child: Text("Alışveriş Listesi"),
                        )
                      ]),
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) =>
                      const Divider(),
                ),
              ),
            ),
          ),
          SizedBox(
            height: dynamicHeight(context, 0.1),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }
}
