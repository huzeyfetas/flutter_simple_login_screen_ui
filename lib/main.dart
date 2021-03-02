import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context);
    final w = screenSize.size.width;
    final h = screenSize.size.height;

    return Scaffold(
      backgroundColor: Colors.deepPurple,
      //backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(bottom: h * 0.10),
                  child: SizedBox(
                    width: w * 0.5,
                    child: Image.asset(
                      "images/logo.png",
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(w * 0.04),
                  child: Container(
                    /*margin:
                        EdgeInsets.fromLTRB(w * 0.05, h * 0.05, w * 0.05, h * 0.05),
                    */
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "User Email",
                        filled: true,
                        fillColor: Colors.purple[50],
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(w * 0.04),
                  child: Container(
                    /*margin:
                        EdgeInsets.fromLTRB(w * 0.05, h * 0.05, w * 0.05, h * 0.05),
                    */
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "User Password",
                        filled: true,
                        fillColor: Colors.purple[50],
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(w * 0.04),
                  child: SizedBox(
                    width: w * 0.60,
                    height: w * 0.12,
                    child: RaisedButton(
                      onPressed: () {
                        print("Login clicked");
                      },
                      child: Text(
                        "LOGIN",
                        style: TextStyle(fontSize: w / 25, color: Colors.white),
                      ),
                      color: Colors.deepPurple[800],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    print("Help Clicked");
                  },
                  child: Text(
                    "Help",
                    style: TextStyle(
                      color: Colors.white54,
                      fontWeight: FontWeight.bold,
                      fontSize: w / 30,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
