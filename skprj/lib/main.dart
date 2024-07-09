import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    const url1 = "https://www.thairath.co.th";
    const url2 = "https://dev.worldinfinity.co.th/v1/ddopa-callback";
    const url3 = "https://tgucmews.nhso.go.th/v1/ddopa-callback";
    const url4 = "https://tgucmews.nhso.go.th";

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Applink Test",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blue,
        ),
        body: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const Text('1.เรียก Link ไปที่ Browser เป็น Link ปกติทั่วไป'),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                ),
                onPressed: () async {
                  if (!await launchUrl(Uri.parse(url1),
                      mode: LaunchMode.externalApplication,
                      webViewConfiguration: const WebViewConfiguration())) {
                    throw Exception('Could not launch');
                  }
                },
                child: const Text(
                  url1,
                  style: TextStyle(color: Colors.white),
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              const Text(
                  '2.เรียก Link ไปที่ Browser แต่ Link ไปเรียก app nhso'),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                ),
                onPressed: () async {
                  if (!await launchUrl(Uri.parse(url2),
                      mode: LaunchMode.externalApplication,
                      webViewConfiguration: const WebViewConfiguration())) {
                    throw Exception('Could not launch');
                  }
                },
                child: const Text(
                  url2,
                  style: TextStyle(color: Colors.white),
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              const Text(
                  '3.เรียก Link ไปที่ Browser แต่ Link ไปเรียก app nhso'),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                ),
                onPressed: () async {
                  if (!await launchUrl(Uri.parse(url3),
                      mode: LaunchMode.externalApplication,
                      webViewConfiguration: const WebViewConfiguration())) {
                    throw Exception('Could not launch');
                  }
                },
                child: const Text(
                  url3,
                  style: TextStyle(color: Colors.white),
                ),
              ),
                            const SizedBox(
                height: 10.0,
              ),
              const Text(
                  '4.เรียก Link ไปที่ Browser แต่ Link ไปเรียก app nhso'),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                ),
                onPressed: () async {
                  if (!await launchUrl(Uri.parse(url4),
                      mode: LaunchMode.externalApplication,
                      webViewConfiguration: const WebViewConfiguration())) {
                    throw Exception('Could not launch');
                  }
                },
                child: const Text(
                  url4,
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
