import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'Constant/url.dart';
import 'Screens/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Convre',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home : Login(),
    );
  }
}

// class HomePage extends StatefulWidget {
//   const HomePage({Key? key}) : super(key: key);
//
//   @override
//   _HomePageState createState() => _HomePageState();
// }
//
// class _HomePageState extends State<HomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: WebView(
//         initialUrl: url,
//         javascriptMode: JavascriptMode.unrestricted,
//         onWebResourceError: (error){
//           print(error);
//         },
//       ),
//     );
//   }
// }

