import 'package:get/get.dart';
import 'package:untitled2/Screen/Modal/student_modal.dart';
import 'package:untitled2/Screen/View/Exam_page.dart';
import 'package:untitled2/Screen/View/Homework_Page.dart';

import '../View/Quiz_Page.dart';

class Student_Controoler {

  RxList<StudentModal> l1 = <StudentModal>[].obs;
  RxList<StudentModal> student_exam = <StudentModal>[].obs;
  RxList<StudentModal> student_quiz = <StudentModal>[].obs;
  RxList<StudentModal> student_Home = <StudentModal>[].obs;
  Rx<StudentModal> student_index = StudentModal().obs;

}
