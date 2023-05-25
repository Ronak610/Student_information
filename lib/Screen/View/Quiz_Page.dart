import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:untitled2/Screen/Controoler/Student_controller.dart';

import '../../Api_http/Api_http.dart';
import '../Modal/student_modal.dart';

class Quiz_page extends StatefulWidget {
  const Quiz_page({Key? key}) : super(key: key);

  @override
  State<Quiz_page> createState() => _Quiz_pageState();
}

class _Quiz_pageState extends State<Quiz_page> {
  Student_Controoler student_controoler = Get.put(Student_Controoler());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black26,
        body: FutureBuilder<List<StudentModal>>(
          future: Api_http.api_http.getApi(),
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return Text("${snapshot.error}");
            } else if (snapshot.hasData) {
              student_controoler.l1.value = snapshot.data!;
              student_controoler.student_quiz.value = [];

              for (StudentModal s1 in student_controoler.l1) {
                if (s1.scores![0].score! > 30 && s1.scores![0].score! < 35) {
                  student_controoler.student_quiz.add(s1);
                }
              }
              for (StudentModal s1 in student_controoler.l1) {
                if (s1.scores![1].score! > 30 && s1.scores![1].score! < 35) {
                  student_controoler.student_quiz.add(s1);
                }
              }
              for (StudentModal s1 in student_controoler.l1) {
                if (s1.scores![2].score! > 30 && s1.scores![2].score! < 35) {
                  student_controoler.student_quiz.add(s1);
                }
              }

              return ListView.builder(
                  itemCount: student_controoler.student_quiz.length,
                  itemBuilder: (context, index) {
                    return (student_controoler
                                        .student_quiz[index].scores![0].score! >
                                    30 &&
                                student_controoler
                                        .student_quiz[index].scores![0].score! <
                                    35 ||
                            student_controoler
                                        .student_quiz[index].scores![1].score! >
                                    30 &&
                                student_controoler
                                        .student_quiz[index].scores![1].score! <
                                    35 ||
                            student_controoler
                                        .student_quiz[index].scores![2].score! >
                                    30 &&
                                student_controoler
                                        .student_quiz[index].scores![2].score! <
                                    35)
                        ? InkWell(
                      onTap: (){
                        student_controoler.student_index.value = student_controoler.student_quiz[index] ;
                        Get.toNamed('s');

                        print(
                            "================${student_controoler.student_index}");
                      },
                          child: Container(
                      color: Colors.white,
                            margin: EdgeInsets.all(3),
                            child: ListTile(
                                leading: ClipOval(
                                  child: Image.asset(
                                      "assets/image/00${student_controoler.student_quiz[index].id! >= 100 ? "${student_controoler.student_quiz[index].id}" : "${student_controoler.student_quiz[index].id! >= 10 ? "0${student_controoler.student_quiz[index].id}" : "00${student_controoler.student_quiz[index].id}"}"}.png"),
                                ),
                                title: Text(
                                    "${student_controoler.student_quiz[index].name}",style: TextStyle(fontWeight: FontWeight.bold),),
                                subtitle: Text(""
                                    "${(student_controoler.student_quiz[index].scores![0].score! > 30 && student_controoler.student_quiz[index].scores![0].score! < 35) ? student_controoler.student_quiz[index].scores![0].score!.toStringAsFixed(2) : (student_controoler.student_quiz[index].scores![1].score! > 30 && student_controoler.student_quiz[index].scores![1].score! < 35) ? student_controoler.student_quiz[index].scores![1].score!.toStringAsFixed(2) : (student_controoler.student_quiz[index].scores![2].score! > 30 && student_controoler.student_quiz[index].scores![2].score! < 35) ? student_controoler.student_quiz[index].scores![2].score!.toStringAsFixed(2) : null}%",style: TextStyle(fontWeight: FontWeight.w600)),
                              ),
                          ),
                        )
                        : null;
                  });
            }
            return Center(child: CircularProgressIndicator());
          },
        ),
      ),
    );
  }
}
