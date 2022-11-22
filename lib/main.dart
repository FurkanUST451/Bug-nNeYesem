import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor:Colors.grey[800],
        appBar: AppBar(
          backgroundColor: Colors.grey[900],
          title: Center(
            child: Text("What You Eat Today?"),
          ),
        ),
      body: const SafeArea(
          child: MainPage()),
      ),
    );
  }
}
class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int soupNo =1;
  int mainCourseNo = 1;
  int dessertNo = 1;
  List<String> soupnames=["Mercimek","Tarhana","Tavuk Suyu","Düğün","Yoğurt Çorbası"];
  List<String> maincourse=["Karnıyarık","Mantı","Fasülye","İçli Köfte","Balık"];
  List<String> tatlinames=["Kadayıf","Baklava","Sütlaç","Kazandibi","Dondurma"];
  void yemekdegisimi (){
    setState(() {
      soupNo =Random().nextInt(5)+1;
      dessertNo =Random().nextInt(5)+1;
      mainCourseNo=Random().nextInt(5)+1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Material(
              elevation:8,
              borderRadius: BorderRadius.circular(20),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: InkWell(
                splashColor:Colors.pink,
                onTap: (){
                  yemekdegisimi();
                },
                child: Container(
                  height:235,
                  width: 300,
                    decoration:BoxDecoration(
                      color: Colors.red[900],
                      border: Border.all(width:1),
                      borderRadius:BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius:BorderRadius.circular(20),
                              child: Image.asset("assets/images/corba_$soupNo.jpg")),
                          SizedBox(height:6,),
                          Text(soupnames[soupNo-1],style:TextStyle(color:Colors.white,fontSize:20,fontWeight:FontWeight.bold),),
                        ],
                      ),
                    ),
                  ),
              ),
            ),
            SizedBox(height: 10,),
            Material(
              elevation:8,
              borderRadius: BorderRadius.circular(20),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: InkWell(
                splashColor:Colors.pink,
                onTap: (){yemekdegisimi();},
                child: Container(
                  height:235,
                  width: 300,
                  decoration:BoxDecoration(
                    color: Colors.red[900],
                    border: Border.all(width:1),
                    borderRadius:BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Column(
                      children: [
                        ClipRRect(
                            borderRadius:BorderRadius.circular(20),
                            child: Image.asset("assets/images/yemek_$mainCourseNo.jpg")),
                        SizedBox(height:6,),
                        Text(maincourse[mainCourseNo-1],style:TextStyle(color:Colors.white,fontSize:20,fontWeight:FontWeight.bold),),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10,),
            Material(
              elevation:8,
              borderRadius: BorderRadius.circular(20),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: InkWell(
                splashColor:Colors.pink,
                onTap: (){yemekdegisimi();},
                child: Container(
                  height:235,
                  width: 300,
                  decoration:BoxDecoration(
                    color: Colors.red[900],
                    border: Border.all(width:1),
                    borderRadius:BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Column(
                      children: [
                        ClipRRect(
                            borderRadius:BorderRadius.circular(20),
                            child: Image.asset("assets/images/tatli_$dessertNo.jpg")),
                        SizedBox(height:6,),
                        Text(tatlinames[dessertNo-1],style:TextStyle(color:Colors.white,fontSize:20,fontWeight:FontWeight.bold),),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        ),
    );
  }
}
