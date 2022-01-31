import 'package:my_app/about_us.dart';
import 'package:my_app/feedback.dart';
import 'package:flutter/material.dart';
import 'package:my_app/Dashboard.dart';
import 'package:my_app/about_us.dart';
import 'package:my_app/contact_us.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        //primarySwatch: Colors.blue,
        primaryColor: Color(0xFFFFFFFF),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      //home: Dashboard(),
      initialRoute: '/',
      routes: {
        '/':(_) => Dashboard(),
        '/about-us': (_) => AboutUs(),
        '/contact-us': (_) => ContactUs(),
        '/feed-back': (_) => FeedBack(),
      },
    );
  }
}

/*class MenuDashboardPage extends StatefulWidget {
  MenuDashboardPage({Key key}) : super(key: key);    //constructor

  @override
  _MenuDashboardPageState createState() =>_MenuDashboardPageState();
}

class _MenuDashboardPageState extends State<MenuDashboardPage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        title: Text('Canteen Management'),
      ),
      body: Center(),
    );
  }
}*/