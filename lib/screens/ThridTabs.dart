import 'package:flutter/material.dart';


class TabsScreen extends StatelessWidget {
  const TabsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 3, child:Scaffold(
      appBar: AppBar(title:Text("TabsScreen"),
        bottom: TabBar(
          tabs: [
            Tab(text: 'Dog',icon: Icon(Icons.home),),
            Tab(text: 'Cat',icon:Icon(Icons.account_tree_sharp)),
            Tab(text: 'Tiger',icon:Icon(Icons.dangerous))

          ],
        ),),
      body: TabBarView(
        children: [
          Column(children: [Text("wew"),Text("data")],),
          Center(child: Text("pikachu2"),),
          Center(child: Text("pikachu3"),),

        ],
      ),
    )
    );
  }
}
