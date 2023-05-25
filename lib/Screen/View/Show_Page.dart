import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:untitled2/Screen/Controoler/Student_controller.dart';

class Show_Page extends StatefulWidget {
  const Show_Page({Key? key}) : super(key: key);

  @override
  State<Show_Page> createState() => _Show_PageState();
}

class _Show_PageState extends State<Show_Page> {
  Student_Controoler student_controoler = Get.put(Student_Controoler());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Student detail"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipOval(
                child: Image.asset(
                    "assets/image/00${student_controoler.student_index.value.id! >= 100 ? "${student_controoler.student_index.value.id}" : "${student_controoler.student_index.value.id! >= 10 ? "0${student_controoler.student_index.value.id}" : "00${student_controoler.student_index.value.id}"}"}.png"),
              ),
              SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Id :-",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue)),
                  Text(
                    " ${student_controoler.student_index.value.id}",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                ],
              ),SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Name :-",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue)),
                  Text(
                    " ${student_controoler.student_index.value.name}",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("type :-",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue)),
                  Text(
                    " ${student_controoler.student_index.value.scores![0].type}",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                ],
              ),SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Score :-",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue)),
                  Text(
                    " ${student_controoler.student_index.value.scores![0].score!.toStringAsFixed(2)}",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
