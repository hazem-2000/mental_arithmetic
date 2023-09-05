import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mental_arithmetic/screen/plus5/Rule+1.dart';
import 'package:mental_arithmetic/screen/plus5/Rule+3.dart';
import 'package:mental_arithmetic/screen/plus5/Rule+4.dart';

import '../../cubit/mental cubit.dart';
import '../../cubit/state.dart';
import 'Rule+2.dart';

class RulePlus5 extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppState>(
      listener: (context, state) {},
      builder: (context, state) {
        AppCubit cubit = AppCubit.get(context);
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
                                  return RulePlus1();
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
                                  return RulePlus2();
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
                                  return RulePlus3();
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
                                  return RulePlus4();
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



            ],
          ),
        );
      },
    );
  }
}
