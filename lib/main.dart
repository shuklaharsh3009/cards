import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  Color grey = const Color(0xffc4c4c4);
  Color green = const Color(0xffA8D8AD);
  Color orange = const Color(0xffD18585);
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Cards",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: LayoutBuilder(
          builder: ( context, constraints ) {
            double sw = constraints.maxWidth;
            double sh = constraints.maxHeight;
            return Column(
              children: [
                Container(
                  width: sw,
                  height: sh*0.4,
                  padding: EdgeInsets.symmetric( horizontal: sw*0.05 , ),
                  child: Container(
                    width: sw*0.9,
                    height: sh*0.35,
                    margin: EdgeInsets.only( top: sh*0.05 ),
                    padding: EdgeInsets.symmetric( horizontal: sw*0.05, ),
                    color: orange,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox( height: sh*0.05 ,),
                        Container(
                          width: sw < 430 ? 145 : 250,
                          height: sh*0.1,
                          color: grey,
                        ),
                        SizedBox( height: sh*0.05 ,),
                        Container(
                          width: sw*0.8,
                          height: sh*0.1,
                          color: green,
                        ),
                        SizedBox( height: sh*0.05 ,),
                      ],
                    ),
                  ),
                ),
                SizedBox( height: sh*0.05 ,),
                Stack(
                  alignment: AlignmentDirectional.bottomCenter,
                  children: [
                    Container(
                      width: sw,
                      height: sh*0.3,
                      padding: EdgeInsets.symmetric( horizontal: sw*0.05 , ),
                      child: Container(
                        width: sw*0.9,
                        height: sh*0.25,
                        margin: EdgeInsets.only( top: sh*0.05 ),
                        padding: EdgeInsets.symmetric( horizontal: sw*0.05, ),
                        color: orange,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox( height: sh*0.1 ,),
                            Container(
                              width: sw*0.8,
                              height: sh*0.1,
                              color: green,
                            ),
                            SizedBox( height: sh*0.05 ,),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: sw < 430 ? 145 : 250,
                      height: sh*0.125,
                      margin: EdgeInsets.only( bottom: sh*0.2, ),
                      color: grey,
                    ),
                  ],
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}