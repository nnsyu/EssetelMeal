import 'package:essetel_meal/pages/registration/components/body_background.dart';
import 'package:essetel_meal/pages/registration/registration_page.dart';
import 'package:essetel_meal/pages/show/show_page.dart';
import 'package:essetel_meal/pages/show/show_page_copy.dart';
import 'package:essetel_meal/util/firebase_manager.dart';
import 'package:essetel_meal/util/route_define.dart';
import 'package:essetel_meal/util/screen_provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'firebase_options.dart';
import 'pages/registration/components/tab_background.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late ScreenProvider _screenProvider;

  var curScreen = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "에세텔 주간식단표",
      debugShowCheckedModeBanner: false,
      // initialRoute: '/',
      // routes: routes,
      theme: ThemeData(fontFamily: 'Pretendard'),
      home: Scaffold(
        backgroundColor: Colors.grey.shade700,
        body: Padding(
          padding: const EdgeInsets.only(top: 5.0),
          child: Column(
            children: [
              CustomPaint(
                painter: TabBackground(tapId: 0),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 2),
                  child: Row(
                    children: [
                      Card(
                        elevation: 0,
                        color: Colors.blue.shade50,
                        semanticContainer: true,
                        child: InkResponse(
                          containedInkWell: true,
                          child: InkWell(
                            onTap: () {
                              print('로고 클릭 !!');
                              setState(() {
                                curScreen = 0;
                              });
                            },
                            child: Image.asset(
                              'assets/images/essetel_logo.png',
                              height: 28.0,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 45.0,
                      ),
                      TextButton(
                        onPressed: () {
                          print('텍스트 버튼 클릭 !');
                          setState(() {
                            curScreen = 1;
                          });
                        },
                        child: Text(
                          '등록하기',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: LayoutBuilder(builder: (context, constraint) {
                  if (curScreen == 0) {
                    return ShowPageCopy();
                  } else {
                    return RegistrationPage();
                  }
                }),
              ),
              // PageView(
              //   controller: ,
              // )
            ],
          ),
        ),
      ),
    );
  }
}
