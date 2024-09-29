import 'package:flutter/material.dart';

class Detailview extends StatefulWidget {
  const Detailview({super.key});

  @override
  State<Detailview> createState() => _DetailviewState();
}

class _DetailviewState extends State<Detailview> {

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
              SizedBox(height: 20,),
              Container(
                height: 350,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(200),
                    topLeft: Radius.circular(200)
                  ),
                    image: DecorationImage(image: AssetImage("images/fila5.jpg"), fit: BoxFit.cover)
                ),
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Nice Men's",style: TextStyle(fontFamily: 'TT Hoves Pro', fontWeight: FontWeight.w900, fontSize: 40)),
                      Text("Dri-Fit",style: TextStyle(fontFamily: 'TT Hoves Pro', fontWeight: FontWeight.w900, fontSize: 40)),
                    ],
                  ),
                  Text("R699.99",style: TextStyle(fontFamily: 'TT Hoves Pro', fontWeight: FontWeight.w900, fontSize: 25)),
                ],
              ),
              SizedBox(height: 20,),
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
                        height: 40,
                        width: 80,
                        decoration: BoxDecoration(
                            color: boxFill,
                            border: Border.all( color: Colors.black,),
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Text("S",style: TextStyle(color: texFill, fontSize: 24, fontWeight: FontWeight.bold),),
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
                          height: 40,
                          width: 80,
                          decoration: BoxDecoration(
                              color: boxFill2,
                              border: Border.all( color: Colors.black,),
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Text("M",style: TextStyle(color: texFill2, fontSize: 24, fontWeight: FontWeight.bold),)
                      ),
                    ),
                    SizedBox(width: 20,),
                    Container(
                        alignment: Alignment.center,
                        height: 40,
                        width: 80,
                        decoration: BoxDecoration(
                            border: Border.all( color: Colors.black,),
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Text("L",style: TextStyle(color: texFill3, fontSize: 24, fontWeight: FontWeight.bold),)
                    ),
                    SizedBox(width: 20,),
                    Container(
                        alignment: Alignment.center,
                        height: 40,
                        width: 80,
                        decoration: BoxDecoration(
                            border: Border.all( color: Colors.black,),
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Text("XL",style: TextStyle(color: texFill4, fontSize: 24, fontWeight: FontWeight.bold),)
                    ),
                    SizedBox(width: 20,),
                    Container(
                        alignment: Alignment.center,
                        height: 40,
                        width: 80,
                        decoration: BoxDecoration(
                            border: Border.all( color: Colors.black,),
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Text("XXL",style: TextStyle(color: texFill5, fontSize: 24, fontWeight: FontWeight.bold),)
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30,),
              Container(
                height: 80,
                width: MediaQuery.of(context).size.width,
                child: Text("© iSAD is a passionate software development brand dedicated to creating innovative and user-friendly digital solutions. With a commitment to quality and a focus on enhancing user experiences, we strive to empower businesses and individuals through technology. Our team of skilled developers and designers works tirelessly to bring creative ideas to life, ensuring that every app we create meets the highest standards of functionality and design. Join us on this journey as we redefine the way you shop and connect with fashion."),
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
                child: Text("Add to cart", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w900, fontSize: 30,fontFamily: 'TT Hoves Pro'),),
              )
            ],
          ),
        ),
      ),
    );
  }
}
