import 'dart:math';

import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubit/mental cubit.dart';
import '../../cubit/state.dart';

class RuleMinus2 extends StatelessWidget {
  const RuleMinus2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit,AppState>(
      listener: (context,state){},
      builder: (context,state){
        var cubit=AppCubit.get(context);

        TextEditingController answerController=TextEditingController();



        return Scaffold(
          appBar: AppBar(),
          body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [

                (cubit.studyVar1!=0)?Text('${cubit.studyVar1}',style: TextStyle(fontSize: 30),):Text(''),
                (cubit.studyVar2!=0)?Text('${cubit.studyVar2}',style: TextStyle(fontSize: 30),):Text(''),
                (cubit.studyVar3!=0)?Text('${cubit.studyVar3}',style: TextStyle(fontSize: 30),):Text(''),
                (cubit.studyVar4!=0)?Text('${cubit.studyVar4}',style: TextStyle(fontSize: 30),):Text(''),
                (cubit.studyVar5!=0)?Text('${cubit.studyVar5}',style: TextStyle(fontSize: 30),):Text(''),
                (cubit.studyVar6!=0)?Text('${cubit.studyVar6}',style: TextStyle(fontSize: 30),):Text(''),
                (cubit.studyVar7!=0)?Text('${cubit.studyVar7}',style: TextStyle(fontSize: 30),):Text(''),
                Divider(thickness: 10,color: Colors.black,),
                SizedBox(height: 20,),
                Row(
                  children: [
                    (cubit.nextExample==true)?Expanded(
                      child: TextFormField(
                        controller: answerController,
                        keyboardType: TextInputType.number,
                        //onFieldSubmitted: ,
                        //onChanged: ,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return '';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                            labelText: "الجواب",
                            border: OutlineInputBorder()),
                      ),
                    ):Text(''),


                    (cubit.nextExample==true)? Material(

                      elevation: 25,
                      clipBehavior: Clip.antiAlias,
                      child: MaterialButton(
                        minWidth: 150,
                        onPressed: () {

                          if(int.parse(answerController.text)==cubit.answer){
                            AwesomeDialog(
                              context: context,
                              dialogType: DialogType.SUCCES,
                              animType: AnimType.BOTTOMSLIDE,
                              title: ' رائع ',




                            ).show();
                            answerController.text='';
                            cubit.studyVar1=0;
                            cubit.studyVar2=0;
                            cubit.studyVar3=0;
                            cubit.studyVar4=0;
                            cubit.studyVar5=0;
                            cubit.studyVar6=0;
                            cubit.studyVar7=0;

                            cubit.moveExample();
                          }
                          else{
                            AwesomeDialog(
                              context: context,
                              dialogType: DialogType.ERROR,
                              animType: AnimType.BOTTOMSLIDE,
                              title: ' حاول مرة اخرى ',




                            ).show();
                          }

                        },
                        color: Colors.green,
                        height: 50,
                        child: Text(
                          'تحقق',
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.white),
                        ),
                      ),
                    ):Text(''),
                  ],
                ),
                SizedBox(height: 20,),

                Spacer(),
                (cubit.nextExample==false)?Material(
                  shape: RoundedRectangleBorder(
                    borderRadius:
                    BorderRadius.circular(30),
                  ),
                  elevation: 25,
                  clipBehavior: Clip.antiAlias,
                  child: MaterialButton(
                    onPressed: () {
                      int x =Random().nextInt(30) + 1;
                      print(x);
                      cubit.choseStudyExampleForMinus2(x);
                      cubit.moveExample();
                    },
                    minWidth: 150,

                    color: Colors.green,
                    height: 50,
                    child: Text(
                      'start'.toUpperCase(),
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                  ),
                ):Text(''),
              ],
            ),
          ),

        );
      },

    );
  }
}
