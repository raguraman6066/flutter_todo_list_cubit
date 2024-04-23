import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit/todo_cubit.dart';

class AddTodoPage extends StatelessWidget {
  AddTodoPage({super.key});
  final todoTitleController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Todo'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TextField(
              controller: todoTitleController,
              decoration: InputDecoration(hintText: 'Title'),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  BlocProvider.of<TodoCubit>(context)
                      .addTodo(todoTitleController.text.trim());
                  Navigator.pop(context);
                  //context.read<TodoCubit>().addTodo(todoTitleController.text.trim());
                },
                child: Text('Add'))
          ],
        ),
      ),
    );
  }
}
