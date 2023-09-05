import 'package:flutter/material.dart';
import 'package:mental_arithmetic/screen/minus%205/Rule%20-1.dart';
import 'package:mental_arithmetic/screen/minus%205/Rule-2.dart';
import 'package:mental_arithmetic/screen/minus%205/Rule-4.dart';

import '../../cubit/mental cubit.dart';
import 'Rule-3.dart';

class RuleMines5 extends StatelessWidget {
  const RuleMines5({Key? key}) : super(key: key);

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
                              return RuleMinus1();
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
                                    'قاعدة الرقم -1',
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
                              return RuleMinus2();
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
                                    'قاعدة الرقم -2',
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
                              return RuleMinus3();
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
                                  'قاعدة الرقم -3',style: TextStyle(fontSize: 30),

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
                              return RuleMinus4();
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
                                  'قاعدة الرقم -4',style: TextStyle(fontSize: 30),

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
