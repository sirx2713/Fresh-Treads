import 'package:flutter/material.dart';
import 'package:stride_collective/mainview.dart';

class Landingview extends StatefulWidget {
  const Landingview({super.key});

  @override
  State<Landingview> createState() => _LandingviewState();
}

class _LandingviewState extends State<Landingview> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.only(left: 20, top: 80, right: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("-StrideCollective-", style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800, fontFamily: 'TT Hoves Pro'),),
              SizedBox(height: 30,),
              Container(
                alignment: Alignment.center,
                height: 400,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(200),
                    topRight: Radius.circular(200)
                  ),
                  image: DecorationImage(image: AssetImage("images/fila2.jpg"), fit: BoxFit.cover)
                ),
              ),
              SizedBox(height: 30,),
              Text("Always", style: TextStyle(fontWeight: FontWeight.w900, fontSize: 44,fontFamily: 'TT Hoves Pro'),),
              Text("Be Different", style: TextStyle(fontWeight: FontWeight.w900, fontSize: 44, fontFamily: 'TT Hoves Pro'),),
              SizedBox(height: 20,),
              Text("Life is not Perfect but Your", style: TextStyle(fontFamily: 'TT Hoves Pro', fontWeight: FontWeight.w100),),
              Text("Outfit Can be.",style: TextStyle(fontFamily: 'TT Hoves Pro', fontWeight: FontWeight.w100),),
              SizedBox(height: 50,),
              GestureDetector(
                onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Mainview()));
                },
                child: Material(
                  elevation: 5,
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: Text("Let's Go", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w900, fontSize: 30,fontFamily: 'TT Hoves Pro'),),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
