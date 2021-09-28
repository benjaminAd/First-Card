import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isSmallHeight = MediaQuery.of(context).size.height < 700 ;
    print(isSmallHeight);
    return Scaffold(
        appBar: AppBar(
          title: Text("First Card"),
        ),
        body: Container(
          alignment: Alignment.center,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: isSmallHeight ? MediaQuery.of(context).size.width * 0.90 : MediaQuery.of(context).size.width * 0.90,
                height: isSmallHeight ? MediaQuery.of(context).size.height * 0.25 : MediaQuery.of(context).size.height * 0.2,
                decoration: BoxDecoration(
                    color: Colors.pink,
                    borderRadius: BorderRadius.circular(15.0)),
              ),
              Container(
                margin: EdgeInsets.only(
                    bottom: isSmallHeight ? MediaQuery.of(context).size.width * 0.45 : MediaQuery.of(context).size.width * 0.43),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blue,
                ),
                child: Image.asset(
                  "images/1000emote1.png",
                  width: isSmallHeight ? MediaQuery.of(context).size.width * 0.25 : MediaQuery.of(context).size.width * 0.2,
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: isSmallHeight ? MediaQuery.of(context).size.width * 0.1 : MediaQuery.of(context).size.width * 0.1),
                child: Text("benjamin.adolphe@etu.umontpellier.fr"),
              ),
              Container(
                margin: EdgeInsets.only(top: isSmallHeight ? MediaQuery.of(context).size.width * 0.05 : MediaQuery.of(context).size.width * 0.05),
                child: Text("ADOLPHE Benjamin"),
              ),
              Container(
                  margin: EdgeInsets.only(top: isSmallHeight ? MediaQuery.of(context).size.width * 0.2 : MediaQuery.of(context).size.width * 0.2),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.person,
                      ),
                      Text("benjaminadolphe.fr")
                    ],
                  ))
            ],
          ),
        ));
  }
}
