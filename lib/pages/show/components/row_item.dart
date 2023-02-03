import 'package:essetel_meal/pages/show/components/empty_background.dart';
import 'package:flutter/material.dart';

class RowItem extends StatelessWidget {
  final index;
  final meal;

  const RowItem({
    Key? key,
    required this.meal,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        meal.menu[index][0] == 'null'
            ? Container(
          child: CustomPaint(
            painter: EmptyBackground(),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                '',
                style: TextStyle(
                  color: Colors.black
                      .withOpacity(0.7),
                  fontSize: 30,
                ),
              ),
            ),
          ),
        )
            : Container(
          alignment: Alignment.center,
          child: Padding(
            padding:
            const EdgeInsets.all(15.0),
            child: Text(
              meal.menu[index][0] == 'null'
                  ? 'X'
                  : meal.menu[index][0],
              style: TextStyle(
                color: Colors.black
                    .withOpacity(0.7),
                fontSize: 30,
              ),
            ),
          ),
        ),
        meal.menu[index][1] == 'null'
            ? Container(
          child: CustomPaint(
            painter: EmptyBackground(),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                '',
                style: TextStyle(
                  color: Colors.black
                      .withOpacity(0.7),
                  fontSize: 30,
                ),
              ),
            ),
          ),
        )
            : Container(
          alignment: Alignment.center,
          child: Padding(
            padding:
            const EdgeInsets.all(15.0),
            child: Text(
              meal.menu[index][1] == 'null'
                  ? 'X'
                  : meal.menu[index][1],
              style: TextStyle(
                color: Colors.black
                    .withOpacity(0.7),
                fontSize: 30,
              ),
            ),
          ),
        ),
        meal.menu[index][2] == 'null'
            ? Container(
          child: CustomPaint(
            painter: EmptyBackground(),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                '',
                style: TextStyle(
                  color: Colors.black
                      .withOpacity(0.7),
                  fontSize: 30,
                ),
              ),
            ),
          ),
        )
            : Container(
          alignment: Alignment.center,
          child: Padding(
            padding:
            const EdgeInsets.all(15.0),
            child: Text(
              meal.menu[index][2] == 'null'
                  ? 'X'
                  : meal.menu[index][2],
              style: TextStyle(
                color: Colors.black
                    .withOpacity(0.7),
                fontSize: 30,
              ),
            ),
          ),
        ),
        meal.menu[index][3] == 'null'
            ? Container(
          child: CustomPaint(
            painter: EmptyBackground(),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                '',
                style: TextStyle(
                  color: Colors.black
                      .withOpacity(0.7),
                  fontSize: 30,
                ),
              ),
            ),
          ),
        )
            : Container(
          alignment: Alignment.center,
          child: Padding(
            padding:
            const EdgeInsets.all(15.0),
            child: Text(
              meal.menu[index][3] == 'null'
                  ? 'X'
                  : meal.menu[index][3],
              style: TextStyle(
                color: Colors.black
                    .withOpacity(0.7),
                fontSize: 30,
              ),
            ),
          ),
        ),
        meal.menu[index][4] == 'null'
            ? Container(
          child: CustomPaint(
            painter: EmptyBackground(),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                '',
                style: TextStyle(
                  color: Colors.black
                      .withOpacity(0.7),
                  fontSize: 30,
                ),
              ),
            ),
          ),
        )
            : Container(
          alignment: Alignment.center,
          child: Padding(
            padding:
            const EdgeInsets.all(15.0),
            child: Text(
              meal.menu[index][4] == 'null'
                  ? 'X'
                  : meal.menu[index][4],
              style: TextStyle(
                color: Colors.black
                    .withOpacity(0.7),
                fontSize: 30,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
