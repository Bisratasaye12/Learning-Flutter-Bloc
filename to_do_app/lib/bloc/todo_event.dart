part of 'todo_bloc.dart';

sealed class TodoEvent {}

final class ToDoAdded extends TodoEvent {
  final String title;
  ToDoAdded(this.title);
}

final class ToDoRemoved extends TodoEvent {
  final ToDo todo;
  ToDoRemoved({required this.todo});
}
