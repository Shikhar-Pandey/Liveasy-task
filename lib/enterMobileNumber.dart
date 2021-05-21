import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:liveasy_task/verifyPhone.dart';

class EnterMobileNumber extends StatefulWidget {
  @override
  _EnterMobileNumberState createState() => _EnterMobileNumberState();
}

class _EnterMobileNumberState extends State<EnterMobileNumber> {
  TextEditingController mobile = TextEditingController();
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: GestureDetector(onTap: (){
            Navigator.pop(context);
          },
            child: Icon(
              Icons.close,
              color: Colors.black,
            ),
          ),
          backgroundColor: Colors.white38,
          elevation: 0,
        ),
        body:Form(key: formKey,
          child: ListView(
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 50.0),
              children: [
                SizedBox(
                  height: 60.0,
                ),
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    "Please enter your mobile number",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Column(
                  children: [
                    Text(
                      "You'll receive a 4 digit code",
                      style: TextStyle(fontSize: 15, color: Colors.black54),
                    ),
                    Text(
                      "to verify next.",
                      style: TextStyle(fontSize: 15, color: Colors.black54),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30.0,
                ),
                Container(
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.black)),
                  child: Row(
                    children: [
                      Expanded(flex: 1, child: Container(decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('images/india.png'),
                          )),)),
                      Expanded(
                          flex: 1,
                          child: Container(
                            child: Text(
                              "+91",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          )),
                      Expanded(
                          flex: 1,
                          child: Container(
                            child: Text(
                              "-",
                              style: TextStyle(
                                  color: Colors.black87, fontSize: 20.0),
                            ),
                          )),
                      Expanded(
                        flex: 7,
                        child: Container(
                            child: TextFormField(
                          keyboardType: TextInputType.phone,
                          controller: mobile,
                          validator: (value) {
                            return value.isEmpty
                                ? "Please Enter Mobile No."
                                : null;
                          },
                          decoration: InputDecoration(
                              hintText: "Mobile Number",
                              border: InputBorder.none,
                              hintStyle: TextStyle(
                                letterSpacing: 1.5,
                                color: Colors.black54,
                                fontSize: 16.0,
                              )),
                        )),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                GestureDetector(
                  onTap: () {
                    if (formKey.currentState.validate())
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                                VerifyPhone("+91"+mobile.text)));
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 10.0),
                    color: Colors.indigo[900].withOpacity(0.9),
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 18.0),
                      child: Center(
                          child: Text(
                        "CONTINUE",
                        style: TextStyle(
                            color: Colors.white,
                            letterSpacing: 1,
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0),
                      )),
                    ),
                  ),
                )
              ]),
        ));
  }
}
