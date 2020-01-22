import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  //
  final String title;
  MyHomePage({Key key, this.title}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //
  void sendEmail() async {
    const emailURL = 'mailto:mohamedsamirsalem100@gmail.com';
    if (await canLaunch(emailURL)) {
      await launch((emailURL));
    } else {
      throw 'Can not launch email url';
    }
  }

  void sendSMS() async {
    const sms = 'sms:011459072';
    if (await canLaunch(sms)) {
      await launch((sms));
    } else {
      throw 'Can not send sms message';
    }
  }

  void makeCallPhone() async {
    const telNumber = 'tel:011459072';
    if (await canLaunch(telNumber)) {
      await launch((telNumber));
    } else {
      throw 'Can not make a call';
    }
  }

  void goToGitHub() async {
    const webURL =
        'https://github.com/mohamedsamirmohamedsalem?tab=repositories';
    if (await canLaunch(webURL)) {
      await launch((webURL));
    } else {
      throw 'Can not go to GitHub web page';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            RaisedButton(
              child: Text(
                'Send An Email',
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.purple,
              onPressed: () {
                sendEmail();
              },
            ),
            RaisedButton(
              child: Text(
                'Send an SMS',
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.purple,
              onPressed: () {
                sendSMS();
              },
            ),
            RaisedButton(
              child: Text(
                'Make A call Phone',
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.purple,
              onPressed: () {
                makeCallPhone();
              },
            ),
            RaisedButton(
              child: Text(
                'Go to GitHub',
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.purple,
              onPressed: () {
                goToGitHub();
              },
            ),
          ],
        ),
      ),
    );
  }
}
