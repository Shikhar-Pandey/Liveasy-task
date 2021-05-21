import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:liveasy_task/selectProfile.dart';
import 'package:liveasy_task/enterMobileNumber.dart';

class SelectLanguage extends StatefulWidget {
  const SelectLanguage({Key key}) : super(key: key);

  @override
  _SelectLanguageState createState() => _SelectLanguageState();
}

class _SelectLanguageState extends State<SelectLanguage> {
  String language = 'English';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: <Widget>[
        Container(
          alignment: Alignment(0, -0.5),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage('images/firstpagebg.png'),
            fit: BoxFit.cover,
          )),
        ),
        Positioned(
            width: MediaQuery.of(context).size.width,
            top: MediaQuery.of(context).size.width * 0.30,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal:20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    'images/firstpage.jpeg',
                    scale: 2.0,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Please select your Language",
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    "You can change the language at any time.",
                    style: TextStyle(fontSize: 16.0, color: Colors.grey[600]),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 50),
                    child: Card(
                        child: Container(
                      padding: const EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                          color: Colors.white, border: Border.all()),
                      child: ListTile(

                        title: new DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            value: language,
                            icon: Icon(Icons.arrow_downward),
                            iconSize: 24,
                            onChanged: (String newValue) {
                              setState(() {
                                language = newValue;
                              });
                            },
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black54,
                                fontSize: 16),
                            items: <String>['English']
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ),
                        ),
                      ),
                    )),
                  ),
                  SizedBox(
                    height: 35.0,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 20.0, right: 40.0),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 25,
                        ),
                        Expanded(
                            child: Center(
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            height: 55,
                            child: FlatButton(

                              color: Colors.indigo[900].withOpacity(0.9),
                              textColor: Colors.white,
                              minWidth: MediaQuery.of(context).size.width,
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => EnterMobileNumber()));
                              },
                              child: Text(
                                "NEXT",
                                style: TextStyle(
                                    color: Colors.white,
                                    letterSpacing: 1,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16.0),
                              ),
                            ),
                          ),
                        ))
                      ],
                    ),
                  )
                ],
              ),
            )),
      ],
    ));
  }
}
