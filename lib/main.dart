import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_list_flutter_bloc/cubit/todo_cubit.dart';

import 'add_todo.dart';
import 'todo_list.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TodoCubit(),
      child: MaterialApp(
        initialRoute: '/',
        title: 'Material App',
        routes: {
          '/': (context) => TodoList(),
          '/add-todo': (context) => AddTodoPage()
        },
      ),
    );
  }
}
