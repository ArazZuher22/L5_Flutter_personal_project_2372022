import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mycode_wecode_project/src/provider/todos.dart';
import 'package:mycode_wecode_project/src/utils/app_layout.dart';
import 'package:mycode_wecode_project/src/utils/app_styles.dart';
import 'package:provider/provider.dart';

import '../models/todo.dart';
import '../widgets/todo_form_dialog_widget.dart';

class AddTodoDialogWidget extends StatefulWidget {
  @override
  _AddTodoDialogWidget createState() => _AddTodoDialogWidget();
}

class _AddTodoDialogWidget extends State<AddTodoDialogWidget> {
  final _formKey = GlobalKey<FormState>();
  String title = '';
  String description = '';

  @override
  Widget build(BuildContext context) => AlertDialog(
        content: Form(
          key: _formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text('Add Todo', style: Styles.headLineStyle4),
              TodoFormWidget(
                onChangedTitle: (title) => setState(() => this.title = title),
                onChangedDescription: (description) =>
                    setState(() => this.description = description),
                onSavedTodo: addTodo,
              ),
            ],
          ),
        ),
      );

  void addTodo() {
    final isValid = _formKey.currentState!.validate();

    if (!isValid) {
      return;
    } else {
      final todo = Todo(
        id: DateTime.now().toString(),
        title: title,
        description: description,
        createdTime: DateTime.now(),
      );

      final provider = Provider.of<TodosProvider>(context, listen: false);

      provider.addTodo(todo);

      Navigator.of(context).pop();
    }
  }
}
