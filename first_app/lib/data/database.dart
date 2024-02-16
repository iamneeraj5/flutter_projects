import 'package:hive_flutter/hive_flutter.dart';

class ToDoDatabase {
  List toDolist = [];
  final _mybox = Hive.box('mybox');

  void createInitialData() {
    toDolist = [
      ["Learn Flutter", false],
      ["Workout", false],
    ];
  }

  //load data
  void loadData() {
    toDolist = _mybox.get("TODOLIST");
  }

  //update Database
  void updateDatabase() {
    _mybox.put("TODOLIST", toDolist);
  }
}
