import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'about_us.dart';
import 'contact_us.dart';
import 'home.dart';
import 'feedback.dart';

final Color backgroundColor = Color(0xFFFFFFFF);

class NavBar extends StatelessWidget{

  /*final Function onTap;

  NavBar({
    this.onTap
});*/

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(20),
            color: Theme.of(context).primaryColor,
            child: Center(
              child: Column(
                children: <Widget>[
                  Container(
                    width: 100,
                    height: 100,
                    margin: EdgeInsets.only(
                        top: 30,
                        bottom: 15
                    ),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage('assets/profile_pic.jpg'),
                          fit: BoxFit.fill
                      ),
                    ),
                  ),
                  Text(
                    'Username',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black38,
                    ),
                  ),
                  Text(
                    'abc@gmail.com',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black38,
                    ),
                  ),
                ],
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: (){
              Navigator.of(context).pushNamed(Home.routeName);
            },
          ),
          ListTile(
            leading: Icon(Icons.feedback),
            title: Text('Feedback'),
            onTap: (){
              Navigator.of(context).pushNamed(FeedBack.routeName);
            },
          ),
          ListTile(
            leading: Icon(Icons.contact_support_outlined),
            title: Text('About us'),
            onTap: (){
              Navigator.of(context).pushNamed(AboutUs.routeName);
            },
          ),
          ListTile(
            leading: Icon(Icons.perm_contact_cal_rounded),
            title: Text('Contact us'),
            onTap: (){
              Navigator.of(context).pushNamed(ContactUs.routeName);
            },
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text('Logout'),
            onTap: (){
              Navigator.of(context).pushNamed(AboutUs.routeName);
            },
          ),
        ],
      ),
    );

  }
}