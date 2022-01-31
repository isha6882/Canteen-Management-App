import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import './NavBar.dart';

class FeedBack extends StatelessWidget{

  static const routeName = '/feed-back';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        title: Text(
            'Feedback',
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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
                'Feedback',
                style: TextStyle(
                    fontFamily: 'Varela',
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold
                )
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              "Please select the type of feedback",
              style: TextStyle(
                  color: Color(0xFF575E67)
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            buildCheckItem("Login trouble"),
            buildCheckItem("Personal profile"),
            buildCheckItem("Email related"),
            buildCheckItem("Contact number related"),
            buildCheckItem("Other issues"),
            SizedBox(height: 15.0),
            //buildFeedbackForm(),

            Container(
              height: 60.0,
              child: ListView(
                scrollDirection: Axis.vertical,
                children: <Widget>[
                  TextField(
                    //maxLines: 2,
                    decoration: InputDecoration(
                        hintText: "Briefly describe the issue",
                        hintStyle: TextStyle(
                          fontSize: 14.0,
                          color: Color(0xffc5c5c5),
                        ),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xffe5e5e5))
                        )
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border(
                              top: BorderSide(
                                width: 1.0,
                                color: Color(0xffa6a6a6),
                              )
                          )
                      ),
                      padding: EdgeInsets.all(8.0),
                    ),
                  )
                ],
              ),
            ),

            SizedBox(height: 20.0),
            Spacer(),
            Row(
              children: <Widget>[
                Expanded(
                  child: FlatButton(
                    onPressed: (){},
                    color: Color(0xFF575E67),
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      "SUBMIT",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  /*buildFeedbackForm(){
    return Container(
      height: 300.0,
      child: Stack(
        children: <Widget>[
          TextField(
            //maxLines: 10,
            decoration: InputDecoration(
              hintText: "Briefly describe the issue",
              hintStyle: TextStyle(
                fontSize: 14.0,
                color: Color(0xffc5c5c5),
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xffe5e5e5))
              )
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    width: 1.0,
                    color: Color(0xffa6a6a6),
                  )
                )
              ),
              padding: EdgeInsets.all(8.0),
            ),
          )
        ],
      ),
    );
  }*/

  buildCheckItem(title){
    return Padding(
      padding: EdgeInsets.only(bottom: 15.0),
      child: Row(
        children: <Widget>[
          Icon(Icons.check_circle, color: Color(0xFFD17E50)),
          SizedBox(width: 10.0),
          Text(
              title,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF575E67)
              )
          )
        ],
      ),
    );
  }

}