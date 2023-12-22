import 'package:flutter/material.dart';
import 'package:flutter_assignment20220104040/secondPage.dart';



class Firstpage extends StatefulWidget {
  @override
  State<Firstpage> createState() => _FirstpageState();
}

class _FirstpageState extends State<Firstpage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigoAccent,
        title: Text(
          "TechGadget App",
          style: TextStyle(
              fontSize: 28, fontWeight: FontWeight.bold, color: Colors.redAccent),
        ),
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            height:  (10/900)* height,
          ),
          Container(
              height: (240 / 872) * height,
              decoration: BoxDecoration(color: Colors.amberAccent),
              child: Center(
                  child: Image.asset("Images/Tab2019.jpg",
                      height: 200,
                      width:  300))),
          Container(
            height: (12 / 802.72) * height,
          ),
          Container(
            height: (130 / 872) * height,
            width: (350 / 372) * width,
            decoration: BoxDecoration(
              color: Colors.deepOrangeAccent,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: (10 / 872) * height,
                ),
                Padding(
                  padding:
                  EdgeInsets.symmetric(horizontal: (10 / 372) * width),
                  child: Text(
                    "Bdt. 10,990 (Including Tax)",
                    style: TextStyle(
                      color: Colors.brown,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,

                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: (15 / 392.72) * width,
                      vertical: (6 / 872) * height),
                  child: Text(
                    "Samsung Galaxy Tab 8.0(2019)",
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ),
              ],
            ),
          ),

          Container(
            margin: EdgeInsets.symmetric(vertical: (4/872)*height),
            height: (300 / 872) * height,
            width: (350 / 372) * width,
            decoration: BoxDecoration(
              color: Colors.limeAccent,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Column(
              children: [

                Padding(
                  padding:
                  EdgeInsets.symmetric(horizontal: (20 / 392.72) * width,vertical: (9/872)*height),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Features Description ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.black),),
                      Divider(thickness: 1,),

                      Padding(
                        padding:  EdgeInsets.symmetric(vertical: (9/872)*height),
                        child: Text(
                          "1) Operating System: Android 11.0\n\n2) Ram: 2GB ,Rom: 32GB\n\n3) Display: 8.0 inch IPS\n\n4)Available Colors:Black,Silver",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          Container(
            height: (10 / 802) * height,
          ),


          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => second_page()));
            },
            child: Container(
              width: (180 / 372) * width,
              height: (50 / 872) * height,
              decoration: BoxDecoration(

                color: Colors.white,
                border: Border.all(color: Colors.green,width: 2),
                borderRadius: BorderRadius.circular(25),
                boxShadow: [
                  BoxShadow(
                    spreadRadius: 1,
                    color: Colors.grey.shade400,

                  ),
                ],

              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [


                  Icon(
                    Icons.shopping_cart_checkout,
                    color: Colors.lime,
                    size: 30,
                    shadows: [
                      Shadow(color: Colors.black)
                    ],
                  ),
                  Container(width: 20
                    ,),

                  Text(
                    "Buy Now",
                    style: TextStyle(
                      color: Colors.deepOrange,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      /*shadows: [Shadow(
                        color: Colors.black,


                      )],*/
                    ),
                  ),

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}