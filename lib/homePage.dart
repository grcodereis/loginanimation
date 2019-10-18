import 'package:flutter/material.dart';
import 'package:login_animation/animations/fadeAnimation.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                colors: [
                  Color(0xFFF206ffd),
                  Color(0xFFF3280fb),
                  Color(0xFFF28c3eb)
                ]
            )
          ),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 90),
              Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                   FadeAnimation(1.2,Text("Welcome Back", style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold
                    ))),

                    FadeAnimation(1.6,Text("Login to Super Admin", style: TextStyle(
                      color: Colors.white,
                      fontSize: 18
                    )))

                  ],
                ),
              ),

                SizedBox(height: 35),

                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFFf4f7fc),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(35),
                        topLeft: Radius.circular(35)
                      )
                    ),

                    child: Padding(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(height: 50),
                          FadeAnimation(1.6,Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  blurRadius: 8,
                                  offset: Offset(0, 3)
                                )
                              ]
                            ),

                              child: Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                      color: Colors.grey
                                    )
                                  )
                                ),

                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: "Username",
                                    hintStyle: TextStyle(color: Colors.grey),
                                    border: InputBorder.none
                                  ),
                                ),

                              ),

                          )),
                          SizedBox(height: 10),

                          FadeAnimation(1.9,Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  blurRadius: 8,
                                  offset: Offset(0, 3)
                                )
                              ]
                            ),

                              child: Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                      color: Colors.grey
                                    )
                                  )
                                ),

                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: "Password",
                                    hintStyle: TextStyle(color: Colors.grey),
                                    border: InputBorder.none
                                  ),
                                ),

                              ),

                          )),


                        SizedBox(height: 30),

                        FadeAnimation(2,Text("Forget your password?", style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFFF3a6eff),
                          fontWeight: FontWeight.bold
                        ))),

                        SizedBox(height: 40),

                        FadeAnimation(2.2,Container(
                          height: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            gradient: LinearGradient(
                              begin: Alignment.centerRight,
                              colors: [
                                Color(0xFFF206ffd),
                                Color(0xFFF3280fb)
                              ]
                            )
                          ),

                          child: Center(
                            child: Text("Login", style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.bold
                            )),
                          ),

                        ))

                        ],
                      ),
                    ),

                  ),
                )

            ],
          ),

        ),
    );
  }
}