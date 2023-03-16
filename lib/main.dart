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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
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
            // TextButton(
            //   onPressed: () {
            //     Navigator.of(context).push(
            //         MaterialPageRoute(builder: (context) => OtherPage1()));
            //   },
            //   child: Text("Other Page1"),
            // ),
            // TextButton(
            //   onPressed: () {
            //     Navigator.of(context).push(
            //         MaterialPageRoute(builder: (context) => OtherPage2()));
            //   },
            //   child: Text("Other Page2"),
            // ),
            TextButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => Signin()));
              },
              child: Text("Sign In"),
            ),
          ],
        ),
      ),
    );
  }
}

//
// class OtherPage1 extends StatelessWidget {
//   const OtherPage1({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Other Page"),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text("First Page"),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class OtherPage2 extends StatelessWidget {
//   const OtherPage2({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Other Page2"),
//         automaticallyImplyLeading: false,
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text("Second Page"),
//             TextButton(
//                 onPressed: () {
//                   Navigator.of(context).pop();
//                 },
//                 child: Text("Go back"))
//           ],
//         ),
//       ),
//     );
//   }
// }

class Signin extends StatelessWidget {
  const Signin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Navigation"),
      ),
      body: Center(
        child: Container(
          color: Colors.white,
          height: 367,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container (
                child: Text("Sign-In", style: TextStyle(fontSize: 28, color: Colors.white),),
                color: Colors.blue,
                padding: EdgeInsets.only(left: 100, right: 100, top: 20, bottom: 20),
              ),
              Container (
                width: 250,
                padding: EdgeInsets.only(top: 20, bottom: 20),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "username"
                  ),
                ),
              ),
              Container (
                width: 250,
                padding: EdgeInsets.only(bottom: 20),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "password"
                  ),
                ),
              ),
              Container(
                width: 200,
                margin: EdgeInsets.only(left: 50),
                padding: EdgeInsets.only(bottom: 90),
                child: Row (
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(onPressed: () {}, child: Text("Sign In")),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

