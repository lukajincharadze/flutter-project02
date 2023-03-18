import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Navigation"),
      ),
      body: Container(
        margin: EdgeInsets.all(70),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/img/meeting.png",
              height: 100,
              width: 100,
            ),
            SizedBox(height: 30),
            Container(
              child: Text(
                'Hello, please sign in to view our courses',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                  fontStyle: FontStyle.italic,
                  letterSpacing: 1.5,
                ),
              ),
            ),
            SizedBox(height: 20),
            TextButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => Signin()));
              },
              child: Text(
                "Sign In",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.blue,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Signin extends StatelessWidget {
  const Signin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Please Sign in"),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            height: 367,
            width: 300,
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container (
                  child: Text("Form", style: TextStyle(fontSize: 28, color: Colors.black),),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.4),
                        spreadRadius: 2,
                        blurRadius: 2,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                ),
                SizedBox(height: 30),
                Container (
                  width: 300,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Username",
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue, width: 2.0),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Container (
                  width: 300,
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Password",
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue, width: 2.0),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 50),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => OtherPage1()));
                  },
                  child: Text(
                    "Sign In",
                    style: TextStyle(fontSize: 20),
                  ),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 50),
                    primary: Colors.blue,
                    elevation: 5,
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

class OtherPage1 extends StatelessWidget {
  const OtherPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Our Courses"),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.of(context).popUntil((route) => route.isFirst);
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => Signin()),
              );
            },
            child: Container(
              margin: EdgeInsets.only(right: 20),
              child: Image(
                image: AssetImage("assets/img/online-learning.png"),
                height: 40,
                width: 40,
                color: Colors.white,
              ),
            ),
          ),
        ],

      ),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(top: 20, left: 20, right: 20),
            decoration: BoxDecoration(
              color: Colors.yellow,
              borderRadius: BorderRadius.circular(10),
            ),
            width: 500,
            height: 130,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/img/design.png",
                  width: 50,
                  height: 50,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 20, left: 20),
                      child: Text(
                        "Design",
                        style: TextStyle(fontSize: 28, color: Colors.green),
                      ),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 20),
                      child: Text(
                        "Graphic Design, interface design,",
                        style: TextStyle(fontSize: 15, color: Colors.green),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 20),
                      child: Text(
                        "Font design basics and font engineering,",
                        style: TextStyle(fontSize: 15, color: Colors.green),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 20),
                      child: Text(
                        "Video graphics and editing",
                        style: TextStyle(fontSize: 15, color: Colors.green),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 20, left: 20, right: 20),
                decoration: BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.circular(10),
                ),
                width: 500,
                height: 130,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/img/code.png",
                      width: 50,
                      height: 50,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.only(top: 20, left: 20),
                          child: Text(
                            "Web Programming",
                            style: TextStyle(fontSize: 28, color: Colors.green),
                          ),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 20),
                          child: Text(
                            "Front-End web programming (HTML, CSS),",
                            style: TextStyle(fontSize: 15, color: Colors.green),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 20),
                          child: Text(
                            "Web programming in PHP, ASP.NET. MVC,",
                            style: TextStyle(fontSize: 15, color: Colors.green),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 20),
                          child: Text(
                            "JavaScript / React, Python, Bubble",
                            style: TextStyle(fontSize: 15, color: Colors.green),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.only(top: 20, left: 20, right: 20),
                decoration: BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.circular(10),
                ),
                width: 500,
                height: 130,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/img/smartphone.png",
                      width: 50,
                      height: 50,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.only(top: 25, left: 20),
                          child: Text(
                            "Mobile Programming",
                            style: TextStyle(fontSize: 28, color: Colors.green),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 20),
                          child: Text(
                            "Mobile programming for iOS,",
                            style: TextStyle(fontSize: 15, color: Colors.green),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 20),
                          child: Text(
                            "Mobile Programming ANDROID (Java)",
                            style: TextStyle(fontSize: 15, color: Colors.green),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.only(top: 20, left: 20, right: 20),
                decoration: BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.circular(10),
                ),
                width: 500,
                height: 130,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/img/game-development.png",
                      width: 50,
                      height: 50,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.only(top: 20, left: 20),
                          child: Text(
                            "Game Development",
                            style: TextStyle(fontSize: 28, color: Colors.green),
                          ),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 20),
                          child: Text(
                            "Programming in Unity,",
                            style: TextStyle(fontSize: 15, color: Colors.green),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 20),
                          child: Text(
                            "Programming in C#,",
                            style: TextStyle(fontSize: 15, color: Colors.green),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 20),
                          child: Text(
                            "Programming in C++",
                            style: TextStyle(fontSize: 15, color: Colors.green),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 20, left: 20, right: 20),
                    decoration: BoxDecoration(
                      color: Colors.yellow,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    width: 500,
                    height: 130,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/img/code2.png",
                          width: 50,
                          height: 50,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.only(top: 20, left: 20),
                              child: Text(
                                "Coding",
                                style: TextStyle(fontSize: 28, color: Colors.green),
                              ),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 20),
                              child: Text(
                                "programming in C#, Automation Testing,",
                                style: TextStyle(fontSize: 15, color: Colors.green),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 20),
                              child: Text(
                                "Oracle Development (SQL + PL/SQL),",
                                style: TextStyle(fontSize: 15, color: Colors.green),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 20),
                              child: Text(
                                "Cyber security",
                                style: TextStyle(fontSize: 15, color: Colors.green),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              SizedBox(
                height: 10,
              ),

              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 20, left: 20, right: 20),
                    decoration: BoxDecoration(
                      color: Colors.yellow,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    width: 500,
                    height: 130,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/img/networking.png",
                          width: 50,
                          height: 50,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.only(top: 20, left: 20),
                              child: Text(
                                "Communication",
                                style: TextStyle(fontSize: 28, color: Colors.green),
                              ),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 20),
                              child: Text(
                                "Social media management, Copywriting,",
                                style: TextStyle(fontSize: 15, color: Colors.green),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 20),
                              child: Text(
                                "Web project management,",
                                style: TextStyle(fontSize: 15, color: Colors.green),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 20),
                              child: Text(
                                "Electronic commerce",
                                style: TextStyle(fontSize: 15, color: Colors.green),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).popUntil((route) => route.isFirst);
                  },
                  child: Text("Home")),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ],
      ),
    );
  }
}