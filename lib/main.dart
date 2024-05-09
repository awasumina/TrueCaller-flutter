import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:truecaller/components.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
          brightness: Brightness.dark,
        ),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var widthDevice = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: const IconThemeData(
          size: 35.0,
          color: Colors.black,
        ),
      ),

      drawer: Container(
        width: 200,
        color: Colors.black38,
        child: Drawer(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(width: 2.0, color: Colors.blue),
                        ),
                        child: Stack(
                          children: [
                            ClipOval(
                              child: Image.asset(
                                "assets/images/user_icon.png",
                                fit: BoxFit.cover,
                                width: 30,
                                height: 30,
                              ),
                            ),
                            Positioned(
                              top: 0,
                              right: 0,
                              child: Container(
                                width: 12,
                                height: 12,
                                decoration: BoxDecoration(
                                  color: Colors.lightBlueAccent,
                                  shape: BoxShape.circle,
                                ),
                              ),
                            ),
                          ],
                        )),
                    SizedBox(width: 10), // Add SizedBox for spacing
                    BoxContainer("  true   "),
                  ],
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SansBold("Sumina Awa", 15.0),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.edit,
                      size: 20,
                      color: Colors.blue,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [Sans("+91 23232323232", 10.0)],
                ),
              ),
              Divider(
                color: Colors.grey,
                thickness: 1.0,
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.person,
                          color: Colors.blueAccent,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        SansBold("Profile", 13.0)
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.wifi_calling_3,
                          color: Colors.blueAccent,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        SansBold("Free HD Voice Call", 13.0)
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.sentiment_very_dissatisfied_outlined,
                          color: Colors.blueAccent,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        SansBold("Video Caller ID", 13.0)
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Divider(
                    color: Colors.grey,
                    thickness: 1.0,
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.settings,
                          color: Colors.blueAccent,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        SansBold("Settings", 13.0)
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.privacy_tip_outlined,
                          color: Colors.blueAccent,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        SansBold("Privacy Center", 13.0)
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.info_outline,
                          color: Colors.blueAccent,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        SansBold("About", 13.0)
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Divider(
                    color: Colors.grey,
                    thickness: 1.0,
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                ],
              ),
              Column(
                children: [
                  Image.asset(
                    "assets/images/crown.jpg",
                    fit: BoxFit.cover,
                    width: 60,
                    height: 60,
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed: () {
                        // Button press logic
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.amber[400]!,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        // primary: Colors.transparent, // Transparent color for background
                        elevation: 0, // No shadow
                      ),
                      child: Text(
                        'Try Premium',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Sans("Starting from just Rs 75.00/Month", 10)
                ],
              )
            ],
          ),
        ),
      ),

      body: Container(
        child: Column(
          children: [
            Row(
              children: [
                // TextForm(
                //     // text: "hello",
                //     Containerwidth: widthDevice / 1.4,
                //     hintText: "Search numbers,names & more")
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.access_time,
                        color: Colors.lightBlueAccent,
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Sans(
                        "Recent",
                        10.0,
                      )
                    ]),
                Column(children: [
                  Icon(
                    Icons.contacts_outlined,
                    color: Colors.white70,
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Sans(
                    "Recent",
                    10.0,
                  )
                ]),
                // SizedBox(
                //   width: 20.0,
                // ),
                Column(children: [
                  Icon(
                    Icons.star_border,
                    color: Colors.white70,
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Sans(
                    "Recent",
                    10.0,
                  )
                ]),
              ],
            ),
            SizedBox(
              height: 40.0,
            ),

            //here start the call logs
            Padding(
              padding: const EdgeInsets.only(left: 58.0),
              child: Row(
                children: [Sans("Today", 12.0)],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Stack(
                  children: [
                    ClipOval(
                      child: Image.asset(
                        "assets/images/user_icon.png",
                        fit: BoxFit.cover,
                        width: 30,
                        height: 30,
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 5,
                      left: 5,
                      child: Container(
                        width: 10,
                        height: 10,
                        decoration: BoxDecoration(
                            color: Colors.lightBlueAccent,
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(child: Sans("21m", 7.2)),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    //contain neal data
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SansBold("Neal", 13.0),
                        Icon(
                          Icons.sim_card,
                          color: Colors.white70,
                        ),
                        BoxContainer("  true   "),
                      ],
                    ),
                    //contain 5 min ago data
                    Row(
                      children: [
                        Icon(
                          Icons.call_made,
                          size: 13.0,
                        ),
                        Sans("5 min ago", 8.0),
                        Sans("Kerala", 8.0),
                      ],
                    ),
                  ],
                ),

                //icon of call
                Icon(
                  Icons.call,
                  color: Colors.lightBlueAccent,
                )
              ],
            )
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
