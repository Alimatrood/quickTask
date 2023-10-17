import 'package:flutter/material.dart';

class QuickTaskList extends StatefulWidget {
  const QuickTaskList({super.key});
  @override
  State<QuickTaskList> createState() {
    return _QuickTaskListState();
  }
}

class _QuickTaskListState extends State<QuickTaskList> {
  List<String> tasks = [];

  void addTask(String task) {
    setState(() {
      tasks.add(task);
      controller.text = "";
    });
  }

  void deleteTask(int index) {
    setState(() {
      tasks.removeAt(index);
    });
  }

  var controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  controller: controller,
                  decoration: const InputDecoration(
                    labelText: 'Add a task',
                    floatingLabelBehavior: FloatingLabelBehavior.auto,
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black12),
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            IconButton(
              onPressed: () {
                addTask(controller.text);
              },
              icon: const Icon(Icons.add),
            ),
          ],
        ),
        Expanded(
          child: ListView.builder(
            itemCount: tasks.length,
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.only(right: 5, left: 5, top: 10),
                decoration: BoxDecoration(
                    // border: Border.all(color: Colors.black26, width: 2),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(4),
                    ),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 10,
                          blurStyle: BlurStyle.outer,
                          offset: Offset.fromDirection(-1, 5),
                          color: Colors.black26)
                    ]),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    title: Text(tasks[index]),
                    onLongPress: () => deleteTask(index),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
