import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:mycode_wecode_project/src/provider/todos.dart';
import 'package:mycode_wecode_project/src/utils/app_styles.dart';
import 'package:provider/provider.dart';

import '../models/todo.dart';
import '../screens/edit_todos_screen.dart';
import '../utils/utils.dart';

class TodoWidget extends StatelessWidget {
  final Todo todo;

  const TodoWidget({
    required this.todo,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Slidable(
          key: Key(todo.id),
          startActionPane: ActionPane(
            motion: ScrollMotion(),
            children: [
              SlidableAction(
                // An action can be bigger than the others.
                flex: 2,
                onPressed: (context) => editTodo(context, todo),
                backgroundColor: Styles.bgColor,
                foregroundColor: Styles.successColor,
                icon: Icons.edit,
                label: 'Edit',
              ),
            ],
          ),
          endActionPane: ActionPane(
            motion: ScrollMotion(),
            children: [
              SlidableAction(
                // An action can be bigger than the others.
                flex: 2,
                onPressed: (context) => deleteTodo(context, todo),
                backgroundColor: Styles.bgColor,
                foregroundColor: Styles.errorColor,
                icon: Icons.delete,
                label: 'Delete',
              ),
            ],
          ),
          child: buildTodo(context),
        ),
      );

  Widget buildTodo(BuildContext context) => Container(
        color: Colors.white,
        padding: EdgeInsets.all(20),
        child: Row(
          children: [
            Checkbox(
              activeColor: Theme.of(context).primaryColor,
              checkColor: Colors.white,
              value: todo.isDone,
              onChanged: (_) {
                final porvider =
                    Provider.of<TodosProvider>(context, listen: false);
                final isDone = porvider.toggleTodoStatus(todo);

                Utils.showSnackBar(context,
                    isDone ? 'Task completed' : 'Task marked incomplete');
              },
            ),
            const SizedBox(width: 20),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    todo.title,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).primaryColor,
                      fontSize: 22,
                    ),
                  ),
                  if (todo.description.isNotEmpty)
                    Container(
                      margin: EdgeInsets.only(top: 4),
                      child: Text(
                        todo.description,
                        style: TextStyle(fontSize: 20, height: 1.5),
                      ),
                    )
                ],
              ),
            ),
          ],
        ),
      );

  void deleteTodo(BuildContext context, Todo todo) {
    final provider = Provider.of<TodosProvider>(context, listen: false);

    provider.removeTodo(todo);

    Utils.showSnackBar(context, 'Deleted the task ');
  }

  void editTodo(BuildContext context, Todo todo) => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => EditTodoPage(todo: todo),
        ),
      );
}
