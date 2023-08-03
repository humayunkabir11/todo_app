import 'package:counter_apps/screens/widgets/style.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List toDoList = [];

String items = "";
  // MyInputValue(content){
  //  setState(() {
  //    items  = content;
  //  });
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ToDo"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  flex:7,
                  child: TextFormField(

                      onChanged: (content){
                        setState(() {
                          items  = content;
                        });

                        // MyInputValue(content);
                      },
                      decoration: AppInput(
                          "Item name", "Item")
                  ),
                ),
                Expanded(
                    flex: 3,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0,),
                      child: SizedBox(
                        height: 60,
                        child: ElevatedButton(
                          onPressed: (){
                            setState(() {
                              toDoList.add({"item" : items});
                            });
                          },child: Text("Add"),),
                      ),
                    ))
                // ElevatedButton(onPressed: (){}, child: const Text("Add"))
              ],
            ),
            ListView.builder(
              shrinkWrap: true,
               physics: NeverScrollableScrollPhysics(),
                itemCount:toDoList.length ,
                itemBuilder: (context, index){
                  return  Card(
                      child: ListTile(
                        leading : Text(toDoList[index]["item"].toString()),
                        trailing: IconButton(
                            onPressed: (){
                              setState(() {
                                toDoList.removeAt(index);
                              });
                            },
                            icon: Icon(Icons.delete)),
                      )

                  );
                })
        ],),
      ),
    );
  }
}
