import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
          scaffoldBackgroundColor: Color.fromARGB(255, 15, 24, 22)),
      home: ScrollTask(),
    );
  }
}

class ScrollTask extends StatelessWidget {
  const ScrollTask({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Color.fromARGB(255, 15, 24, 22),
          title: Title(
            color: Colors.red,
            child: Text(
              "Profile",
              style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
                fontSize: 23,
                fontFamily: "myfont2",
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
          leading: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.menu,
                color: Color.fromARGB(255, 255, 255, 255),
                size: 33,
              )),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.sensor_occupied_outlined,
                  size: 27,
                  color: Color.fromARGB(255, 255, 255, 255),
                )),
            IconButton(
                onPressed: () {},
                icon: Icon(Icons.dark_mode_rounded,
                    size: 27, color: Color.fromARGB(255, 255, 255, 255))),
          ],
        ),
        body: Column(
          // color: Color.fromARGB(200, 10, 1, 113),
          // width: 500,
          // height: 1000,

          children: [
            Container(
              child: Text("Doaa Abdallah Elsayed",
                  style: TextStyle(
                      fontSize: 30,
                      fontFamily: "myfont",
                      color: Colors.white,
                      fontWeight: FontWeight.w900)),
              alignment: Alignment.center,
              margin: EdgeInsets.all(50),
            ),
            SizedBox(
              height: 24,
            ),
            ClipRRect(
                borderRadius: BorderRadius.circular(400),
                child: Container(
                  child: Image.asset(
                    "assets/img/doaa.jpeg",
                    width: 350,
                    fit: BoxFit.cover,
                  ),
                )),
            SizedBox(
              height: 50,
            ),
            Container(
                margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                child: Positioned(
                  bottom: 100,
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 2.4),
                            borderRadius: BorderRadius.circular(55)),
                        child: SvgPicture.asset(
                          "assets/img/icons8-facebook.svg",
                          color: Colors.white,
                          height: 34,
                        ),
                        padding: EdgeInsets.all(6),
                        margin: EdgeInsets.all(20),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 2.4),
                            borderRadius: BorderRadius.circular(55)),
                        child: SvgPicture.asset(
                          "assets/img/icons8-instagram.svg",
                          color: Colors.white,
                          height: 34,
                        ),
                        padding: EdgeInsets.all(6),
                        margin: EdgeInsets.all(20),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 2.4),
                            borderRadius: BorderRadius.circular(55)),
                        child: SvgPicture.asset(
                          "assets/img/icons8-whatsapp.svg",
                          color: Colors.white,
                          height: 34,
                        ),
                        padding: EdgeInsets.all(6),
                        margin: EdgeInsets.all(20),
                      ),
                    ],
                    mainAxisAlignment: MainAxisAlignment.center,
                  ),
                ))
          ],
        ));
  }
}
