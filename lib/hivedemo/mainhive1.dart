
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';

void main()async{
  await Hive.initFlutter();
  await Hive.openBox('todo_box');
  runApp(MaterialApp(
          debugShowCheckedModeBanner: false,
          home:MYtodo()
  ));
}

class MYtodo  extends StatefulWidget{
  @override
  State<MYtodo> createState() => _MYtodoState();
}

class _MYtodoState extends State<MYtodo> {
  List<Map<String, dynamic>>tasks =[];//empty list
  final title = TextEditingController();
  final task = TextEditingController();
  //hive object
  final my_task_box = Hive.box("todo_box");
  initState(){
    super.initState();
    fetchTask();
  }


//hive create operation
  Future<void> createTask(Map<String, dynamic> newtask) async{
    await my_task_box.add(newtask);
    fetchTask();
  }
//read all data from hive
  void fetchTask(){
    final task_from_hive =my_task_box.keys.map((key) {
      final value =my_task_box.get(key);
      return{"id":key,'title':value['title'],'task':value['task']};

    }).toList();
    setState(() {
      tasks=task_from_hive.reversed.toList();//reversed to sort in items in latest to oldest one
    });
  }
  //read a single data from hive
  Map<String, dynamic>readData(int key){
    final sdata = my_task_box.get(key);
    return sdata;
  }
  //update task
  Future<void> updateTask(int itemkey,Map<String, String> uptask) async{
    await my_task_box.put(itemkey,uptask);
    fetchTask();

  }
  //delete task
  Future<void> deleteTask(int itemkey) async {
    await my_task_box.delete(itemkey);
    fetchTask();

    ScaffoldMessenger.of(context)
        .showSnackBar(const SnackBar(content: Text("Successfully Deleted")));
  }



  void showTask(BuildContext context, int ? itemkey) {
    if(itemkey !=null){
      final existing_task = tasks.firstWhere((element) => element['id']==itemkey);
      title.text = existing_task['title'];
      task.text = existing_task['task'];
    }
    showModalBottomSheet(
        elevation: 5,
        isScrollControlled: true,
        context: context,
         builder: (ctx){
      return Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Colors.blue,
                Colors.white,
                Colors.blueAccent,
                Colors.white,
              ],
            )
        ),
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom+120,
          top: 20,
          left: 20,
          right: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(controller: title,decoration: InputDecoration(hintText: "title"),),
            TextField(controller: task,decoration: InputDecoration(hintText: "task"),),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: () async{
              if(itemkey == null){
                createTask({'title':title.text.trim(),
                'task':task.text.trim()});
              }
              if(itemkey != null){
                updateTask(itemkey,{
                  'title':title.text,
                  'task':task.text
                });
              }
              title.text="";
              task.text="";
              Navigator.of(context).pop();
            }, child: Text(itemkey== null? "create task":"update task"))
          ],
        ),
      );
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("TOdo"),),
      body: tasks.isEmpty? Center(child: Text("NO TASK")) : ListView.builder(
        itemCount: tasks.length,
          itemBuilder: (ctx,index){
          final mytask=tasks[index];
        return Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Colors.blue,
                  Colors.indigo,
                  Colors.blue,
                  Colors.white,
                ],
              )
          ),
          child: Card(
          child: ListTile(
            title: Text(mytask["title"]),
            subtitle: Text(mytask["task"]),
            trailing: Wrap(
              children: [
                IconButton(onPressed: (){
                  showTask(context,mytask['id'] );

                }, icon: Icon(Icons.edit)),
                IconButton(onPressed: (){
                  deleteTask(mytask['id']);

                }, icon: Icon(Icons.delete)),
              ],
            ),
          ),
          ),
        );
      }),
      floatingActionButton: FloatingActionButton(onPressed: () => showTask(context,null),
      child: Icon(Icons.add),),
    );

  }






}


