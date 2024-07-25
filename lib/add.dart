import 'package:flutter/material.dart';
import 'package:hive_task/function.dart';
import 'package:hive_task/model.dart';

class AddPage extends StatefulWidget {
  const AddPage({super.key});

  @override
  State<AddPage> createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  final nameController = TextEditingController();
  final phonenumberController = TextEditingController();
  final vehicleModelController = TextEditingController();
  final vechiclenumberController = TextEditingController();

  final formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    getAllUser(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Page'),
      ),
      body: Form(key: formkey,
        child: Column(
          children: [
            TextFormField(
              controller: nameController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20))),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  "value is Empty";
                } else {
                  return null;
                }
              },
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: phonenumberController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20))),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  "value is Empty";
                } else {
                  return null;
                }
              },
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: vehicleModelController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20))),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  "value is Empty";
                } else {
                  return null;
                }
              },
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: vechiclenumberController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20))),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  "value is Empty";
                } else {
                  return null;
                }
              },
            ),
            SizedBox(
              height: 40,
            ),
            ElevatedButton(onPressed: () {
              if (formkey.currentState!.context) {
                addonclick(UserModel);
                Navigator.pop(context);
                
              }
            }, child: Text('Add'))
          ],
        ),
      ),
    );
  }

  Future<void> addonclick(UserModel) async {
    final name = nameController.text.trim();
    final phonenumber = phonenumberController.text.trim();
    final vehicleModel = vehicleModelController.text.trim();
    final vehiclenumber = vechiclenumberController.text.trim();
    {
      name.isEmpty ||
          phonenumber.isEmpty ||
          vehicleModel.isEmpty ||
          vehiclenumber.isEmpty;

      final user = UserModel(
          name: name,
          phonenumber: phonenumber,
          vehiclemodel: vehicleModel,
          vehiclenumber: vehiclenumber);
      await addUser(user);
    }
  }
}
