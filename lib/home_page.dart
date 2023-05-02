import 'package:flutter/material.dart';
import 'package:harbour_mobile/webview_dialog.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:webview_flutter_android/webview_flutter_android.dart';

// Import for iOS features.
import 'package:webview_flutter_wkwebview/webview_flutter_wkwebview.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  WebViewDialog webViewDialog = WebViewDialog();

  @override
  void initState() {
    super.initState();
  }
  static String harbourLink =
      "https://dat-195certn-poc-pr1475-dot-livetest-dot-harbour-prod-webapp.uc.r.appspot.com/agree/8v3ahaKK7L2aZqDbPg5zJJ?first_name=Joshua&last_name=Elkes&birth_date=1991-09-26&country=US&county=Westchester&state=New%20York&city=Briarcliff+Manor&sin_ssn=123456789&certification_date=2023-03-29&certification_description=CEO&institution=University&certification=Undergrad&is_current=true";
  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = ElevatedButton.styleFrom(
        textStyle: const TextStyle(fontSize: 20),
        backgroundColor: const Color(0xFF2d71ad));
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        backgroundColor: const Color(0xFF2d71ad),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton.icon(
              icon: const Icon(Icons.check),
              label: const Text('Get Started'),
              style: style,
              onPressed: () => webViewDialog.showHarbourDialog(context, harbourLink),
            ),
          ],
        ),
      ),
    );
  }
}