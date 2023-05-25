import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:untitled2/Screen/Controoler/Student_controller.dart';
import 'package:untitled2/Screen/View/Exam_page.dart';
import 'package:untitled2/Screen/View/Homework_Page.dart';
import 'package:untitled2/Screen/View/Quiz_Page.dart';

import '../../../Api_http/Api_http.dart';
import '../../Modal/student_modal.dart';

class Tabbar extends StatefulWidget {
  const Tabbar({Key? key}) : super(key: key);

  @override
  State<Tabbar> createState() => _TabbarState();
}

class _TabbarState extends State<Tabbar> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(
                  text: "Exam",
                ),
                Tab(
                  text: "Quiz",
                ),
                Tab(
                  text: "Home_work",
                ),
              ],
            ),
            centerTitle: true,
            title: Text("Student data"),
          ),
          body: TabBarView(children: [
            Exam_page(),
            Quiz_page(),
            Homework_page(),
          ]),
        ),
      ),
    );
    ;
  }
}
