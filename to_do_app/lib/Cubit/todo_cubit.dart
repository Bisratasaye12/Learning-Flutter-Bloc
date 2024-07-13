import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_list/models/todo_model.dart';

class TodoCubit extends Cubit<List<ToDo>> {
  TodoCubit()
      : super([
          // ToDo(name: "First", createdAt: DateTime.now()),
          // ToDo(name: "sec", createdAt: DateTime.now()),
          // ToDo(name: "third", createdAt: DateTime.now())
        ]);

  void addToDo(String title) {
    final todo = ToDo(name: title, createdAt: DateTime.now());

    emit([...state,todo]);
  }
}
