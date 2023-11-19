import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart'; 
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget{
  const MyApp ({Key?key}): super(key: key);
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Toast Widget or show message Widget"),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            Fluttertoast.showToast(
              toastLength: Toast.LENGTH_LONG,
              gravity: ToastGravity.BOTTOM,
              msg: "MR Mostakim",webPosition: "right",
              fontSize: 20,
              textColor: Colors.black,
              backgroundColor: Colors.pink,

              );
          },
           child: Text("Press")),
      ),
    );
  }
}