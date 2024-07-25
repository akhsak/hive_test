import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_task/model.dart';

ValueNotifier<List<UserModel>> userNotifier = ValueNotifier([]);

Future<void> addUser(UserModel value) async {
  final userDB = await Hive.openBox<UserModel>('user_db');
  await userDB.add(value);
  userNotifier.value.add(value);
  userNotifier.notifyListeners();
  getAllUser(value);
}

Future<void> deleteUser(index) async {
  final userDB = await Hive.openBox<UserModel>('user_db');
  await userDB.deleteAt(index);

  userNotifier.notifyListeners();
  getAllUser(index);
}

Future<void> getAllUser(value) async {
  final userDB = await Hive.openBox<UserModel>('user_db');
  await userDB.clear();
  userNotifier.value.addAll(value);
  userNotifier.notifyListeners();
}
