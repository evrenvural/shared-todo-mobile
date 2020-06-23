import 'package:flutter/material.dart';
import 'package:shared_todo_mobile/core/constant/arguments.dart';
import 'package:shared_todo_mobile/core/constant/route_name.dart';
import 'package:shared_todo_mobile/core/constant/size.dart';

class HomeView extends StatefulWidget {
  HomeView({Key key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
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
          _TitleWidget(),
          Expanded(
            child: _ContextWidget(),
          ),
          _FooterWidget()
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }
}

class _FooterWidget extends StatelessWidget {
  const _FooterWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: dynamicHeight(context, 0.1),
      child: Align(
        alignment: Alignment(-1, 0),
        child: Text("BUldum"),
      ),
    );
  }
}

class _ContextWidget extends StatelessWidget {
  _ContextWidget({Key key}) : super(key: key);

  final List<String> entries = <String>['A', 'B', 'C'];
  final List<int> colorCodes = <int>[600, 500, 100];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: _TodoListContainerWidget(entries: entries, colorCodes: colorCodes),
    );
  }
}

class _TodoListContainerWidget extends StatelessWidget {
  const _TodoListContainerWidget({
    Key key,
    @required this.entries,
    @required this.colorCodes,
  }) : super(key: key);

  final List<String> entries;
  final List<int> colorCodes;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: dynamicHeight(context, 0.5),
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: entries.length,
        itemBuilder: (BuildContext context, int index) {
          return _TodoListWidget(colorCodes: colorCodes, index: index);
        },
        separatorBuilder: (BuildContext context, int index) =>
            const Divider(),
      ),
    );
  }
}

class _TodoListWidget extends StatelessWidget {
  const _TodoListWidget({
    Key key,
    @required this.colorCodes,
    @required this.index
  }) : super(key: key);

  final List<int> colorCodes;
  final int index;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(
          context,
          RouteName.TODO,
          arguments: TodoArgument(index.toString()),
        );
      },
      child: Container(
        margin: EdgeInsets.only(
            left: dynamicWidth(context, 0.05),
            right: dynamicWidth(context, 0.05)),
        width: dynamicWidth(context, 0.7),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.amber[colorCodes[index]],
        ),
        child: Column(children: <Widget>[
          _TodoListSettingsButtonWidget(),
          _TodoListProgressBarWidget(),
          _TodoListBodyWidget(),
          _TodoListFooterWidget()
        ]),
      ),
    );
  }
}

class _TodoListFooterWidget extends StatelessWidget {
  const _TodoListFooterWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Align(
          alignment: Alignment(0.8, 1),
          child: Text("Created By Evren VURAL")),
    );
  }
}

class _TodoListBodyWidget extends StatelessWidget {
  const _TodoListBodyWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: dynamicHeight(context, 0.1)),
      child: Text("ALIŞVERİŞ LİSTESİ"),
    );
  }
}

class _TodoListProgressBarWidget extends StatelessWidget {
  const _TodoListProgressBarWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: dynamicHeight(context, 0.02)),
      width: dynamicWidth(context, 0.6),
      child: Row(
        children: <Widget>[
          Expanded(
              child: LinearProgressIndicator(
            value: 0.25,
          )),
          Container(
              margin: EdgeInsets.only(
                  left: dynamicWidth(context, 0.03)),
              child: Text("%25")),
        ],
      ),
    );
  }
}

class _TodoListSettingsButtonWidget extends StatelessWidget {
  const _TodoListSettingsButtonWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment(1, 0.8),
      child: IconButton(
        icon: Icon(Icons.more_vert),
        onPressed: () {},
      ),
    );
  }
}

class _TitleWidget extends StatelessWidget {
  const _TitleWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomLeft,
      padding: EdgeInsetsDirectional.only(start: dynamicWidth(context, 0.1)),
      height: dynamicHeight(context, 0.1),
      child: Text(
        'Hi, Evren VURAL',
        textAlign: TextAlign.left,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 22,
        ),
      ),
    );
  }
}
