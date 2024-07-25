import 'package:flutter/material.dart';
import 'package:hive_task/function.dart';
import 'package:hive_task/model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

List<UserModel>alluser=[];

  @override
  Widget build(BuildContext context) {
    getAllUser(context);
    return Scaffold(

      appBar: AppBar(title: Text('list page'),),
      body:
       
          ValueListenableBuilder(valueListenable: context,
          builder: (context,List<UserModel>alluser, child) => 
        
             ListView.builder(
              itemCount: alluser.length,
              
            itemBuilder: (context, index) {
            CircleAvatar(
              radius: 20,
            );
            ListTile(
              title:Text('name:') ,
              trailing: IconButton(onPressed: (){
                deleteUser(index);
              }, icon: Icon(Icons.delete)),
            );
                 },),
          ),
       );
    
    
  }
}