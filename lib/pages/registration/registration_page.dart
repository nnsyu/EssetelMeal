import 'package:essetel_meal/model/meal.dart';
import 'package:essetel_meal/util/firebase_manager.dart';
import 'package:excel/excel.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../registration/components/body_background.dart';
import 'package:file_picker/file_picker.dart';
import 'dart:typed_data';
import 'package:desktop_drop/desktop_drop.dart';

class RegistrationPage extends StatefulWidget {
  RegistrationPage({Key? key}) : super(key: key);

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  String showFileName = "";
  var _dragging = false;
  Color uploadingColor = Colors.blue[100]!;
  Color defaultColor = Colors.grey[400]!;

  late Meal curMeal;

  var isAvailableFile = false;

  @override
  Widget build(BuildContext context) {

    return CustomPaint(
        painter: BodyBackground(color: Colors.blueAccent),
        child: DropTarget(
          onDragDone: (detail) async {
            debugPrint('onDragDone:');
            if (detail.files.isNotEmpty) {
              String fileName = detail.files.first.name;
              Uint8List fileBytes = await detail.files.first.readAsBytes();
              debugPrint(fileName);
              setState(() {
                showFileName = fileName;
              });
              //TODO: 파일 파싱하기
              setState(() {
                isAvailableFile = readExcel(fileBytes);
              });
            }
          },
          onDragEntered: (detail) {
            setState(() {
              debugPrint('onDragEntered:');
              _dragging = true;
            });
          },
          onDragExited: (detail) {
            debugPrint('onDragExited:');
            setState(() {
              _dragging = false;
            });
          },
          child: Container(
            width: double.infinity,
            height: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () async {
                    FilePickerResult? result =
                    await FilePicker.platform.pickFiles(
                      type: FileType.custom,
                      allowedExtensions: ['xlsx'],
                      allowMultiple: false,
                    );

                    if (result != null && result.files.isNotEmpty) {
                      String fileName = result.files.first.name;
                      Uint8List fileBytes = result.files.first.bytes!;
                      debugPrint(fileName);
                      //TODO: 파일 파싱하기
                      setState(() {
                        showFileName = fileName;
                      });

                      setState(() {
                        isAvailableFile = readExcel(fileBytes);
                      });
                    }
                  },
                  child: Container(
                    padding: EdgeInsets.all(30.0),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(20.0),
                      border: Border.all(
                        color: Colors.white,
                        width: 1,
                      ),
                    ),
                    child: Column(
                      children: [
                        Text(
                          '파일을 드래그하거나\n클릭하여 선택하세요',
                          style: TextStyle(
                              color: Colors.white, fontSize: 30, height: 1.5),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          '*.xlsx',
                          style: TextStyle(
                              color: Colors.white.withOpacity(0.6),
                              fontSize: 20,
                              height: 1.5),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
                LayoutBuilder(builder: (context, constraint) {
                  if (showFileName.isEmpty) {
                    return SizedBox();
                  } else {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 50,
                        ),
                        Text(
                          showFileName,
                          style: TextStyle(
                            fontSize: 40,
                            color: Colors.white,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Material(
                          color: Colors.transparent,
                          child: Ink(
                            decoration: BoxDecoration(
                              color: Colors.blue.shade50,
                              borderRadius: BorderRadius.all(
                                Radius.circular(8.0),
                              ),
                            ),
                            child: InkWell(
                              onTap: isAvailableFile ? registerMeal : showFailToast,
                              borderRadius: const BorderRadius.all(
                                Radius.circular(8.0),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 25, vertical: 15),
                                child: Text(
                                  '등록하기',
                                  style: TextStyle(
                                      color: Colors.blueAccent,
                                      fontSize: 25,
                                      height: 1.5),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    );
                  }
                }),
              ],
            ),
          ),
        ));
  }

  void registerMeal() {
    FirebaseManager().setMeal(curMeal.toJson());
    print('식단 등록 완료!');

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: Colors.green.shade400,
        content: Text(
          "식단 등록 완료!",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        duration: Duration(seconds: 2),
      ),
    );
  }

  void showFailToast() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: Colors.red.shade400,
        content: Text(
          "올바른 파일을 등록해주세요 !!",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
            fontSize: 20,
          ),
        ),
        duration: Duration(seconds: 2),
      ),
    );
  }

  bool readExcel(Uint8List bytes) {
    bool ret = true;

    var excel = Excel.decodeBytes(bytes);

    for (var table in excel.tables.keys) {
      if (excel.tables[table]?.sheetName != '에세텔') {
        print('올바른 파일 아님!');
        ret = false;
        break;
      }

      print('올바른 파일 맞음!');

      List<List<String>> menu = [];

      for (var i = 1; i < 8; i++) {
        var row = excel.tables[table]!.row(5 + i);
        var map = row.map((e) => e?.value);

        List<String> list = [];

        map.forEach((element) {
          list.add(element.toString());
        });

        if (list.length > 0) {
          list.removeAt(0);
        }

        menu.add(list);
      }

      curMeal = Meal(
        name: showFileName.replaceAll(".xlsx", ""),
        menu: menu,
      );
    }

    return ret;
  }
}
