import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app/bottom_bar.dart';
import 'package:my_app/menu_page.dart';
import 'package:my_app/menu_page1.dart';
import 'package:my_app/menu_page2.dart';

import './NavBar.dart';

class Dashboard extends StatefulWidget{
  @override
  _Dashboard createState() => _Dashboard();
}

class _Dashboard extends State<Dashboard> with SingleTickerProviderStateMixin{
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        /*leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: Color(0xFF545D68)
          ),
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
        ),*/
        title: Text(
            'Menu',
            style: TextStyle(
                fontFamily: 'Varela',
                fontSize: 20.0,
                color: Color(0xFF545D68)
            )
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.notifications_none, color: Color(0xFF545D68)),
            onPressed: () {},
            tooltip: 'Notifications',
          ),
        ],
      ),

      body: ListView(
        padding: EdgeInsets.only(left: 20.0),
        children: <Widget>[
          SizedBox(
              height: 15.0
          ),
          Text(
              'Categories',
              style: TextStyle(
                  fontFamily: 'Varela',
                  fontSize: 42.0,
                  fontWeight: FontWeight.bold
              )
          ),
          SizedBox(
              height: 15.0
          ),
          TabBar(
              controller: _tabController,
              indicatorColor: Colors.transparent,
              labelColor: Color(0xFFC88D67),
              isScrollable: true,
              labelPadding: EdgeInsets.only(right: 45.0),
              unselectedLabelColor: Color(0xFFCDCDCD),
              tabs: [
                Tab(
                  child: Text(
                      'Veg Snacks',
                      style: TextStyle(
                        fontFamily: 'Varela',
                        fontSize: 21.0,
                      )
                  ),
                ),
                Tab(
                  child: Text(
                      'Non Veg Snacks',
                      style: TextStyle(
                        fontFamily: 'Varela',
                        fontSize: 21.0,
                      )
                  ),
                ),
                Tab(
                  child: Text(
                      'Beverages',
                      style: TextStyle(
                        fontFamily: 'Varela',
                        fontSize: 21.0,
                      )
                  ),
                )
              ]
          ),
          Container(
              height: MediaQuery.of(context).size.height - 50.0,
              width: double.infinity,
              child: TabBarView(
                  controller: _tabController,
                  children: [
                    MenuPage(),
                    MenuPage1(),
                    MenuPage2(),
                  ]
              )
          )
        ],
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color(0xFFF17532),
        child: Icon(Icons.fastfood),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomBar(),
    );
  }
}
