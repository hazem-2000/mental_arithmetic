import 'package:flutter/material.dart';
import 'package:mental_arithmetic/cubit/mental%20cubit.dart';
import 'package:mental_arithmetic/screen/plus%2010/RulePlus10+1.dart';
import 'package:mental_arithmetic/screen/plus%2010/RulePlus10+3.dart';
import 'package:mental_arithmetic/screen/plus%2010/RulePlus10+5.dart';
import 'package:mental_arithmetic/screen/plus%2010/RulePlus10+6.dart';
import 'package:mental_arithmetic/screen/plus%2010/RulePlus10+7.dart';
import 'package:mental_arithmetic/screen/plus%2010/RulePlus10+8.dart';

import 'RulePlus10+2.dart';
import 'RulePlus10+4.dart';
import 'RulePlus10+9.dart';

class RulePlus10 extends StatelessWidget {
  const RulePlus10({Key? key}) : super(key: key);

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
                            AppCubit.get(context).studyVar1=0;
                            AppCubit.get(context).studyVar2=0;
                            AppCubit.get(context).studyVar3=0;
                            AppCubit.get(context).studyVar4=0;
                            AppCubit.get(context).studyVar5=0;
                            AppCubit.get(context).studyVar6=0;
                            AppCubit.get(context).studyVar7=0;
                            AppCubit.get(context).nextExample=false;
                            Navigator.push(context, MaterialPageRoute(builder: (context){
                              return RulePlus10Plus1();
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
                                    'قاعدة الرقم +1',
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
                            AppCubit.get(context).studyVar1=0;
                            AppCubit.get(context).studyVar2=0;
                            AppCubit.get(context).studyVar3=0;
                            AppCubit.get(context).studyVar4=0;
                            AppCubit.get(context).studyVar5=0;
                            AppCubit.get(context).studyVar6=0;
                            AppCubit.get(context).studyVar7=0;
                            AppCubit.get(context).nextExample=false;
                            Navigator.push(context, MaterialPageRoute(builder: (context){
                              return RulePlus10Plus2();
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
                                    'قاعدة الرقم +2',
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
                            AppCubit.get(context).studyVar1=0;
                            AppCubit.get(context).studyVar2=0;
                            AppCubit.get(context).studyVar3=0;
                            AppCubit.get(context).studyVar4=0;
                            AppCubit.get(context).studyVar5=0;
                            AppCubit.get(context).studyVar6=0;
                            AppCubit.get(context).studyVar7=0;
                            AppCubit.get(context).nextExample=false;
                            Navigator.push(context, MaterialPageRoute(builder: (context){
                              return RulePlus10Plus3();
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
                                  'قاعدة الرقم +3',style: TextStyle(fontSize: 30),

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
                            AppCubit.get(context).studyVar1=0;
                            AppCubit.get(context).studyVar2=0;
                            AppCubit.get(context).studyVar3=0;
                            AppCubit.get(context).studyVar4=0;
                            AppCubit.get(context).studyVar5=0;
                            AppCubit.get(context).studyVar6=0;
                            AppCubit.get(context).studyVar7=0;
                            AppCubit.get(context).nextExample=false;
                            Navigator.push(context, MaterialPageRoute(builder: (context){
                              return RulePlus10Plus4();
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
                                  'قاعدة الرقم +4',style: TextStyle(fontSize: 30),

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
                            AppCubit.get(context).studyVar1=0;
                            AppCubit.get(context).studyVar2=0;
                            AppCubit.get(context).studyVar3=0;
                            AppCubit.get(context).studyVar4=0;
                            AppCubit.get(context).studyVar5=0;
                            AppCubit.get(context).studyVar6=0;
                            AppCubit.get(context).studyVar7=0;
                            AppCubit.get(context).nextExample=false;
                            Navigator.push(context, MaterialPageRoute(builder: (context){
                              return RulePlus10Plus5();
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
                            AppCubit.get(context).studyVar1=0;
                            AppCubit.get(context).studyVar2=0;
                            AppCubit.get(context).studyVar3=0;
                            AppCubit.get(context).studyVar4=0;
                            AppCubit.get(context).studyVar5=0;
                            AppCubit.get(context).studyVar6=0;
                            AppCubit.get(context).studyVar7=0;
                            AppCubit.get(context).nextExample=false;
                            Navigator.push(context, MaterialPageRoute(builder: (context){
                              return RulePlus10Plus6();
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
                                    'قاعدة الرقم +6',
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
                            AppCubit.get(context).studyVar1=0;
                            AppCubit.get(context).studyVar2=0;
                            AppCubit.get(context).studyVar3=0;
                            AppCubit.get(context).studyVar4=0;
                            AppCubit.get(context).studyVar5=0;
                            AppCubit.get(context).studyVar6=0;
                            AppCubit.get(context).studyVar7=0;
                            AppCubit.get(context).nextExample=false;
                            Navigator.push(context, MaterialPageRoute(builder: (context){
                              return RulePlus10Plus7();
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
                                  'قاعدة الرقم +7',style: TextStyle(fontSize: 30),

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
                            AppCubit.get(context).studyVar1=0;
                            AppCubit.get(context).studyVar2=0;
                            AppCubit.get(context).studyVar3=0;
                            AppCubit.get(context).studyVar4=0;
                            AppCubit.get(context).studyVar5=0;
                            AppCubit.get(context).studyVar6=0;
                            AppCubit.get(context).studyVar7=0;
                            AppCubit.get(context).nextExample=false;
                            Navigator.push(context, MaterialPageRoute(builder: (context){
                              return RulePlus10Plus8();
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
                                  'قاعدة الرقم +8',style: TextStyle(fontSize: 30),

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
                            AppCubit.get(context).studyVar1=0;
                            AppCubit.get(context).studyVar2=0;
                            AppCubit.get(context).studyVar3=0;
                            AppCubit.get(context).studyVar4=0;
                            AppCubit.get(context).studyVar5=0;
                            AppCubit.get(context).studyVar6=0;
                            AppCubit.get(context).studyVar7=0;
                            AppCubit.get(context).nextExample=false;
                            Navigator.push(context, MaterialPageRoute(builder: (context){
                              return RulePlus10Plus9();
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
                                  'قاعدة الرقم +9',style: TextStyle(fontSize: 30),

                                ),


                              ],
                            ),
                          ),
                        ),
                      ),
                    ),

                  ],
                ),
              )),



        ],
      ),
    );
  }
}
