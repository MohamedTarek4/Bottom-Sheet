import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: MyHomePage(),
    title: "Log in",
  ));
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void bottomSheet(BuildContext _context) {
    showModalBottomSheet(
        context: _context,
        builder: (_builder) {
          return Container(            
            decoration: BoxDecoration(
              color: Colors.black,
            ),
            height: 400.0,
            child: Padding(
              padding: const EdgeInsets.only(right: 10.0, left: 15.0),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 25.0),
                          child: Text(
                            "Log in with google ",
                            style:
                                TextStyle(color: Colors.white, fontSize: 18.0),
                          ),
                        ),
                        SizedBox(
                          width: 45.0,
                        ),
                        Icon(
                          Icons.computer,
                          color: Colors.white,
                          size: 30.0,
                        )
                      ],
                    ),

                    SizedBox(
                      height: 25.0,
                    ),

                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 25.0),
                          child: Text(
                            "Log in with Email ",
                            style:
                                TextStyle(color: Colors.white, fontSize: 18.0),
                          ),
                        ),
                        SizedBox(
                          width: 50.0,
                        ),
                        Icon(
                          Icons.email,
                          color: Colors.white,
                          size: 30.0,
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Bottom sheet",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.black,
          shadowColor: Colors.lightBlue,
          elevation: 5,
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 100.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 40.0,
              ),
              Text(
                "WELCOME TO OUR LOG IN PAGE",
                style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 8.0,
              ),
              Text(
                "Please Can You Click To The Bottom Down",
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              SizedBox(
                height: 80.0,
              ),
              Center(
                child: RaisedButton(
                  onPressed: () => bottomSheet(context),
                  color: Colors.black,
                  splashColor: Colors.lightBlue,
                  child: Text("Log-In",style: TextStyle(color: Colors.white),),
                ),
              )
            ],
          ),
        ));
  }
}
