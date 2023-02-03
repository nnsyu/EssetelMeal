import 'package:essetel_meal/model/meal.dart';
import 'package:essetel_meal/util/firebase_manager.dart';
import 'package:flutter/material.dart';
import '../registration/components/body_background.dart';
import 'package:intl/intl.dart';

class ShowPage extends StatelessWidget {
  ShowPage({Key? key}) : super(key: key);

  late final Future myFuture = FirebaseManager().getMeal();

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
        painter: BodyBackground(color: Colors.blue.shade50),
        child: Container(
          width: double.infinity,
          height: double.infinity,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: FutureBuilder(
                future: myFuture,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    final meal = snapshot.data!;
                    // print(meal.menu);
                    //
                    // print(meal.menu[0][0]);
                    // print(meal.menu[0][1]);
                    // print(meal.menu[0][2]);
                    // print(meal.menu[0][3]);
                    // print(meal.menu[0][4]);

                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Text(
                            meal.name,
                            style: TextStyle(
                              color: Colors.blueAccent,
                              fontSize: 40,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 3,
                              color: Colors.blueAccent,
                            ),
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          child: Column(
                            children: [
                              Table(
                                border: TableBorder.symmetric(
                                  inside: BorderSide(
                                    width: 1,
                                    color: Colors.white,
                                  ),
                                ),
                                // border: TableBorder.all(
                                //   borderRadius: BorderRadius.all(
                                //     Radius.circular(10),
                                //   ),
                                //   width: 1,
                                //   color: Colors.white.withOpacity(0.8),
                                // ),
                                children: [
                                  TableRow(
                                    children: [
                                      Container(
                                        height: 60,
                                        decoration: BoxDecoration(
                                          color: Colors.blueAccent,
                                        ),
                                        child: Center(
                                          child: Text(
                                            '월',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 30.0,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: 60,
                                        decoration: BoxDecoration(
                                          color: Colors.blueAccent,
                                        ),
                                        child: Center(
                                          child: Text(
                                            '화',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 30.0,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: 60,
                                        decoration: BoxDecoration(
                                          color: Colors.blueAccent,
                                        ),
                                        child: Center(
                                          child: Text(
                                            '수',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 30.0,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: 60,
                                        decoration: BoxDecoration(
                                          color: Colors.blueAccent,
                                        ),
                                        child: Center(
                                          child: Text(
                                            '목',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 30.0,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: 60,
                                        decoration: BoxDecoration(
                                          color: Colors.blueAccent,
                                        ),
                                        child: Center(
                                          child: Text(
                                            '금',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 30.0,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),

                                ],
                              ),
                              Table(
                                defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                                border: TableBorder.symmetric(
                                  inside: BorderSide(
                                    width: 1,
                                    color: Colors.black.withOpacity(0.5),
                                  ),
                                ),
                                children: [
                                  TableRow(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(vertical: 15),
                                        child: Container(
                                          alignment: Alignment.center,
                                          child: Text(
                                            meal.menu[0][0] == 'null'
                                                ? '없음'
                                                : meal.menu[0][0],
                                            style: TextStyle(
                                              color: Colors.black.withOpacity(0.7),
                                              fontSize: 30,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        alignment: Alignment.center,
                                        child: Text(
                                          meal.menu[0][1] == 'null'
                                              ? '없음'
                                              : meal.menu[0][1],
                                          style: TextStyle(
                                            color: Colors.black.withOpacity(0.7),
                                            fontSize: 30,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        alignment: Alignment.center,
                                        child: Text(
                                          meal.menu[0][2] == 'null'
                                              ? '없음'
                                              : meal.menu[0][2],
                                          style: TextStyle(
                                            color: Colors.black.withOpacity(0.7),
                                            fontSize: 30,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        alignment: Alignment.center,
                                        child: Text(
                                          meal.menu[0][3] == 'null'
                                              ? '없음'
                                              : meal.menu[0][3],
                                          style: TextStyle(
                                            color: Colors.black.withOpacity(0.7),
                                            fontSize: 30,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        alignment: Alignment.center,
                                        child: Text(
                                          meal.menu[0][4] == 'null'
                                              ? '없음'
                                              : meal.menu[0][4],
                                          style: TextStyle(
                                            color: Colors.black.withOpacity(0.7),
                                            fontSize: 30,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  TableRow(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(vertical: 15),
                                        child: Container(
                                          alignment: Alignment.center,
                                          child: Text(
                                            meal.menu[1][0] == 'null'
                                                ? '없음'
                                                : meal.menu[1][0],
                                            style: TextStyle(
                                              color: Colors.black.withOpacity(0.7),
                                              fontSize: 30,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        alignment: Alignment.center,
                                        child: Text(
                                          meal.menu[1][1] == 'null'
                                              ? '없음'
                                              : meal.menu[1][1],
                                          style: TextStyle(
                                            color: Colors.black.withOpacity(0.7),
                                            fontSize: 30,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        alignment: Alignment.center,
                                        child: Text(
                                          meal.menu[1][2] == 'null'
                                              ? '없음'
                                              : meal.menu[1][2],
                                          style: TextStyle(
                                            color: Colors.black.withOpacity(0.7),
                                            fontSize: 30,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        alignment: Alignment.center,
                                        child: Text(
                                          meal.menu[1][3] == 'null'
                                              ? '없음'
                                              : meal.menu[1][3],
                                          style: TextStyle(
                                            color: Colors.black.withOpacity(0.7),
                                            fontSize: 30,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        alignment: Alignment.center,
                                        child: Text(
                                          meal.menu[1][4] == 'null'
                                              ? '없음'
                                              : meal.menu[1][4],
                                          style: TextStyle(
                                            color: Colors.black.withOpacity(0.7),
                                            fontSize: 30,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  TableRow(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(vertical: 15),
                                        child: Container(
                                          alignment: Alignment.center,
                                          child: Text(
                                            meal.menu[2][0] == 'null'
                                                ? '없음'
                                                : meal.menu[2][0],
                                            style: TextStyle(
                                              color: Colors.black.withOpacity(0.7),
                                              fontSize: 30,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        alignment: Alignment.center,
                                        child: Text(
                                          meal.menu[2][1] == 'null'
                                              ? '없음'
                                              : meal.menu[2][1],
                                          style: TextStyle(
                                            color: Colors.black.withOpacity(0.7),
                                            fontSize: 30,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        alignment: Alignment.center,
                                        child: Text(
                                          meal.menu[2][2] == 'null'
                                              ? '없음'
                                              : meal.menu[2][2],
                                          style: TextStyle(
                                            color: Colors.black.withOpacity(0.7),
                                            fontSize: 30,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        alignment: Alignment.center,
                                        child: Text(
                                          meal.menu[2][3] == 'null'
                                              ? '없음'
                                              : meal.menu[2][3],
                                          style: TextStyle(
                                            color: Colors.black.withOpacity(0.7),
                                            fontSize: 30,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        alignment: Alignment.center,
                                        child: Text(
                                          meal.menu[2][4] == 'null'
                                              ? '없음'
                                              : meal.menu[2][4],
                                          style: TextStyle(
                                            color: Colors.black.withOpacity(0.7),
                                            fontSize: 30,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  TableRow(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(vertical: 15),
                                        child: Container(
                                          alignment: Alignment.center,
                                          child: Text(
                                            meal.menu[3][0] == 'null'
                                                ? '없음'
                                                : meal.menu[3][0],
                                            style: TextStyle(
                                              color: Colors.black.withOpacity(0.7),
                                              fontSize: 30,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        alignment: Alignment.center,
                                        child: Text(
                                          meal.menu[3][1] == 'null'
                                              ? '없음'
                                              : meal.menu[3][1],
                                          style: TextStyle(
                                            color: Colors.black.withOpacity(0.7),
                                            fontSize: 30,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        alignment: Alignment.center,
                                        child: Text(
                                          meal.menu[3][2] == 'null'
                                              ? '없음'
                                              : meal.menu[3][2],
                                          style: TextStyle(
                                            color: Colors.black.withOpacity(0.7),
                                            fontSize: 30,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        alignment: Alignment.center,
                                        child: Text(
                                          meal.menu[3][3] == 'null'
                                              ? '없음'
                                              : meal.menu[3][3],
                                          style: TextStyle(
                                            color: Colors.black.withOpacity(0.7),
                                            fontSize: 30,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        alignment: Alignment.center,
                                        child: Text(
                                          meal.menu[3][4] == 'null'
                                              ? '없음'
                                              : meal.menu[3][4],
                                          style: TextStyle(
                                            color: Colors.black.withOpacity(0.7),
                                            fontSize: 30,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  TableRow(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(vertical: 15),
                                        child: Container(
                                          alignment: Alignment.center,
                                          child: Text(
                                            meal.menu[4][0] == 'null'
                                                ? '없음'
                                                : meal.menu[4][0],
                                            style: TextStyle(
                                              color: Colors.black.withOpacity(0.7),
                                              fontSize: 30,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        alignment: Alignment.center,
                                        child: Text(
                                          meal.menu[4][1] == 'null'
                                              ? '없음'
                                              : meal.menu[4][1],
                                          style: TextStyle(
                                            color: Colors.black.withOpacity(0.7),
                                            fontSize: 30,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        alignment: Alignment.center,
                                        child: Text(
                                          meal.menu[4][2] == 'null'
                                              ? '없음'
                                              : meal.menu[4][2],
                                          style: TextStyle(
                                            color: Colors.black.withOpacity(0.7),
                                            fontSize: 30,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        alignment: Alignment.center,
                                        child: Text(
                                          meal.menu[4][3] == 'null'
                                              ? '없음'
                                              : meal.menu[4][3],
                                          style: TextStyle(
                                            color: Colors.black.withOpacity(0.7),
                                            fontSize: 30,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        alignment: Alignment.center,
                                        child: Text(
                                          meal.menu[4][4] == 'null'
                                              ? '없음'
                                              : meal.menu[4][4],
                                          style: TextStyle(
                                            color: Colors.black.withOpacity(0.7),
                                            fontSize: 30,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  TableRow(
                                    decoration: BoxDecoration(
                                      color: Color(0xFFFFE4E7),
                                    ),
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(vertical: 15),
                                        child: Container(
                                          alignment: Alignment.center,
                                          child: Text(
                                            meal.menu[5][0] == 'null'
                                                ? '없음'
                                                : meal.menu[5][0],
                                            style: TextStyle(
                                              color: Colors.black.withOpacity(0.7),
                                              fontSize: 30,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        alignment: Alignment.center,
                                        child: Text(
                                          meal.menu[5][1] == 'null'
                                              ? '없음'
                                              : meal.menu[5][1],
                                          style: TextStyle(
                                            color: Colors.black.withOpacity(0.7),
                                            fontSize: 30,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        alignment: Alignment.center,
                                        child: Text(
                                          meal.menu[5][2] == 'null'
                                              ? '없음'
                                              : meal.menu[5][2],
                                          style: TextStyle(
                                            color: Colors.black.withOpacity(0.7),
                                            fontSize: 30,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        alignment: Alignment.center,
                                        child: Text(
                                          meal.menu[5][3] == 'null'
                                              ? '없음'
                                              : meal.menu[5][3],
                                          style: TextStyle(
                                            color: Colors.black.withOpacity(0.7),
                                            fontSize: 30,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        alignment: Alignment.center,
                                        child: Text(
                                          meal.menu[5][4] == 'null'
                                              ? '없음'
                                              : meal.menu[5][4],
                                          style: TextStyle(
                                            color: Colors.black.withOpacity(0.7),
                                            fontSize: 30,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  TableRow(
                                    decoration: BoxDecoration(
                                      color: Color(0xFFE0F8EA),
                                      borderRadius: BorderRadius.all(Radius.circular(10),),
                                    ),
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(vertical: 15),
                                        child: Container(
                                          alignment: Alignment.center,
                                          child: Text(
                                            meal.menu[6][0] == 'null'
                                                ? '없음'
                                                : meal.menu[6][0],
                                            style: TextStyle(
                                              color: Colors.black.withOpacity(0.7),
                                              fontSize: 30,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        alignment: Alignment.center,
                                        child: Text(
                                          meal.menu[6][1] == 'null'
                                              ? '없음'
                                              : meal.menu[6][1],
                                          style: TextStyle(
                                            color: Colors.black.withOpacity(0.7),
                                            fontSize: 30,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        alignment: Alignment.center,
                                        child: Text(
                                          meal.menu[6][2] == 'null'
                                              ? '없음'
                                              : meal.menu[6][2],
                                          style: TextStyle(
                                            color: Colors.black.withOpacity(0.7),
                                            fontSize: 30,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        alignment: Alignment.center,
                                        child: Text(
                                          meal.menu[6][3] == 'null'
                                              ? '없음'
                                              : meal.menu[6][3],
                                          style: TextStyle(
                                            color: Colors.black.withOpacity(0.7),
                                            fontSize: 30,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        alignment: Alignment.center,
                                        child: Text(
                                          meal.menu[6][4] == 'null'
                                              ? '없음'
                                              : meal.menu[6][4],
                                          style: TextStyle(
                                            color: Colors.black.withOpacity(0.7),
                                            fontSize: 30,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    );
                  } else {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                },
              ),
            ),
          ),
        ));
  }
}
