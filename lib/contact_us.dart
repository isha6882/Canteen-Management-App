import 'package:flutter/material.dart';
import './NavBar.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactUs extends StatelessWidget{

  static const routeName = '/contact-us';

  void customLaunch(command) async{
    if (await canLaunch(command)){
      await launch(command);
    }
    else{
      print('could not launch$command');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        title: Text(
            'Contact Us',
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
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
                'Contact Us at',
                style: TextStyle(
                    fontFamily: 'Varela',
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold
                )
            ),
            Container(
              padding: EdgeInsets.all(18.0),
              child: Text(
                'For any further queries please contact us at\n',
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontFamily: 'Varela',
                  fontSize: 18.0,
                ),
              ),
            ),
            Center(
              child: RaisedButton(
                elevation: 10.0,
                color: Color(0xFFF17532),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(200.0)),
                child: Text(
                  '\tEmail us here\t',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Varela',
                    fontSize: 18.0,
                  ),
                ),
                textColor: Colors.white,
                padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
                onPressed: (){
                  customLaunch(
                      'mailto:abc@gmail.com?subject=test%20subject&body=test%20body'
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}