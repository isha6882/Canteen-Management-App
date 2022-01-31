import 'package:my_app/NavBar.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget{
  @override
  _BottomBarState createState () => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {

  bool addfav = false;

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 6.0,
        color: Colors.transparent,
        elevation: 9.0,
        clipBehavior: Clip.antiAlias,
        child: Container(
            height: 50.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25.0),
                    topRight: Radius.circular(25.0)
                ),
                color: Colors.white
            ),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      height: 50.0,
                      width: MediaQuery.of(context).size.width /2 - 40.0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          /*IconButton(
                              color: Color(0xFF676E79),
                              icon: Icon(addfav ? Icons.home_outlined: Icons.home,),
                              onPressed: (){
                                  setState((){
                                    addfav = !addfav;
                                  }
                                );
                              }
                          ),*/
                          IconButton(
                              color: Color(0xFF676E79),
                              icon: Icon(addfav ? Icons.person: Icons.person_outline,),
                              onPressed: (){
                                setState((){
                                  addfav = !addfav;
                                }
                                );
                                Navigator.push(context,MaterialPageRoute(builder: (context) => SecondActivity())
                                );
                              }
                          ),
                          //Icon(Icons.person_outline, color: Color(0xFF676E79))
                        ],
                      )
                  ),
                  Container(
                      height: 50.0,
                      width: MediaQuery.of(context).size.width /2 - 40.0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          //Icon(Icons.search, color: Color(0xFF676E79)),
                          Icon(Icons.shopping_basket, color: Color(0xFF676E79))
                        ],
                      )
                  ),
                ]
            )
        )
    );
  }
}

class SecondActivity extends StatelessWidget{
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        title: Text(
            'Profile',
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
      drawer: NavBar(),
      body: ListView(
        padding: EdgeInsets.only(left: 20.0),
        children: <Widget>[
          SizedBox(
            height: 25.0,
          ),
          Center(
            child: SizedBox(
              height: 150,
              width: 150,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/profile_pic.jpg"),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 25.0,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
            child: Row(
              children: [
                Text(
                  "Username \n\nabc@gmail.com\n\nContact Details \n\nResidential Address",
                  style: TextStyle(
                    color: Color(0xFF545D68),
                    fontSize: 18.0,
                  ),
                ),
                /*Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: FlatButton(
                    padding: EdgeInsets.all(20.0),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                    color: Colors.white,
                    onPressed: (){},
                    child: Row(
                      children: [
                        Icon(Icons.logout),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                            child: Text("Logout")
                        ),
                      ],
                    ),
                  ),
                ),*/
              ],
            ),
          ),
        ],
      ),
    );
  }
}