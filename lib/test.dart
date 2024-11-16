import 'package:app_main/myprofile_app.dart';
import 'package:app_main/test.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Poli App",
      theme: ThemeData(primarySwatch:Colors.red),
      home: Profile(),

    );
  }
}
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:Icon(Icons.menu),
        title: Text("NETFLIX"),
        actions: [Icon(Icons.search_rounded),Icon(Icons.account_circle)],),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("HELLO WORLD!"),
            Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.live_help_outlined),
                  Text("Have a nice day")]
            ),
            Icon(Icons.menu,size: 30,color: Colors.red,),],
        ),
      ),

    );
  }
}
