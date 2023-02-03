import 'package:essetel_meal/firebase_options.dart';
import 'package:essetel_meal/model/meal.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class FirebaseManager {
  FirebaseManager._privateConstructor();

  static final FirebaseManager _instance = FirebaseManager._privateConstructor();

  factory FirebaseManager(){
    return _instance;
  }

  final DatabaseReference ref = FirebaseDatabase.instance.ref("meal");

  Future<Meal> getMeal() async {
    final event = await ref.once(DatabaseEventType.value);
    final snapShot = event.snapshot;
    final data = Map<String, dynamic>.from(snapShot.value as Map);
    final meal = Meal.fromJson(data);

    return meal;
  }

  void setMeal(Map<String, dynamic> meal) async {
    await ref.update(meal);
  }
}