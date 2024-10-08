import 'package:flutter/material.dart';
import 'package:todo_app/models/task_group.dart';
import 'package:todo_app/repository/supabase_repository.dart';

class TaskGroupProvider extends ChangeNotifier {

  final supabaseRepo = SupabaseRepository();

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  List<TaskGroup> _taskGroups = [];
  List<TaskGroup> get taskGroup => _taskGroups;

  Future<void> listTasksGroups() async {

    try {

      _isLoading = true;
      notifyListeners();
      _taskGroups = await supabaseRepo.listTasksGroups();
      notifyListeners();

    } catch (e) {

    } finally {

    }

  }

}