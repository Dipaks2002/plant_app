import 'dart:ui';
// import 'package:flutter_windowmanager/flutter_windowmanager.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //disable screenshot
    //  FlutterWindowManager.addFlags(FlutterWindowManager.FLAG_SECURE);
    return const MaterialApp(
      home: PlantApp(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class PlantApp extends StatefulWidget {
  const PlantApp({Key? key}) : super(key: key);

  @override
  State createState() => _PlantAppState();
}

class _PlantAppState extends State<PlantApp> {
  bool isMainscreen = false;
  bool isLoginScreen = false;
  bool isOtpvalidate = false;
  bool isMainPlantScreen = false;
   bool isPlant = false;
  bool isThankyouScreen = false;
 

Scaffold isThankyou() {
  if (!isThankyouScreen) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            setState(() {
              isPlant = false;
            });
          },
          child: const Icon(Icons.arrow_back, size: 35,),
        ),
        toolbarHeight: 35,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.green.withOpacity(0.3),
                ),
                child: const Center(
                  child: Icon(
                    Icons.check_circle_outline,
                    color: Colors.green,
                    size: 100,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Thank You!',
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.black),
              ),
              const SizedBox(height: 10),
              const Text(
                "Thank you for visiting our App And Give the Intrest ! Your order is on its way.",
                style: TextStyle(fontSize: 18, color: Colors.black),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    isMainPlantScreen = false;
                    // isThankyouScreen = true;
                    isPlant = false;
                  });
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.green,
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                ),
                child: const Text(
                  'Go Back Home',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  } else {
    return const Scaffold();
  }
}


  Scaffold PlantScreen(){
    if(isPlant == false){
      return Scaffold(
         appBar: AppBar(
          leading: GestureDetector(
              onTap: () {
                setState(() {
                  isMainPlantScreen = false; 
              });
            },
            child: const Icon(Icons.arrow_back , size: 35,),
        ),
        toolbarHeight: 35,
      ),
        body:Column(
          //
          children: [
            const SizedBox(height: 40,),
            Container(
              margin: const EdgeInsets.all(20),
              padding: const EdgeInsets.all(10),
              height: 300,
              width: 360,
              decoration: BoxDecoration(
                borderRadius:BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.1),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3), // changes position of shadow
                  ),
                ], 
                image:const DecorationImage(
                  image: AssetImage('assets/whats.jpg'),
                  fit: BoxFit.cover,
                ),),
              ),
              const Text(". . .",
              style: TextStyle(
                color: Colors.green,
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Padding(
                padding: EdgeInsets.only(left: 17),
                child: Text("Snake Plants",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.w900,
                ),),
              ) ,
              Padding(
                padding: EdgeInsets.only(left: 17),
                child: Text("Plants make your life with minimal and happy love the plant more and enjoy life." , 
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                ),),
              )
            ],),
            const SizedBox(height: 15,),
            Container(
              height: 220,
              width: 320,
              decoration: BoxDecoration(
                borderRadius:BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromRGBO(118, 152, 75, 1),
                    spreadRadius: 5,
                    blurRadius: 0,
                    offset: Offset(0, 2), 
            )
          ],
        ),
        child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            children: [
                              Icon(Icons.arrow_upward, size: 40),
                              Text(
                                "Height",
                                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "30 cm to 40 cm",
                                style: TextStyle(fontSize: 14),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Icon(Icons.thermostat, size: 40),
                              Text(
                                "Temperature",
                                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "20°C to 25°C",
                                style: TextStyle(fontSize: 14),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Icon(Icons.local_florist, size: 40),
                              Text(
                                "Pot",
                                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Ceramic Pot",
                                style: TextStyle(fontSize: 14),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 30),
                       Row(
                        children: [
                           const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Total Price",
                                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "₹ 350",
                                    style: TextStyle(fontSize: 21),
                                  ),
                                ],
                              ),
                              const SizedBox(width: 10,),
                              GestureDetector(
                                onTap: (){
                                  setState(() {
                                     isPlant = true;
                                  });
                                },
                                child: Container(
                                    height: 85,
                                    width: 181,
                                     decoration: BoxDecoration(
                                       borderRadius: BorderRadius.circular(10),
                                       color: const Color.fromRGBO(103, 133, 74, 1)
                                
                                     ),
                                     child:const Row(children: [
                                      SizedBox(width: 8,),
                                      Icon(Icons.shopping_cart , size: 38,),
                                      SizedBox(width: 5,),
                                      Text("Add To Card", 
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 21,
                                        fontWeight: FontWeight.w700
                                      ),)
                                     ],)
                                ),
                              )
                        ],
                      ),
                      Container()
                    ],
                  ),
                ),
            ),
          ],)

      );
    }else{
      return isThankyou();
    }
  }

  Scaffold mainPlantScreen(){
    if(isMainPlantScreen == false){
        return Scaffold(
           appBar: AppBar(
          leading: GestureDetector(
              onTap: () {
                setState(() {
                  isOtpvalidate = false; 
              });
            },
            child: const Icon(Icons.arrow_back , size: 35,),
        ),
        toolbarHeight: 35,
      ),
            body: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 40),
                  const Row(
                    children: [
                      SizedBox(width: 20),
                      Text(
                        "Find Your \nFavorite Plants",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 33,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 100), 
                      Icon(Icons.calendar_today, size: 40),
                    ],
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    height: 120,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return Container(
                          width: 330,
                          margin: const EdgeInsets.symmetric(horizontal: 10),
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(204, 231, 185, 1),
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.black.withOpacity(0.7)),
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 2,
                                color: const Color.fromARGB(204, 231, 185, 1).withOpacity(0.2),
                                offset: const Offset(0, 2),
                              )
                            ],
                          ),
                          child: Row(
                            children: [
                              const SizedBox(width: 10), 
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "30% OFF",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 27,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    "April 13, 2024", 
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(width: 70),
                              Image.asset(
                                "assets/01.png", 
                                width: 120,
                                height: 120,
                                fit: BoxFit.cover,
                              ),
                              
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Indoor",
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.w900,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(
                              height: 180,
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: 6,
                                itemBuilder: (context, index) {
                                  return GestureDetector(
                                    onTap: () {
                                      // Navigate to the next screen when image is tapped
                                      setState(() {
                                        isMainPlantScreen = true;
                                      });
                                    },
                                    child: Container(
                                      width: 150,
                                      margin: const EdgeInsets.symmetric(horizontal: 10),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(color: Colors.black.withOpacity(0.7)),
                                        boxShadow: const [
                                          BoxShadow(
                                            blurRadius: 2,
                                            color: Colors.white,
                                            offset: Offset(0, 2),
                                          )
                                        ],
                                      ),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Image.asset(
                                            "assets/plant5.png",
                                            width: 170,
                                            height: 110,
                                            fit: BoxFit.cover,
                                          ),
                                          const Text(
                                            "Snake Plant ", // Replace this with your description
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          const Padding(
                                            padding: EdgeInsets.all(10.0),
                                            child: Row(
                                              children: [
                                                Text(
                                                  "₹ 310",
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 50,
                                                ),
                                                Icon(Icons.calendar_today, size: 20),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                   
                  //OutDoor Plants
                  const Padding(
                       padding:  EdgeInsets.all(8.0),
                       child:  Text("OutDoor",
                       style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w900,
                        color: Colors.black
                       ),),
                     ),
                     SizedBox(
                    height: 180, 
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 6,
                      itemBuilder: (context, index) {
                        return Container(
                          // height: 290,
                          width: 150,
                          margin: const EdgeInsets.symmetric(horizontal: 10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.black.withOpacity(0.7)),
                            boxShadow:const [
                              BoxShadow(
                                blurRadius: 2,
                                color:  Colors.white,
                                offset: const Offset(0, 2),
                              )
                            ],
                          ),
                           child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    // Image Widget
                                    Image.asset(
                                      "assets/whats.jpg", 
                                      width: 145, 
                                      height: 120, 
                                      fit: BoxFit.cover,
                                    ),
                                    // const SizedBox(height: 10),
                                    const Text(
                                      "Snake Plant ", // Replace this with your description
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),

                                    const Padding(
                                      padding:  EdgeInsets.all(8.0),
                                      child:  Row(
                                        children: [
                                           Text("₹ 310",
                                           style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                          ),),
                                          
                                       SizedBox(width: 70,),
                                       Icon(Icons.calendar_today, size: 20),
                                        ],
                                      ),
                                    ),
                                    
                                  ],
                                ),
                        );
                      },
                    ),
                  ),
                ],
              ),
                  ),])
        );

          }else{
              return PlantScreen();
          }
        }

  Scaffold isVerification(){
    if(isOtpvalidate == false){
      return  Scaffold(
         appBar: AppBar(
          leading: GestureDetector(
              onTap: () {
                setState(() {
                  isLoginScreen = false; 
              });
            },
            child: const Icon(Icons.arrow_back , size: 35,),
        ),
        toolbarHeight: 35,
      ),
        body:Padding(
          padding: const EdgeInsets.all(20),
          child: 
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
              const SizedBox(height: 40,),
              const Text("Verification" , style: TextStyle(
                color: Colors.black,
                fontSize: 35,
                fontWeight: FontWeight.bold
              ),),
              const SizedBox(height: 18,),
              const Text("Enter the OTP code from the Phone we  just sent You.", style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.normal
              ),),
              const SizedBox(height: 23,),

               OtpTextField(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    numberOfFields: 4,
                    borderColor: const Color(0xFF512DA8),
                    showFieldAsBox: true,
                    fieldHeight: 55,
                    fieldWidth: 65,
                    textStyle: const TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Roboto',
                    ),
                    borderRadius: BorderRadius.circular(10),
              ),


              const SizedBox( height:30),
              const Text("Dont recieve OTP Code ! Resend",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.w400
              ),),
              const SizedBox(height: 20,),

             ElevatedButton(
              onPressed: () {
                setState(() {
                  isOtpvalidate = true;
                }); 
              },
              style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 130, vertical: 20), // Adjust size
              backgroundColor: Colors.green, // Change color
              textStyle: const TextStyle(fontSize: 20), // Optional, change text size
            ),
              child: const Text('Submit' ,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),),
            ),
            Container(
              padding:const EdgeInsets.all(10),
              margin: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.black , width: 2)
                ),
                height: 250,
                width: 300,
                child:Image.asset("assets/signin.png")
            )
            ],),        
        )
      );
    }else{
      return mainPlantScreen();
    }
  }
  
  Scaffold LoginPage (){
    if(isLoginScreen==false){
      backgroundColor: const Color.fromARGB(255, 246, 244, 244);
      return Scaffold(
         appBar: AppBar(
          leading: GestureDetector(
              onTap: () {
                setState(() {
                  isMainscreen = false; 
              });
            },
            child: const Icon(Icons.arrow_back , size: 35,),
        ),
        toolbarHeight: 35,
      ),
        body: Container(
          padding: const EdgeInsets.all(10),
          child: Center(
            child:Column(children: [
              const SizedBox(height: 100,),
              const Text(" Log in ",
              style: TextStyle(
                color: Colors.black,
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),),
              const SizedBox(height: 20,),

              TextField(
                decoration: InputDecoration(
                  prefixIcon:const  Icon(Icons.phone),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide:const  BorderSide(
                      color: Colors.black,
                      width: 2,
                    ),
                  ),
                  labelText: "Mobile number",
                ),
              ),
              const SizedBox(height:27),
              ElevatedButton(
              onPressed: () {
                setState(() {
                  isLoginScreen = true;
                }); 
              },
              style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 155, vertical: 19), // Adjust size
              backgroundColor: Colors.green, // Change color
              textStyle: const TextStyle(fontSize: 20), // Optional, change text size
            ),
              child: const Text('Log In' ,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),),
            ),
            Container(
              height: 400,
              width: 280,
              
              child: Image.asset("assets/Asset1.png" ,)
          )],),
          ),
        ),
      );
    }else{
      return isVerification();
    }
  
}
  Scaffold isMainScreen(){
    if(isMainscreen==false) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 246, 244, 244),
       appBar: AppBar(
          actions: [
            GestureDetector(
              onTap: () {
                setState(() {
                  isMainscreen =true; 
              });
              },
              child: const Icon(Icons.arrow_forward ,size: 35,),
            )
          ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 350,
                height: 380,
                margin: const EdgeInsets.all(20),
                padding: const EdgeInsets.all(20),
                decoration: const BoxDecoration(
                ),
                child: Image.asset("assets/whats.jpg" , fit: BoxFit.cover,),
              ),
              // const SizedBox(height: ),
              const Text(
                "Enjoy Your \n life with Plants",
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 25),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    isMainscreen = true;
                  }); 
                },
                style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 125, vertical: 17), // Adjust size
                backgroundColor: const Color.fromARGB(255, 20, 151, 25), // Change color
                textStyle: const TextStyle(fontSize: 20), // Optional, change text size
              ),
                child: const Text('Get Started >' ,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),),
              ),
            ],
          ),
        ),
      ),
    );
  }else{
    return LoginPage();
  }
  }
  @override
  Widget build(BuildContext context) {
    return isMainScreen();
  }
}





 
