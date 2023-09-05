import 'package:flutter/material.dart';
import 'package:mental_arithmetic/screen/minus10/Rule-10.dart';
import 'package:mental_arithmetic/screen/minus%205/Rule-5.dart';
import 'package:mental_arithmetic/screen/plus%2010/RulePlus10.dart';
import 'package:mental_arithmetic/screen/plus5/RulePlus5.dart';

class Study extends StatelessWidget {
  const Study({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(4),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context){
                              return RulePlus5();
                            }));
                          },
                          child: Container(
                            height: mediaQuery.size.height,
                            width: mediaQuery.size.width,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 214, 225, 237),
                                borderRadius: BorderRadius.circular(10)),
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [


                                  Text(
                                    'قاعدة الرقم +5',
                                    style: TextStyle(
                                        fontSize: 30, ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(4),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context){
                              return RuleMines5();
                            }));
                          },
                          child: Container(
                            height: mediaQuery.size.height,
                            width: mediaQuery.size.width,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 214, 225, 237),
                                borderRadius: BorderRadius.circular(10)),
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [


                                  Text(
                                    'قاعدة الرقم -5',
                                    style: TextStyle(fontSize: 30),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )),

          Expanded(
              child: Padding(
                padding: const EdgeInsets.all(4),
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(4),
                        child: GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context){
                              return RulePlus10();
                            }));
                          },
                          child: Container(
                            height: mediaQuery.size.height,
                            width: mediaQuery.size.width,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 214, 225, 237),
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'قاعدة الرقم +10',style: TextStyle(fontSize: 30),

                                ),


                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(4),
                        child: GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context){
                              return RuleMines10();
                            }));
                          },
                          child: Container(
                            height: mediaQuery.size.height,
                            width: mediaQuery.size.width,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 214, 225, 237),
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'قاعدة الرقم -10',style: TextStyle(fontSize: 30),

                                ),


                              ],
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )),



        ],
      ),
    );
  }
}
