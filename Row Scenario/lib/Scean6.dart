import 'package:flutter/material.dart';
void main(){
  runApp(const MainApp());
}

class MainApp extends StatelessWidget{
  const MainApp({super.key});
  @override
  Widget build(BuildContext context){
    print("Device height: ${MediaQuery.of(context).size.height}");
    return MaterialApp(
      home:Scaffold(
        appBar: AppBar(
          title:const Text("Row Scenario",
            style:TextStyle(fontSize: 30, fontWeight: FontWeight.w500, fontStyle: FontStyle.italic)),
            centerTitle: true,
            backgroundColor: Colors.lightGreen,
        ),
        body: Container(
          height: MediaQuery.of(context).size.height,
          color: Colors.blue,
          child: Row(
            mainAxisAlignment:MainAxisAlignment.center,
            crossAxisAlignment:CrossAxisAlignment.end,
           children : [
            Container(
                  height: 200,
                  width: 200,
                  color: Colors.red,       
            ),
          ],),
        )
      ),
    );
  }
}
