import 'package:flutter/material.dart';

class second_page extends StatefulWidget {
  @override
  State<second_page> createState() => _second_pageState();
}

class _second_pageState extends State<second_page> {
  String d_value = "Choose a payment method";
  String selection=" ";

  void pressed() {
    selection="Bkash";
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Expanded(
          child: AlertDialog(
            title: Center(child: Text('Selected Bkash')),
             content: Text('Payment is Successful'),
          ),
        );
      },
    );
  }

  void pressed1() {
    selection="Rocket";
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Expanded(
          child: AlertDialog(
            title: Center(child: Text('Selected Rocket')),
            content: Text('Payment is Successful'),
          ),
        );
      },
    );
  }

  void pressed2() {
    selection="Nagad";
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Expanded(
          child: AlertDialog(
            title: Center(child: Text('Selected Nagad')),
            content: Text('Payment is Successful'),
          ),
        );
      },
    );
  }

  void pressed3() {
    selection="MasterCard";
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Expanded(
          child: AlertDialog(
            title: Center(child: Text('Selected MasterCard')),
            content: Text('Payment  is Successful'),
          ),
        );
      },
    );
  }



  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Payment Method",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.lime,
            fontSize: 20,
          ),
        ),
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body: Column(
        children: [


          Center(
            child: Container(
              height: (716 / 802) * height,

              decoration: BoxDecoration(

                color: Colors.redAccent,
              ),

              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    width: (240/372)*width,
                    decoration: BoxDecoration(
                      color: Colors.deepOrangeAccent,
                      borderRadius: BorderRadius.circular(20),

                    ),
                    child: Center(
                      child: DropdownButton(
                        value: d_value,
                        borderRadius: BorderRadius.circular(15),
                        onChanged: (String? n_value) {
                          setState(() {
                            d_value = n_value!;
                          });
                        },
                        items: [
                          DropdownMenuItem<String>(
                              value: "Choose a payment method",
                              child: Text("Choose a payment method")),
                          DropdownMenuItem<String>(
                              value: "POS Payment",
                              child: Text("POS Payment")),
                          DropdownMenuItem<String>(
                              value: "Online Payment",
                              child: Text("Online Payment")),

                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: (50/872)*height,
                  ),

                  Container(
                    height: (620 / 872) * height,

                    decoration: BoxDecoration(
                      color: Colors.lime,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [

                        Column(

                            children: [


                              Padding(
                                padding:  EdgeInsets.fromLTRB(0, 0, 0, 0),
                                child: Text("Payment Methods : ",style: TextStyle(fontSize: 23,color: Colors.grey,fontWeight: FontWeight.bold),),
                              ),
                              Container(height: (50/872)*height,),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [

                                  Container(width: (90/373)*width,),
                                  GestureDetector(
                                      onTap: pressed,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          SizedBox.fromSize(size: Size(0,0)),

                                          Image.asset(
                                            "Images/Bkash.png",
                                            height: 50 ,
                                            width: 50,
                                          ),
                                          SizedBox.fromSize(size: Size(0,0)),

                                        ],
                                      )),

                                  GestureDetector(
                                      onTap: pressed1,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          SizedBox.fromSize(size: Size(0,0)),
                                          Image.asset(
                                            "Images/Rocket.png",
                                            height: 50,
                                            width: 50,
                                          ),
                                          SizedBox.fromSize(size: Size(0,0)),

                                        ],
                                      )),




                                  GestureDetector(
                                      onTap: pressed2,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          SizedBox.fromSize(size: Size(0,0)),
                                          Image.asset(
                                            "Images/Nagad.webp",
                                            height: 50,
                                            width: 50,
                                          ),
                                          SizedBox.fromSize(size: Size(0,0)),

                                        ],
                                      )),




                                  GestureDetector(
                                      onTap: pressed3,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          SizedBox.fromSize(size: Size(0,0)),
                                          Image.asset(
                                            "Images/masterCard.png",
                                            height: 50,
                                            width: 50,
                                          ),
                                          SizedBox.fromSize(size: Size(0,0)),

                                        ],
                                      )),


                                  Container(width: (90/373)*width,),



                                ],
                              ),
                            ]),
                        Container(
                          height: (70 / 872) * height,


                        ),


                        Container(


                            width:width,
                            height: 80,
                            decoration: BoxDecoration(
                              color: Colors.amber,
                              borderRadius: BorderRadius.circular(30),

                            ),
                            child:
                            Row(
                              children: [
                                SizedBox.fromSize(size:Size((30/392)*width,0)),
                                GestureDetector (
                                  onTap: (){
                                    setState(() {
                                      if(selection==" " || d_value == "Choose a payment method")
                                      {
                                        showDialog(

                                          context: context,
                                          builder: (BuildContext context) {
                                            return Expanded(

                                              child: AlertDialog(

                                                content: Text('Ready to pay',),

                                              ),
                                            );
                                          },
                                        );
                                      }
                                      else
                                      {
                                        showDialog(
                                          context: context,
                                          builder: (BuildContext context) {
                                            return Expanded(
                                              child: AlertDialog(

                                                title: Center(child: Text('$selection ($d_value)')),


                                                content: Text('Bdt. 10,990 is paid successfully'),

                                              ),
                                            );
                                          },
                                        );

                                      }

                                    });



                                  },



                                  child: Container(

                                    height: (50/872)*height,
                                    width:( 100/392)*width,
                                    decoration: BoxDecoration(
                                      color:Colors.white,
                                      borderRadius: BorderRadius.circular(19),
                                    ),
                                    child: Center(child: Text("Pay Now",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color:Colors.deepOrange),),),
                                  ),
                                ),

                                SizedBox.fromSize(size: Size((100/392)*width,0)),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [

                                    Row(
                                      children: [

                                        GestureDetector(
                                            onTap:(){Navigator.pop(context);},
                                            child: Container(

                                              height: (50/872)*height,
                                              width:( 100/392)*width,
                                              decoration: BoxDecoration(
                                                color:Colors.white,
                                                borderRadius: BorderRadius.circular(19),
                                              ),

                                            child:Center( child: Text("Go Back",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color:Colors.deepOrange)))),
                                            ),
                                      ],
                                    ),
                                  ],
                                )

                              ],
                            )





                        ),




                      ],
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