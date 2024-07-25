import 'package:hive_flutter/adapters.dart';

part 'model.g.dart';


@HiveType(typeId: 1)
class UserModel {
  
  @HiveField(0)
  int? index;

  @HiveField(1)
  final String? name;

  @HiveField(2)
  final String? phonenumber;

  @HiveField(3)
  final String? vehiclemodel;

  @HiveField(4)
  final String? vehiclenumber;


  UserModel({
    this.index,
    this.name,
    this.phonenumber,
    this.vehiclemodel,
    this.vehiclenumber,

  });





  
}