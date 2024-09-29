import 'package:flutter/material.dart';
import 'package:stride_collective/detailview.dart';

class Mainview extends StatefulWidget {
  const Mainview({super.key});

  @override
  State<Mainview> createState() => _MainviewState();
}

class _MainviewState extends State<Mainview> {

  Color boxFill = Colors.black;
  Color boxFill2 = Colors.white;
  Color boxFill3 = Colors.white;
  Color boxFill4 = Colors.white;
  Color boxFill5 = Colors.white;

  Color texFill = Colors.white;
  Color texFill2 = Colors.black;
  Color texFill3 = Colors.black;
  Color texFill4 = Colors.black;
  Color texFill5 = Colors.black;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.only(left: 20, right: 20, top: 80),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.menu),
                  Text("-StrideCollective-", style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800, fontFamily: 'TT Hoves Pro'),),
                  Container(
                    alignment: Alignment.center,
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Icon(Icons.shopping_cart_sharp, color: Colors.white,size: 20,),
                  )
                ],
              ),
              SizedBox(height: 30,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: (){
                        if(boxFill == Colors.white){
                          boxFill = Colors.black;
                          texFill = Colors.white;
                        }
                        else if(boxFill ==  Colors.black){
                          boxFill = Colors.white;
                          texFill = Colors.black;
                        }
                        setState(() {

                        });
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: 60,
                        width: 120,
                        decoration: BoxDecoration(
                          color: boxFill,
                            border: Border.all( color: Colors.black,),
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: Text("All",style: TextStyle(color: texFill, fontSize: 28, fontWeight: FontWeight.bold),),
                      ),
                    ),
                    SizedBox(width: 20,),
                    GestureDetector(
                      onTap: (){
                        if(boxFill2 == Colors.white){
                          boxFill2 = Colors.black;
                          texFill2 = Colors.white;
                        }
                        else if(boxFill2 ==  Colors.black){
                          boxFill2 = Colors.white;
                          texFill2 = Colors.black;
                        }
                        setState(() {

                        });
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: 60,
                        width: 120,
                        decoration: BoxDecoration(
                          color: boxFill2,
                           border: Border.all( color: Colors.black,),
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Image(image: AssetImage("images/brand1.png"), color: texFill2,)
                      ),
                    ),
                    SizedBox(width: 20,),
                    Container(
                        alignment: Alignment.center,
                        height: 60,
                        width: 120,
                        decoration: BoxDecoration(
                            border: Border.all( color: Colors.black,),
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Image(image: AssetImage("images/brand2.png"), color: Colors.black,)
                    ),
                    SizedBox(width: 20,),
                    Container(
                        alignment: Alignment.center,
                        height: 60,
                        width: 120,
                        decoration: BoxDecoration(
                            border: Border.all( color: Colors.black,),
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Image(image: AssetImage("images/brand3.png"), color: Colors.black,width: 70,)
                    ),
                    SizedBox(width: 20,),
                    Container(
                        alignment: Alignment.center,
                        height: 60,
                        width: 120,
                        decoration: BoxDecoration(
                            border: Border.all( color: Colors.black,),
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Image(image: AssetImage("images/brand4.png"), color: Colors.black,width: 70,)
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Detailview()));
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Stack(
                            alignment: Alignment.topRight,
                            children: [
                              Container(
                                height: 200,
                                width: 200,
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(100),
                                        topLeft: Radius.circular(100)
                                    ),
                                    image: DecorationImage(image: AssetImage("images/fila5.jpg"), fit: BoxFit.cover)
                                ),
                              ),
                              Container(
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  border: Border.all(color: Colors.white,width: 4),
                                  borderRadius: BorderRadius.circular(90)
                                ),
                                child: Icon(Icons.favorite, color: Colors.white,),
                              )
                            ],
                          ),
                          SizedBox(height: 10,),
                          Text("Nice Men's",style: TextStyle(fontFamily: 'TT Hoves Pro', fontWeight: FontWeight.w900, fontSize: 20)),
                          Text("Dri-Fit",style: TextStyle(fontFamily: 'TT Hoves Pro', fontWeight: FontWeight.w900, fontSize: 20)),
                          SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("R699.99",style: TextStyle(fontFamily: 'TT Hoves Pro', fontWeight: FontWeight.w900, fontSize: 20)),
                              SizedBox(width: 15,),
                              Container(
                                alignment: Alignment.center,
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black),
                                  borderRadius: BorderRadius.circular(30)
                                ),
                                child: Icon(Icons.shopping_bag),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(width: 20,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Stack(
                          alignment: Alignment.topRight,
                          children: [
                            Container(
                              height: 200,
                              width: 200,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(100),
                                      topLeft: Radius.circular(100)
                                  ),
                                  image: DecorationImage(image: AssetImage("images/fila1.jpg"), fit: BoxFit.cover)
                              ),
                            ),
                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  border: Border.all(color: Colors.white,width: 4),
                                  borderRadius: BorderRadius.circular(90)
                              ),
                              child: Icon(Icons.favorite, color: Colors.white,),
                            )
                          ],
                        ),
                        SizedBox(height: 10,),
                        Text("Nice Men's",style: TextStyle(fontFamily: 'TT Hoves Pro', fontWeight: FontWeight.w900, fontSize: 20)),
                        Text("Dri-Fit",style: TextStyle(fontFamily: 'TT Hoves Pro', fontWeight: FontWeight.w900, fontSize: 20)),
                        SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("R699.99",style: TextStyle(fontFamily: 'TT Hoves Pro', fontWeight: FontWeight.w900, fontSize: 20)),
                            SizedBox(width: 15,),
                            Container(
                              alignment: Alignment.center,
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black),
                                  borderRadius: BorderRadius.circular(30)
                              ),
                              child: Icon(Icons.shopping_bag),
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(width: 20,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Stack(
                          alignment: Alignment.topRight,
                          children: [
                            Container(
                              height: 200,
                              width: 200,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(100),
                                      topLeft: Radius.circular(100)
                                  ),
                                  image: DecorationImage(image: AssetImage("images/fila3.jpg"), fit: BoxFit.cover)
                              ),
                            ),
                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  border: Border.all(color: Colors.white,width: 4),
                                  borderRadius: BorderRadius.circular(90)
                              ),
                              child: Icon(Icons.favorite, color: Colors.white,),
                            )
                          ],
                        ),
                        SizedBox(height: 10,),
                        Text("Nice Men's",style: TextStyle(fontFamily: 'TT Hoves Pro', fontWeight: FontWeight.w900, fontSize: 20)),
                        Text("Dri-Fit",style: TextStyle(fontFamily: 'TT Hoves Pro', fontWeight: FontWeight.w900, fontSize: 20)),
                        SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("R699.99",style: TextStyle(fontFamily: 'TT Hoves Pro', fontWeight: FontWeight.w900, fontSize: 20)),
                            SizedBox(width: 15,),
                            Container(
                              alignment: Alignment.center,
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black),
                                  borderRadius: BorderRadius.circular(30)
                              ),
                              child: Icon(Icons.shopping_bag),
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(width: 20,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Stack(
                          alignment: Alignment.topRight,
                          children: [
                            Container(
                              height: 200,
                              width: 200,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(100),
                                      topLeft: Radius.circular(100)
                                  ),
                                  image: DecorationImage(image: AssetImage("images/fila4.jpg"), fit: BoxFit.cover)
                              ),
                            ),
                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  border: Border.all(color: Colors.white,width: 4),
                                  borderRadius: BorderRadius.circular(90)
                              ),
                              child: Icon(Icons.favorite, color: Colors.white,),
                            )
                          ],
                        ),
                        SizedBox(height: 10,),
                        Text("Nice Men's",style: TextStyle(fontFamily: 'TT Hoves Pro', fontWeight: FontWeight.w900, fontSize: 20)),
                        Text("Dri-Fit",style: TextStyle(fontFamily: 'TT Hoves Pro', fontWeight: FontWeight.w900, fontSize: 20)),
                        SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("R699.99",style: TextStyle(fontFamily: 'TT Hoves Pro', fontWeight: FontWeight.w900, fontSize: 20)),
                            SizedBox(width: 15,),
                            Container(
                              alignment: Alignment.center,
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black),
                                  borderRadius: BorderRadius.circular(30)
                              ),
                              child: Icon(Icons.shopping_bag),
                            )
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 50,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("New in town",style: TextStyle(fontFamily: 'TT Hoves Pro', fontWeight: FontWeight.w800,fontSize: 20)),
                      Icon(Icons.arrow_forward)
                    ],
                  ),
                  Text("View all",style: TextStyle(fontFamily: 'TT Hoves Pro', fontWeight: FontWeight.w100))
                ],
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 120,
                    width: 120,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(100),
                            topRight: Radius.circular(100)
                        ),
                        image: DecorationImage(image: AssetImage("images/bot1.jpg"),fit: BoxFit.cover)
                    ),
                  ),
                  Container(
                    height: 120,
                    width: 120,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(100),
                            topRight: Radius.circular(100)
                        ),
                        image: DecorationImage(image: AssetImage("images/bot2.jpg"),fit: BoxFit.cover)
                    ),
                  ),
                  Container(
                    height: 120,
                    width: 120,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(100),
                        topRight: Radius.circular(100)
                      ),
                      image: DecorationImage(image: AssetImage("images/bot3.jpg"),fit: BoxFit.cover)
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Container(
                padding: EdgeInsets.only(left: 60, right: 60),
                alignment: Alignment.center,
                height: 80,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(25)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.home_outlined, color: Colors.white,size: 30,),
                    Icon(Icons.favorite_border_outlined, color: Colors.grey,size: 30,),
                    Icon(Icons.search_outlined, color: Colors.grey,size: 30,),
                    Icon(Icons.notification_add_outlined, color: Colors.grey,size: 30,),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
