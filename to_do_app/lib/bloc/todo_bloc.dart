import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_list/models/todo_model.dart';

part 'todo_event.dart';

class TodoBloc extends Bloc<TodoEvent, List<ToDo>> {
  TodoBloc() : super([]) {
    on<ToDoAdded>((event, emit) {
      emit([...state, ToDo(name: event.title, createdAt: DateTime.now())]);
    });
  }
}
