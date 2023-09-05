import 'dart:math';

import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mental_arithmetic/cubit/mental%20cubit.dart';
import 'package:mental_arithmetic/cubit/state.dart';

import '../Abacus.dart';

class Game extends StatelessWidget {
  var formKey = GlobalKey<FormState>();
  final numOfDigit;
  final numOfOperation;
  final level;
  final sub;
  final time;

  Game({this.numOfDigit, this.numOfOperation, this.level, this.sub, this.time});

  @override
  Widget build(BuildContext context) {
    TextEditingController numberController = TextEditingController();
    return BlocProvider(
      create: (context) => AppCubit(),
      child: BlocConsumer<AppCubit, AppState>(
        listener: (context, state) {
          if(AppCubit.get(context).var1==1){

          }
        },
        builder: (context, state) {

          int sum = 0;
          AppCubit cubit = AppCubit.get(context);

          check(){
            String number = numberController.text;
            Navigator.pop(context,numberController.text='');
            if (int.parse(number) == cubit.z) {
              AwesomeDialog(
                context: context,
                dialogType: DialogType.SUCCES,
                animType: AnimType.BOTTOMSLIDE,
                title: ' رائع ',




              ).show();
              cubit.incrementCorrectAnswer();

              cubit.z = 0;
            }
            else {
              AwesomeDialog(
                context: context,
                dialogType: DialogType.ERROR,
                animType: AnimType.BOTTOMSLIDE,
                title: 'حاول مرة اخرى  \n الجواب الصحيح هو  ${cubit
                    .z}\n  ${(sub==true)?(numOfOperation==1)?'${cubit.var1}-${cubit.var2}':
                (numOfOperation==2)?'${cubit.var1}-${cubit.var2}+${cubit.var3}':
                (numOfOperation==3)?'${cubit.var1}-${cubit.var2}+${cubit.var3}-${cubit.var4}':
                (numOfOperation==4)?
                    '${cubit.var1}-${cubit.var2}+${cubit.var3}-${cubit.var4}+${cubit.var5}':
                (numOfOperation==5)?
                    '${cubit.var1}-${cubit.var2}+${cubit.var3}-${cubit.var4}+${cubit.var5}-${cubit.var6}':
                (numOfOperation==6)?
                    '${cubit.var1}-${cubit.var2}+${cubit.var3}-${cubit.var4}+${cubit.var5}-${cubit.var6}+${cubit.var7}':
                (numOfOperation==7)?
                    '${cubit.var1}-${cubit.var2}+${cubit.var3}-${cubit.var4}+${cubit.var5}-${cubit.var6}+${cubit.var7}-${cubit.var8}':
                (numOfOperation==8)?
                    '${cubit.var1}-${cubit.var2}+${cubit.var3}-${cubit.var4}+${cubit.var5}-${cubit.var6}+${cubit.var7}-${cubit.var8}+${cubit.var9}':
                (numOfOperation==9)?
                    '${cubit.var1}-${cubit.var2}+${cubit.var3}-${cubit.var4}+${cubit.var5}-${cubit.var6}+${cubit.var7}-${cubit.var8}+${cubit.var9}-${cubit.var10}':
                (numOfOperation==10)?
                    '${cubit.var1}-${cubit.var2}+${cubit.var3}-${cubit.var4}+${cubit.var5}-${cubit.var6}+${cubit.var7}-${cubit.var8}+${cubit.var9}-${cubit.var10}+${cubit.var11}':
                (numOfOperation==11)?
                    '${cubit.var1}-${cubit.var2}+${cubit.var3}-${cubit.var4}+${cubit.var5}-${cubit.var6}+${cubit.var7}-${cubit.var8}+${cubit.var9}-${cubit.var10}+${cubit.var11}-${cubit.var12}':
                (numOfOperation==12)?
                    '${cubit.var1}-${cubit.var2}+${cubit.var3}-${cubit.var4}+${cubit.var5}-${cubit.var6}+${cubit.var7}-${cubit.var8}+${cubit.var9}-${cubit.var10}+${cubit.var11}-${cubit.var12}+${cubit.var13}':
                (numOfOperation==13)?
                    '${cubit.var1}-${cubit.var2}+${cubit.var3}-${cubit.var4}+${cubit.var5}-${cubit.var6}+${cubit.var7}-${cubit.var8}+${cubit.var9}-${cubit.var10}+${cubit.var11}-${cubit.var12}+${cubit.var13}-${cubit.var14}':
                (numOfOperation==14)?
                    '${cubit.var1}-${cubit.var2}+${cubit.var3}-${cubit.var4}+${cubit.var5}-${cubit.var6}+${cubit.var7}-${cubit.var8}+${cubit.var9}-${cubit.var10}+${cubit.var11}-${cubit.var12}+${cubit.var13}-${cubit.var14}+${cubit.var15}':
                (numOfOperation==15)?
                    '${cubit.var1}-${cubit.var2}+${cubit.var3}-${cubit.var4}+${cubit.var5}-${cubit.var6}+${cubit.var7}-${cubit.var8}+${cubit.var9}-${cubit.var10}+${cubit.var11}-${cubit.var12}+${cubit.var13}-${cubit.var14}+${cubit.var15}-${cubit.var16}':
                    '':'${(sub==false)?(numOfOperation==1)?'${cubit.var1}+${cubit.var2}':
                (numOfOperation==2)?'${cubit.var1}+${cubit.var2}+${cubit.var3}':
                (numOfOperation==3)?'${cubit.var1}+${cubit.var2}+${cubit.var3}+${cubit.var4}':
                (numOfOperation==4)?
                '${cubit.var1}+${cubit.var2}+${cubit.var3}+${cubit.var4}+${cubit.var5}':
                (numOfOperation==5)?
                '${cubit.var1}+${cubit.var2}+${cubit.var3}+${cubit.var4}+${cubit.var5}+${cubit.var6}':
                (numOfOperation==6)?
                '${cubit.var1}+${cubit.var2}+${cubit.var3}+${cubit.var4}+${cubit.var5}+${cubit.var6}+${cubit.var7}':
                (numOfOperation==7)?
                '${cubit.var1}+${cubit.var2}+${cubit.var3}+${cubit.var4}+${cubit.var5}+${cubit.var6}+${cubit.var7}+${cubit.var8}':
                (numOfOperation==8)?
                '${cubit.var1}+${cubit.var2}+${cubit.var3}+${cubit.var4}+${cubit.var5}+${cubit.var6}+${cubit.var7}+${cubit.var8}+${cubit.var9}':
                (numOfOperation==9)?
                '${cubit.var1}+${cubit.var2}+${cubit.var3}+${cubit.var4}+${cubit.var5}+${cubit.var6}+${cubit.var7}+${cubit.var8}+${cubit.var9}+${cubit.var10}':
                (numOfOperation==10)?
                '${cubit.var1}+${cubit.var2}+${cubit.var3}+${cubit.var4}+${cubit.var5}+${cubit.var6}+${cubit.var7}+${cubit.var8}+${cubit.var9}+${cubit.var10}+${cubit.var11}':
                (numOfOperation==11)?
                '${cubit.var1}+${cubit.var2}+${cubit.var3}+${cubit.var4}+${cubit.var5}+${cubit.var6}+${cubit.var7}+${cubit.var8}+${cubit.var9}+${cubit.var10}+${cubit.var11}+${cubit.var12}':
                (numOfOperation==12)?
                '${cubit.var1}+${cubit.var2}+${cubit.var3}+${cubit.var4}+${cubit.var5}+${cubit.var6}+${cubit.var7}+${cubit.var8}+${cubit.var9}+${cubit.var10}+${cubit.var11}+${cubit.var12}+${cubit.var13}':
                (numOfOperation==13)?
                '${cubit.var1}+${cubit.var2}+${cubit.var3}+${cubit.var4}+${cubit.var5}+${cubit.var6}+${cubit.var7}+${cubit.var8}+${cubit.var9}+${cubit.var10}+${cubit.var11}+${cubit.var12}+${cubit.var13}+${cubit.var14}':
                (numOfOperation==14)?
                '${cubit.var1}+${cubit.var2}+${cubit.var3}+${cubit.var4}+${cubit.var5}+${cubit.var6}+${cubit.var7}+${cubit.var8}+${cubit.var9}+${cubit.var10}+${cubit.var11}+${cubit.var12}+${cubit.var13}+${cubit.var14}+${cubit.var15}':
                (numOfOperation==15)?
                '${cubit.var1}+${cubit.var2}+${cubit.var3}+${cubit.var4}+${cubit.var5}+${cubit.var6}+${cubit.var7}+${cubit.var8}+${cubit.var9}+${cubit.var10}+${cubit.var11}+${cubit.var12}+${cubit.var13}+${cubit.var14}+${cubit.var15}+${cubit.var16}':'':''}'}'

              ).show();
              cubit.incrementWrongAnswer();
              //cubit.z = 0;
              cubit.z = 0;
            }
          }

          if (sub == false) {
            if (numOfOperation == 1) cubit.z = cubit.var1 + cubit.var2;
            if (numOfOperation == 2)
              cubit.z = cubit.var1 + cubit.var2 + cubit.var3;
            if (numOfOperation == 3)
              cubit.z = cubit.var1 + cubit.var2 + cubit.var3 + cubit.var4;
            if (numOfOperation == 4)
              cubit.z =
                  cubit.var1 + cubit.var2 + cubit.var3 + cubit.var4 +
                      cubit.var5;
            if (numOfOperation == 5)
              cubit.z = cubit.var1 +
                  cubit.var2 +
                  cubit.var3 +
                  cubit.var4 +
                  cubit.var5 +
                  cubit.var6;
            if (numOfOperation == 6)
              cubit.z = cubit.var1 +
                  cubit.var2 +
                  cubit.var3 +
                  cubit.var4 +
                  cubit.var5 +
                  cubit.var6 +
                  cubit.var7;
            if (numOfOperation == 7)
              cubit.z = cubit.var1 +
                  cubit.var2 +
                  cubit.var3 +
                  cubit.var4 +
                  cubit.var5 +
                  cubit.var6 +
                  cubit.var7 +
                  cubit.var8;
            if (numOfOperation == 8)
              cubit.z = cubit.var1 +
                  cubit.var2 +
                  cubit.var3 +
                  cubit.var4 +
                  cubit.var5 +
                  cubit.var6 +
                  cubit.var7 +
                  cubit.var8 +
                  cubit.var9;
            if (numOfOperation == 9)
              cubit.z = cubit.var1 +
                  cubit.var2 +
                  cubit.var3 +
                  cubit.var4 +
                  cubit.var5 +
                  cubit.var6 +
                  cubit.var7 +
                  cubit.var8 +
                  cubit.var9 +
                  cubit.var10;
            if (numOfOperation == 10)
              cubit.z = cubit.var1 +
                  cubit.var2 +
                  cubit.var3 +
                  cubit.var4 +
                  cubit.var5 +
                  cubit.var6 +
                  cubit.var7 +
                  cubit.var8 +
                  cubit.var9 +
                  cubit.var10 +
                  cubit.var11;
            if (numOfOperation == 11)
              cubit.z = cubit.var1 +
                  cubit.var2 +
                  cubit.var3 +
                  cubit.var4 +
                  cubit.var5 +
                  cubit.var6 +
                  cubit.var7 +
                  cubit.var8 +
                  cubit.var9 +
                  cubit.var10 +
                  cubit.var11 +
                  cubit.var12;
            if (numOfOperation == 12)
              cubit.z = cubit.var1 +
                  cubit.var2 +
                  cubit.var3 +
                  cubit.var4 +
                  cubit.var5 +
                  cubit.var6 +
                  cubit.var7 +
                  cubit.var8 +
                  cubit.var9 +
                  cubit.var10 +
                  cubit.var11 +
                  cubit.var12 +
                  cubit.var13;
            if (numOfOperation == 13)
              cubit.z = cubit.var1 +
                  cubit.var2 +
                  cubit.var3 +
                  cubit.var4 +
                  cubit.var5 +
                  cubit.var6 +
                  cubit.var7 +
                  cubit.var8 +
                  cubit.var9 +
                  cubit.var10 +
                  cubit.var11 +
                  cubit.var12 +
                  cubit.var13 +
                  cubit.var14;
            if (numOfOperation == 14)
              cubit.z = cubit.var1 +
                  cubit.var2 +
                  cubit.var3 +
                  cubit.var4 +
                  cubit.var5 +
                  cubit.var6 +
                  cubit.var7 +
                  cubit.var8 +
                  cubit.var9 +
                  cubit.var10 +
                  cubit.var11 +
                  cubit.var12 +
                  cubit.var13 +
                  cubit.var14 +
                  cubit.var15;
            if (numOfOperation == 15)
              cubit.z = cubit.var1 +
                  cubit.var2 +
                  cubit.var3 +
                  cubit.var4 +
                  cubit.var5 +
                  cubit.var6 +
                  cubit.var7 +
                  cubit.var8 +
                  cubit.var9 +
                  cubit.var10 +
                  cubit.var11 +
                  cubit.var12 +
                  cubit.var13 +
                  cubit.var14 +
                  cubit.var15 +
                  cubit.var16;
          }
          else {
            if (numOfOperation == 1) cubit.z = cubit.var1 - cubit.var2;
            if (numOfOperation == 2)
              cubit.z = cubit.var1 - cubit.var2 + cubit.var3;
            if (numOfOperation == 3)
              cubit.z = cubit.var1 - cubit.var2 + cubit.var3 - cubit.var4;
            if (numOfOperation == 4)
              cubit.z =
                  cubit.var1 - cubit.var2 + cubit.var3 - cubit.var4 +
                      cubit.var5;
            if (numOfOperation == 5)
              cubit.z = cubit.var1 -
                  cubit.var2 +
                  cubit.var3 -
                  cubit.var4 +
                  cubit.var5 -
                  cubit.var6;
            if (numOfOperation == 6)
              cubit.z = cubit.var1 -
                  cubit.var2 +
                  cubit.var3 -
                  cubit.var4 +
                  cubit.var5 -
                  cubit.var6 +
                  cubit.var7;
            if (numOfOperation == 7)
              cubit.z = cubit.var1 -
                  cubit.var2 +
                  cubit.var3 -
                  cubit.var4 +
                  cubit.var5 -
                  cubit.var6 +
                  cubit.var7 -
                  cubit.var8;
            if (numOfOperation == 8)
              cubit.z = cubit.var1 -
                  cubit.var2 +
                  cubit.var3 -
                  cubit.var4 +
                  cubit.var5 -
                  cubit.var6 +
                  cubit.var7 -
                  cubit.var8 +
                  cubit.var9;
            if (numOfOperation == 9)
              cubit.z = cubit.var1 -
                  cubit.var2 +
                  cubit.var3 -
                  cubit.var4 +
                  cubit.var5 -
                  cubit.var6 +
                  cubit.var7 -
                  cubit.var8 +
                  cubit.var9 -
                  cubit.var10;
            if (numOfOperation == 10)
              cubit.z = cubit.var1 -
                  cubit.var2 +
                  cubit.var3 -
                  cubit.var4 +
                  cubit.var5 -
                  cubit.var6 +
                  cubit.var7 -
                  cubit.var8 +
                  cubit.var9 -
                  cubit.var10 +
                  cubit.var11;
            if (numOfOperation == 11)
              cubit.z = cubit.var1 -
                  cubit.var2 +
                  cubit.var3 -
                  cubit.var4 +
                  cubit.var5 -
                  cubit.var6 +
                  cubit.var7 -
                  cubit.var8 +
                  cubit.var9 -
                  cubit.var10 +
                  cubit.var11 -
                  cubit.var12;
            if (numOfOperation == 12)
              cubit.z = cubit.var1 -
                  cubit.var2 +
                  cubit.var3 -
                  cubit.var4 +
                  cubit.var5 -
                  cubit.var6 +
                  cubit.var7 -
                  cubit.var8 +
                  cubit.var9 -
                  cubit.var10 +
                  cubit.var11 -
                  cubit.var12 +
                  cubit.var13;
            if (numOfOperation == 13)
              cubit.z = cubit.var1 -
                  cubit.var2 +
                  cubit.var3 -
                  cubit.var4 +
                  cubit.var5 -
                  cubit.var6 +
                  cubit.var7 -
                  cubit.var8 +
                  cubit.var9 -
                  cubit.var10 +
                  cubit.var11 -
                  cubit.var12 +
                  cubit.var13 -
                  cubit.var14;
            if (numOfOperation == 14)
              cubit.z = cubit.var1 -
                  cubit.var2 +
                  cubit.var3 -
                  cubit.var4 +
                  cubit.var5 -
                  cubit.var6 +
                  cubit.var7 -
                  cubit.var8 +
                  cubit.var9 -
                  cubit.var10 +
                  cubit.var11 -
                  cubit.var12 +
                  cubit.var13 -
                  cubit.var14 +
                  cubit.var15;
            if (numOfOperation == 15)
              cubit.z = cubit.var1 -
                  cubit.var2 +
                  cubit.var3 -
                  cubit.var4 +
                  cubit.var5 -
                  cubit.var6 +
                  cubit.var7 -
                  cubit.var8 +
                  cubit.var9 -
                  cubit.var10 +
                  cubit.var11 -
                  cubit.var12 +
                  cubit.var13 -
                  cubit.var14 +
                  cubit.var15 -
                  cubit.var16;
          }


          return Scaffold(
            appBar: AppBar(),
            body: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Form(
                key: formKey,
                child: Column(

                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: (MediaQuery.of(context).size.height-(kBottomNavigationBarHeight+kToolbarHeight))*0.1,
                      child: Row(
                        children: [
                          Text('${cubit.correctAnswer} : جواب صحيح ',
                            style: TextStyle(fontSize: 20, color: Colors.white),),
                          Spacer(),
                          Text('${cubit.wrongAnswer} : جواب خاطئ',
                            style: TextStyle(fontSize: 20, color: Colors.white),)
                        ],
                      ),
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        Container(
                          //height: 150,
                          //width: 350,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 214, 225, 237),
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              (sub == false) ?
                              (numOfOperation == 1)
                                  ? (cubit.count == time * 2)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var1)}',style: TextStyle(fontSize: 0),),
                                      Text(


                                 '${cubit.var1}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count == time)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var2)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var2}',
                                style: myTextStyle(),

                              ),
                                    ],
                                  )
                                  : Text('')
                                  : (numOfOperation == 2)
                                  ? (cubit.count == time * 3 + time)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var1)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var1}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count == time * 2 + time)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var2)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var2}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count == time + time)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var3)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var3}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  )
                                  : Text('')
                                  : (numOfOperation == 3)
                                  ? (cubit.count == time * 4 + 2 * time)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var1)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var1}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count == time * 3 + 2 * time)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var2)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var2}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count == time * 2 + 2 * time)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var3)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var3}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count == time + 2 * time)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var4)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var4}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  )
                                  : Text('')
                                  : (numOfOperation == 4)
                                  ? (cubit.count == time * 5 + time * 3)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var1)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var1}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count == time * 4 + time * 3)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var2)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var2}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count == time * 3 + time * 3)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var3)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var3}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count == time * 2 + time * 3)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var4)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var4}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count == time + time * 3)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var5)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var5}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  )
                                  : Text('')
                                  : (numOfOperation == 5)
                                  ? (cubit.count == time * 6 + time * 4)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var1)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var1}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count == time * 5 + time * 4)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var2)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var2}',
                                style:
                                myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count == time * 4 + time * 4)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var3)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var3}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count == time * 3 + time * 4)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var4)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var4}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count == time * 2 + time * 4)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var5)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var5}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count == time + time * 4)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var6)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var6}',
                                style:
                                myTextStyle(),
                              ),
                                    ],
                                  )
                                  : Text('')
                                  : (numOfOperation == 6)
                                  ? (cubit.count == time * 7 + time * 5)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var1)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var1}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count == time * 6 + time * 5)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var2)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var2}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count == time * 5 + time * 5)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var3)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var3}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count == time * 4 + time * 5)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var4)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var4}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count == time * 3 + time * 5)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var5)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var5}',
                                style:
                                myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count ==
                                  time * 2 + time * 5)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var6)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var6}',
                                style:
                                myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count ==
                                  time + time * 5)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var7)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var7}',
                                style:
                                myTextStyle(),
                              ),
                                    ],
                                  )
                                  : Text('')
                                  : (numOfOperation == 7)
                                  ? (cubit.count == time * 8 + time * 6)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var1)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var1}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count == time * 7 + time * 6)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var2)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var2}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count == time * 6 + time * 6)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var3)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var3}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count == time * 5 + time * 6)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var4)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var4}',
                                style:
                                myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count ==
                                  time * 4 + time * 6)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var5)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var5}',
                                style:
                                myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count ==
                                  time * 3 + time * 6)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var6)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var6}',
                                style:
                                myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count ==
                                  time * 2 + time * 6)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var7)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var7}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count ==
                                  time + time * 6)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var8)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var8}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  )
                                  : Text(
                                  '')
                                  : (numOfOperation == 8)
                                  ? (cubit.count == time * 9 + time * 7)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var1)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var1}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count == time * 8 + time * 7)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var2)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var2}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count == time * 7 + time * 7)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var3)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var3}',
                                style:
                                myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count ==
                                  time * 6 + time * 7)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var4)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var4}',
                                style:
                                myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count ==
                                  time * 5 + time * 7)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var5)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var5}',
                                style:
                                myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count ==
                                  time * 4 + time * 7)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var6)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var6}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count == time * 3 + time * 7)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var7)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var7}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count == time * 2 + time * 7)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var8)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var8}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count == time + time * 7)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var9)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var9}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  )
                                  : Text('')
                                  : (numOfOperation == 9)
                                  ? (cubit.count == time * 10 + time * 8)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var1)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var1}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count == time * 9 + time * 8)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var2)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var2}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count == time * 8 + time * 8)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var3)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var3}',
                                style:
                                myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count ==
                                  time * 7 + time * 8)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var4)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var4}',
                                style:
                                myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count ==
                                  time * 6 + time * 8)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var5)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var5}',
                                style:
                                myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count ==
                                  time * 5 + time * 8)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var6)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var6}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count == time * 4 + time * 8)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var7)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var7}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count == time * 3 + time * 8)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var8)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var8}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count == time * 2 + time * 8)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var9)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var9}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count == time + time * 8)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var10)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var10}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  )
                                  : Text('') : (numOfOperation == 10)
                                  ? (cubit.count == time * 11 + time * 9)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var1)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var1}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count == time * 10 + time * 9)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var2)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var2}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count == time * 9 + time * 9)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var3)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var3}',
                                style:
                                myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count ==
                                  time * 8 + time * 9)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var4)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var4}',
                                style:
                                myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count ==
                                  time * 7 + time * 9)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var5)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var5}',
                                style:
                                myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count ==
                                  time * 6 + time * 9)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var6)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var6}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count == time * 5 + time * 9)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var7)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var7}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count == time * 4 + time * 9)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var8)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var8}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count == time * 3 + time * 9)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var9)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var9}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count == time * 2 + time * 9)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var10)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var10}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count == time + time * 9)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var11)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var11}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  ) : Text('') : (numOfOperation == 11)
                                  ? (cubit.count == time * 12 + time * 10)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var1)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var1}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count == time * 11 + time * 10)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var2)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var2}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count == time * 10 + time * 10)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var3)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var3}',
                                style:
                                myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count ==
                                  time * 9 + time * 10)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var4)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var4}',
                                style:
                                myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count ==
                                  time * 8 + time * 10)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var5)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var5}',
                                style:
                                myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count ==
                                  time * 7 + time * 10)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var6)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var6}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count == time * 6 + time * 10)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var7)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var7}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count == time * 5 + time * 10)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var8)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var8}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count == time * 4 + time * 10)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var9)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var9}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count == time * 3 + time * 10)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var10)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var10}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count == time * 2 + time * 10)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var11)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var11}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  ) : (cubit.count == time + time * 10)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var12)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var12}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  ) : Text('') : (numOfOperation == 12)
                                  ? (cubit.count == time * 13 + time * 11)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var1)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var1}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count == time * 12 + time * 11)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var2)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var2}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count == time * 11 + time * 11)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var3)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var3}',
                                style:
                                myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count ==
                                  time * 10 + time * 11)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var4)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var4}',
                                style:
                                myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count ==
                                  time * 9 + time * 11)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var5)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var5}',
                                style:
                                myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count ==
                                  time * 8 + time * 11)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var6)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var6}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count == time * 7 + time * 11)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var7)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var7}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count == time * 6 + time * 11)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var8)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var8}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count == time * 5 + time * 11)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var9)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var9}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count == time * 4 + time * 11)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var10)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var10}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count == time * 3 + time * 11)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var11)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var11}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  ) : (cubit.count == time * 2 + time * 11)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var12)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var12}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  ) : (cubit.count == time + time * 11)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var13)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var13}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  ) : Text('') : (numOfOperation == 13)
                                  ? (cubit.count == time * 14 + time * 12)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var1)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var1}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count == time * 13 + time * 12)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var2)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var2}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count == time * 12 + time * 12)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var3)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var3}',
                                style:
                                myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count ==
                                  time * 11 + time * 12)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var4)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var4}',
                                style:
                                myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count ==
                                  time * 10 + time * 12)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var5)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var5}',
                                style:
                                myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count ==
                                  time * 9 + time * 12)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var6)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var6}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count == time * 8 + time * 12)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var7)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var7}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count == time * 7 + time * 12)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var8)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var8}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count == time * 6 + time * 12)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var9)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var9}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count == time * 5 + time * 12)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var10)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var10}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count == time * 4 + time * 12)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var11)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var11}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  ) : (cubit.count == time * 3 + time * 12)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var12)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var12}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  ) : (cubit.count == time * 2 + time * 12)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var13)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var13}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  ) : (cubit.count == time + time * 12)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var14)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var14}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  ) : Text('') : (numOfOperation == 14)
                                  ? (cubit.count == time * 15 + time * 13)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var1)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var1}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count == time * 14 + time * 13)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var2)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var2}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count == time * 13 + time * 13)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var3)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var3}',
                                style:
                                myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count ==
                                  time * 12 + time * 13)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var4)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var4}',
                                style:
                                myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count ==
                                  time * 11 + time * 13)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var5)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var5}',
                                style:
                                myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count ==
                                  time * 10 + time * 13)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var6)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var6}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count == time * 9 + time * 13)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var7)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var7}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count == time * 8 + time * 13)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var8)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var8}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count == time * 7 + time * 13)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var9)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var9}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count == time * 6 + time * 13)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var10)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var10}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count == time * 5 + time * 13)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var11)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var11}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  ) : (cubit.count == time * 4 + time * 13)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var12)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var12}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  ) : (cubit.count == time * 3 + time * 13)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var13)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var13}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  ) : (cubit.count == time * 2 + time * 13)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var14)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var14}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  ) : (cubit.count == time + time * 13)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var15)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var15}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  ) : Text('') : (numOfOperation == 15)
                                  ? (cubit.count == time * 16 + time * 14)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var1)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var1}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count == time * 15 + time * 14)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var2)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var2}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count == time * 14 + time * 14)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var3)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var3}',
                                style:
                                myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count ==
                                  time * 13 + time * 14)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var4)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var4}',
                                style:
                                myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count ==
                                  time * 12 + time * 14)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var5)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var5}',
                                style:
                                myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count ==
                                  time * 11 + time * 14)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var6)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var6}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count == time * 10 + time * 14)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var7)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var7}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count == time * 9 + time * 14)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var8)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var8}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count == time * 8 + time * 14)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var9)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var9}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count == time * 7 + time * 14)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var10)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var10}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count == time * 6 + time * 14)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var11)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var11}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  ) : (cubit.count == time * 5 + time * 14)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var12)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var12}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  ) : (cubit.count == time * 4 + time * 14)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var13)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var13}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  ) : (cubit.count == time * 3 + time * 14)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var14)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var14}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  ) : (cubit.count == time * 2 + time * 14)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var15)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var15}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  ) : (cubit.count == time + time * 14)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var16)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var16}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  ) : Text('') : Text('') ///////sub==true
                                  : (numOfOperation == 1)
                                  ? (cubit.count == time * 2)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var1)}',style: TextStyle(fontSize: 0),),

                                      Text(
                                '${cubit.var1}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count == time)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudioForMinus(cubit.var2)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '- ${cubit.var2}',
                                style: myTextStyle(),

                              ),
                                    ],
                                  )
                                  : Text('')
                                  : (numOfOperation == 2)
                                  ? (cubit.count == time * 3 + time)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var1)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var1}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count == time * 2 + time)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudioForMinus(cubit.var2)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '- ${cubit.var2}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count == time + time)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var3)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var3}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  )
                                  : Text('')
                                  : (numOfOperation == 3)
                                  ? (cubit.count == time * 4 + 2 * time)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var1)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var1}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count == time * 3 + 2 * time)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudioForMinus(cubit.var2)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '- ${cubit.var2}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count == time * 2 + 2 * time)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var3)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var3}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count == time + 2 * time)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudioForMinus(cubit.var4)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '- ${cubit.var4}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  )
                                  : Text('')
                                  : (numOfOperation == 4)
                                  ? (cubit.count == time * 5 + time * 3)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var1)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var1}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count == time * 4 + time * 3)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudioForMinus(cubit.var2)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '- ${cubit.var2}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count == time * 3 + time * 3)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var3)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var3}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count == time * 2 + time * 3)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudioForMinus(cubit.var4)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '- ${cubit.var4}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count == time + time * 3)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var5)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var5}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  )
                                  : Text('')
                                  : (numOfOperation == 5)
                                  ? (cubit.count == time * 6 + time * 4)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var1)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var1}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count == time * 5 + time * 4)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudioForMinus(cubit.var2)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '- ${cubit.var2}',
                                style:
                                myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count == time * 4 + time * 4)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var3)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var3}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count == time * 3 + time * 4)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudioForMinus(cubit.var4)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '- ${cubit.var4}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count == time * 2 + time * 4)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var5)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var5}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count == time + time * 4)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudioForMinus(cubit.var6)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '- ${cubit.var6}',
                                style:
                                myTextStyle(),
                              ),
                                    ],
                                  )
                                  : Text('')
                                  : (numOfOperation == 6)
                                  ? (cubit.count == time * 7 + time * 5)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var1)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var1}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count == time * 6 + time * 5)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudioForMinus(cubit.var2)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '- ${cubit.var2}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count == time * 5 + time * 5)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var3)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var3}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count == time * 4 + time * 5)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudioForMinus(cubit.var4)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '- ${cubit.var4}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count == time * 3 + time * 5)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var5)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var5}',
                                style:
                                myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count ==
                                  time * 2 + time * 5)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudioForMinus(cubit.var6)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '- ${cubit.var6}',
                                style:
                                myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count ==
                                  time + time * 5)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var7)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var7}',
                                style:
                                myTextStyle(),
                              ),
                                    ],
                                  )
                                  : Text('')
                                  : (numOfOperation == 7)
                                  ? (cubit.count == time * 8 + time * 6)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var1)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var1}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count == time * 7 + time * 6)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudioForMinus(cubit.var2)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '- ${cubit.var2}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count == time * 6 + time * 6)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var3)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var3}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count == time * 5 + time * 6)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudioForMinus(cubit.var4)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '- ${cubit.var4}',
                                style:
                                myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count ==
                                  time * 4 + time * 6)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var5)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var5}',
                                style:
                                myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count ==
                                  time * 3 + time * 6)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudioForMinus(cubit.var6)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '- ${cubit.var6}',
                                style:
                                myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count ==
                                  time * 2 + time * 6)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var7)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var7}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count ==
                                  time + time * 6)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudioForMinus(cubit.var8)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '- ${cubit.var8}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  )
                                  : Text(
                                  '')
                                  : (numOfOperation == 8)
                                  ? (cubit.count == time * 9 + time * 7)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var1)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var1}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count == time * 8 + time * 7)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudioForMinus(cubit.var2)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '- ${cubit.var2}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count == time * 7 + time * 7)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var3)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var3}',
                                style:
                                myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count ==
                                  time * 6 + time * 7)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudioForMinus(cubit.var4)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '- ${cubit.var4}',
                                style:
                                myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count ==
                                  time * 5 + time * 7)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var5)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var5}',
                                style:
                                myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count ==
                                  time * 4 + time * 7)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudioForMinus(cubit.var6)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '- ${cubit.var6}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count == time * 3 + time * 7)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var7)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var7}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count == time * 2 + time * 7)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudioForMinus(cubit.var8)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '- ${cubit.var8}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count == time + time * 7)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var9)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var9}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  )
                                  : Text('')
                                  : (numOfOperation == 9)
                                  ? (cubit.count == time * 10 + time * 8)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var1)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var1}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count == time * 9 + time * 8)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudioForMinus(cubit.var2)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '- ${cubit.var2}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count == time * 8 + time * 8)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var3)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var3}',
                                style:
                                myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count ==
                                  time * 7 + time * 8)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudioForMinus(cubit.var4)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '- ${cubit.var4}',
                                style:
                                myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count ==
                                  time * 6 + time * 8)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var5)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var5}',
                                style:
                                myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count ==
                                  time * 5 + time * 8)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudioForMinus(cubit.var6)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '- ${cubit.var6}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count == time * 4 + time * 8)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var7)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var7}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count == time * 3 + time * 8)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudioForMinus(cubit.var8)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '- ${cubit.var8}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count == time * 2 + time * 8)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var9)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var9}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count == time + time * 8)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudioForMinus(cubit.var10)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '- ${cubit.var10}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  )
                                  : Text('') : (numOfOperation == 10)
                                  ? (cubit.count == time * 11 + time * 9)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var1)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var1}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count == time * 10 + time * 9)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudioForMinus(cubit.var2)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '- ${cubit.var2}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count == time * 9 + time * 9)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var3)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var3}',
                                style:
                                myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count ==
                                  time * 8 + time * 9)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudioForMinus(cubit.var4)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '- ${cubit.var4}',
                                style:
                                myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count ==
                                  time * 7 + time * 9)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var5)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var5}',
                                style:
                                myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count ==
                                  time * 6 + time * 9)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudioForMinus(cubit.var6)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '- ${cubit.var6}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count == time * 5 + time * 9)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var7)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var7}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count == time * 4 + time * 9)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudioForMinus(cubit.var8)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '- ${cubit.var8}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count == time * 3 + time * 9)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var9)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var9}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count == time * 2 + time * 9)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudioForMinus(cubit.var10)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '- ${cubit.var10}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count == time + time * 9)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var11)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var11}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  ) : Text('') : (numOfOperation == 11)
                                  ? (cubit.count == time * 12 + time * 10)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var1)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var1}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count == time * 11 + time * 10)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudioForMinus(cubit.var2)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '- ${cubit.var2}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count == time * 10 + time * 10)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var3)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var3}',
                                style:
                                myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count ==
                                  time * 9 + time * 10)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudioForMinus(cubit.var4)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '- ${cubit.var4}',
                                style:
                                myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count ==
                                  time * 8 + time * 10)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var5)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var5}',
                                style:
                                myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count ==
                                  time * 7 + time * 10)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudioForMinus(cubit.var6)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '- ${cubit.var6}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count == time * 6 + time * 10)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var7)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var7}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count == time * 5 + time * 10)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudioForMinus(cubit.var8)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '- ${cubit.var8}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count == time * 4 + time * 10)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var9)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var9}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count == time * 3 + time * 10)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudioForMinus(cubit.var10)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '- ${cubit.var10}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count == time * 2 + time * 10)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var11)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var11}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  ) : (cubit.count == time + time * 10)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudioForMinus(cubit.var12)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '- ${cubit.var12}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  ) : Text('') : (numOfOperation == 12)
                                  ? (cubit.count == time * 13 + time * 11)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var1)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var1}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count == time * 12 + time * 11)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudioForMinus(cubit.var2)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '- ${cubit.var2}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count == time * 11 + time * 11)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var3)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var3}',
                                style:
                                myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count ==
                                  time * 10 + time * 11)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudioForMinus(cubit.var4)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '- ${cubit.var4}',
                                style:
                                myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count ==
                                  time * 9 + time * 11)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var5)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var5}',
                                style:
                                myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count ==
                                  time * 8 + time * 11)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudioForMinus(cubit.var6)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '- ${cubit.var6}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count == time * 7 + time * 11)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var7)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var7}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count == time * 6 + time * 11)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudioForMinus(cubit.var8)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '- ${cubit.var8}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count == time * 5 + time * 11)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var9)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var9}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count == time * 4 + time * 11)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudioForMinus(cubit.var10)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '- ${cubit.var10}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count == time * 3 + time * 11)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var11)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var11}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  ) : (cubit.count == time * 2 + time * 11)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudioForMinus(cubit.var12)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '- ${cubit.var12}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  ) : (cubit.count == time + time * 11)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var13)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var13}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  ) : Text('') : (numOfOperation == 13)
                                  ? (cubit.count == time * 14 + time * 12)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var1)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var1}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count == time * 13 + time * 12)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudioForMinus(cubit.var2)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '- ${cubit.var2}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count == time * 12 + time * 12)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var3)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var3}',
                                style:
                                myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count ==
                                  time * 11 + time * 12)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudioForMinus(cubit.var4)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '- ${cubit.var4}',
                                style:
                                myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count ==
                                  time * 10 + time * 12)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var5)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var5}',
                                style:
                                myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count ==
                                  time * 9 + time * 12)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudioForMinus(cubit.var6)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '- ${cubit.var6}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count == time * 8 + time * 12)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var7)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var7}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count == time * 7 + time * 12)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudioForMinus(cubit.var8)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '- ${cubit.var8}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count == time * 6 + time * 12)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var9)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var9}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count == time * 5 + time * 12)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudioForMinus(cubit.var10)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '- ${cubit.var10}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count == time * 4 + time * 12)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var11)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var11}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  ) : (cubit.count == time * 3 + time * 12)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudioForMinus(cubit.var12)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '- ${cubit.var12}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  ) : (cubit.count == time * 2 + time * 12)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var13)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var13}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  ) : (cubit.count == time + time * 12)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudioForMinus(cubit.var14)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '- ${cubit.var14}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  ) : Text('') : (numOfOperation == 14)
                                  ? (cubit.count == time * 15 + time * 13)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var1)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var1}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count == time * 14 + time * 13)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudioForMinus(cubit.var2)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '- ${cubit.var2}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count == time * 13 + time * 13)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var3)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var3}',
                                style:
                                myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count ==
                                  time * 12 + time * 13)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudioForMinus(cubit.var4)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '- ${cubit.var4}',
                                style:
                                myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count ==
                                  time * 11 + time * 13)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var5)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var5}',
                                style:
                                myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count ==
                                  time * 10 + time * 13)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudioForMinus(cubit.var6)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '- ${cubit.var6}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count == time * 9 + time * 13)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var7)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var7}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count == time * 8 + time * 13)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudioForMinus(cubit.var8)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '- ${cubit.var8}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count == time * 7 + time * 13)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var9)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var9}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count == time * 6 + time * 13)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudioForMinus(cubit.var10)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '- ${cubit.var10}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count == time * 5 + time * 13)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var11)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var11}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  ) : (cubit.count == time * 4 + time * 13)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudioForMinus(cubit.var12)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '- ${cubit.var12}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  ) : (cubit.count == time * 3 + time * 13)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var13)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var13}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  ) : (cubit.count == time * 2 + time * 13)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudioForMinus(cubit.var14)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '- ${cubit.var14}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  ) : (cubit.count == time + time * 13)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var15)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var15}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  ) : Text('') : (numOfOperation == 15)
                                  ? (cubit.count == time * 16 + time * 14)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var1)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var1}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count == time * 15 + time * 14)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudioForMinus(cubit.var2)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '- ${cubit.var2}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count == time * 14 + time * 14)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var3)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var3}',
                                style:
                                myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count ==
                                  time * 13 + time * 14)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudioForMinus(cubit.var4)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '- ${cubit.var4}',
                                style:
                                myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count ==
                                  time * 12 + time * 14)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var5)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var5}',
                                style:
                                myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count ==
                                  time * 11 + time * 14)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudioForMinus(cubit.var6)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '- ${cubit.var6}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count == time * 10 + time * 14)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var7)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var7}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count == time * 9 + time * 14)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudioForMinus(cubit.var8)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '- ${cubit.var8}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count == time * 8 + time * 14)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var9)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var9}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count == time * 7 + time * 14)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudioForMinus(cubit.var10)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '- ${cubit.var10}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  )
                                  : (cubit.count == time * 6 + time * 14)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var11)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var11}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  ) : (cubit.count == time * 5 + time * 14)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudioForMinus(cubit.var12)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '- ${cubit.var12}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  ) : (cubit.count == time * 4 + time * 14)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var13)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var13}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  ) : (cubit.count == time * 3 + time * 14)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudioForMinus(cubit.var14)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '- ${cubit.var14}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  ) : (cubit.count == time * 2 + time * 14)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudio(cubit.var15)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '${cubit.var15}',
                                style: myTextStyle(),
                              ),
                                    ],

                                  ) : (cubit.count == time + time * 14)
                                  ? Column(
                                    children: [
                                      Text('${cubit.playAudioForMinus(cubit.var16)}',style: TextStyle(fontSize: 0),),
                                      Text(
                                '- ${cubit.var16}',
                                style: myTextStyle(),
                              ),
                                    ],
                                  ) : Text('') : Text(''),


                              //Text('${cubit.z}'),
                              //Text('count 1 is ${cubit.count}'),


                            ],

                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 20,),


                    (numOfOperation == 1) ? (cubit.count < time) ? Center(
                      child: Material(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        elevation: 25,
                        clipBehavior: Clip.antiAlias,
                        child: MaterialButton(
                          minWidth: 150,
                          onPressed: () {
                            showDialog(context: context, builder: (context) {
                              return AlertDialog(
                                title: Text('enter your answer '),
                                content: TextFormField(
                                  cursorColor: Colors.white,

                                  controller: numberController,
                                  keyboardType: TextInputType.number,

                                  //onFieldSubmitted: ,
                                  //onChanged: ,
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'من فضلك ادخل الرقم';
                                    }

                                    return null;
                                  },

                                  decoration: InputDecoration(
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.black,
                                          width: 2.0),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(25.0),
                                      borderSide: BorderSide(
                                        color: Colors.black,
                                        width: 2.0,
                                      ),
                                    ),
                                    labelText: "الرقم",
                                    labelStyle: TextStyle(color: Colors.black),


                                    border: OutlineInputBorder(),),
                                ),
                                actions: [
                                  TextButton(onPressed: () {

                                   check();

                                  }, child: Text('Ok'))
                                ],
                              );
                            });
                          },
                          color: Color.fromARGB(255, 214, 225, 237),
                          height: 50,
                          child: Text(
                            'ادخل الاجابة'.toUpperCase(),
                            style: TextStyle(fontSize: 25, color: Colors.black),
                          ),
                        ),
                      ),
                    ) : Text('') :
                    (numOfOperation == 2) ? (cubit.count < time + time) ? Center(
                      child: Material(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        elevation: 25,
                        clipBehavior: Clip.antiAlias,
                        child: MaterialButton(
                          minWidth: 150,
                          onPressed: () {
                            showDialog(context: context, builder: (context) {
                              return AlertDialog(
                                title: Text('enter your answer '),
                                content: TextFormField(
                                  cursorColor: Colors.white,

                                  controller: numberController,
                                  keyboardType: TextInputType.number,

                                  //onFieldSubmitted: ,
                                  //onChanged: ,
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'من فضلك ادخل الرقم';
                                    }

                                    return null;
                                  },

                                  decoration: InputDecoration(
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.black,
                                          width: 2.0),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(25.0),
                                      borderSide: BorderSide(
                                        color: Colors.black,
                                        width: 2.0,
                                      ),
                                    ),
                                    labelText: "الرقم",
                                    labelStyle: TextStyle(color: Colors.black),


                                    border: OutlineInputBorder(),),
                                ),
                                actions: [
                                  TextButton(onPressed: () {
                                    check();
                                  }, child: Text('Ok'))
                                ],
                              );
                            });
                          },
                          color: Color.fromARGB(255, 214, 225, 237),
                          height: 50,
                          child: Text(
                            'ادخل الاجابة'.toUpperCase(),
                            style: TextStyle(fontSize: 25, color: Colors.black),
                          ),
                        ),
                      ),
                    ) : Text('') :
                    (numOfOperation == 3) ? (cubit.count < time + 2 * time) ? Center(
                      child: Material(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        elevation: 25,
                        clipBehavior: Clip.antiAlias,
                        child: MaterialButton(
                          minWidth: 150,
                          onPressed: () {
                            showDialog(context: context, builder: (context) {
                              return AlertDialog(
                                title: Text('enter your answer '),
                                content: TextFormField(
                                  cursorColor: Colors.white,

                                  controller: numberController,
                                  keyboardType: TextInputType.number,

                                  //onFieldSubmitted: ,
                                  //onChanged: ,
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'من فضلك ادخل الرقم';
                                    }

                                    return null;
                                  },

                                  decoration: InputDecoration(
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.black,
                                          width: 2.0),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(25.0),
                                      borderSide: BorderSide(
                                        color: Colors.black,
                                        width: 2.0,
                                      ),
                                    ),
                                    labelText: "الرقم",
                                    labelStyle: TextStyle(color: Colors.black),


                                    border: OutlineInputBorder(),),
                                ),
                                actions: [
                                  TextButton(onPressed: () {
                                    check();
                                  }, child: Text('Ok'))
                                ],
                              );
                            });
                          },
                          color: Color.fromARGB(255, 214, 225, 237),
                          height: 50,
                          child: Text(
                            'ادخل الاجابة'.toUpperCase(),
                            style: TextStyle(fontSize: 25, color: Colors.black),
                          ),
                        ),
                      ),
                    ) : Text('') :
                    (numOfOperation == 4) ? (cubit.count < time + time * 3) ? Center(
                      child: Material(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        elevation: 25,
                        clipBehavior: Clip.antiAlias,
                        child: MaterialButton(
                          minWidth: 150,
                          onPressed: () {
                            showDialog(context: context, builder: (context) {
                              return AlertDialog(
                                title: Text('enter your answer '),
                                content: TextFormField(
                                  cursorColor: Colors.white,

                                  controller: numberController,
                                  keyboardType: TextInputType.number,

                                  //onFieldSubmitted: ,
                                  //onChanged: ,
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'من فضلك ادخل الرقم';
                                    }

                                    return null;
                                  },

                                  decoration: InputDecoration(
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.black,
                                          width: 2.0),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(25.0),
                                      borderSide: BorderSide(
                                        color: Colors.black,
                                        width: 2.0,
                                      ),
                                    ),
                                    labelText: "الرقم",
                                    labelStyle: TextStyle(color: Colors.black),


                                    border: OutlineInputBorder(),),
                                ),
                                actions: [
                                  TextButton(onPressed: () {
                                   check();
                                  }, child: Text('Ok'))
                                ],
                              );
                            });
                          },
                          color: Color.fromARGB(255, 214, 225, 237),
                          height: 50,
                          child: Text(
                            'ادخل الاجابة'.toUpperCase(),
                            style: TextStyle(fontSize: 25, color: Colors.black),
                          ),
                        ),
                      ),
                    ) : Text('') :
                    (numOfOperation==5)?(cubit.count < time + time * 4)?Center(
                      child: Material(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        elevation: 25,
                        clipBehavior: Clip.antiAlias,
                        child: MaterialButton(
                          minWidth: 150,
                          onPressed: () {
                            showDialog(context: context, builder: (context) {
                              return AlertDialog(
                                title: Text('enter your answer '),
                                content: TextFormField(
                                  cursorColor: Colors.white,

                                  controller: numberController,
                                  keyboardType: TextInputType.number,

                                  //onFieldSubmitted: ,
                                  //onChanged: ,
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'من فضلك ادخل الرقم';
                                    }

                                    return null;
                                  },

                                  decoration: InputDecoration(
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.black,
                                          width: 2.0),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(25.0),
                                      borderSide: BorderSide(
                                        color: Colors.black,
                                        width: 2.0,
                                      ),
                                    ),
                                    labelText: "الرقم",
                                    labelStyle: TextStyle(color: Colors.black),


                                    border: OutlineInputBorder(),),
                                ),
                                actions: [
                                  TextButton(onPressed: () {
                                   check();
                                  }, child: Text('Ok'))
                                ],
                              );
                            });
                          },
                          color: Color.fromARGB(255, 214, 225, 237),
                          height: 50,
                          child: Text(
                            'ادخل الاجابة'.toUpperCase(),
                            style: TextStyle(fontSize: 25, color: Colors.black),
                          ),
                        ),
                      ),
                    ): Text(''):
                    (numOfOperation==6)?(cubit.count < time + time * 5)? Center(
                      child: Material(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        elevation: 25,
                        clipBehavior: Clip.antiAlias,
                        child: MaterialButton(
                          minWidth: 150,
                          onPressed: () {
                            showDialog(context: context, builder: (context) {
                              return AlertDialog(
                                title: Text('enter your answer '),
                                content: TextFormField(
                                  cursorColor: Colors.white,

                                  controller: numberController,
                                  keyboardType: TextInputType.number,

                                  //onFieldSubmitted: ,
                                  //onChanged: ,
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'من فضلك ادخل الرقم';
                                    }

                                    return null;
                                  },

                                  decoration: InputDecoration(
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.black,
                                          width: 2.0),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(25.0),
                                      borderSide: BorderSide(
                                        color: Colors.black,
                                        width: 2.0,
                                      ),
                                    ),
                                    labelText: "الرقم",
                                    labelStyle: TextStyle(color: Colors.black),


                                    border: OutlineInputBorder(),),
                                ),
                                actions: [
                                  TextButton(onPressed: () {
                                   check();
                                  }, child: Text('Ok'))
                                ],
                              );
                            });
                          },
                          color: Color.fromARGB(255, 214, 225, 237),
                          height: 50,
                          child: Text(
                            'ادخل الاجابة'.toUpperCase(),
                            style: TextStyle(fontSize: 25, color: Colors.black),
                          ),
                        ),
                      ),
                    ):Text(''):
                    (numOfOperation==7)?(cubit.count < time + time * 6)?Center(
                      child: Material(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        elevation: 25,
                        clipBehavior: Clip.antiAlias,
                        child: MaterialButton(
                          minWidth: 150,
                          onPressed: () {
                            showDialog(context: context, builder: (context) {
                              return AlertDialog(
                                title: Text('enter your answer '),
                                content: TextFormField(
                                  cursorColor: Colors.white,

                                  controller: numberController,
                                  keyboardType: TextInputType.number,

                                  //onFieldSubmitted: ,
                                  //onChanged: ,
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'من فضلك ادخل الرقم';
                                    }

                                    return null;
                                  },

                                  decoration: InputDecoration(
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.black,
                                          width: 2.0),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(25.0),
                                      borderSide: BorderSide(
                                        color: Colors.black,
                                        width: 2.0,
                                      ),
                                    ),
                                    labelText: "الرقم",
                                    labelStyle: TextStyle(color: Colors.black),


                                    border: OutlineInputBorder(),),
                                ),
                                actions: [
                                  TextButton(onPressed: () {
                                   check();
                                  }, child: Text('Ok'))
                                ],
                              );
                            });
                          },
                          color: Color.fromARGB(255, 214, 225, 237),
                          height: 50,
                          child: Text(
                            'ادخل الاجابة'.toUpperCase(),
                            style: TextStyle(fontSize: 25, color: Colors.black),
                          ),
                        ),
                      ),
                    ):Text(''):
                    (numOfOperation==8)?(cubit.count < time + time * 7)?Center(
                      child: Material(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        elevation: 25,
                        clipBehavior: Clip.antiAlias,
                        child: MaterialButton(
                          minWidth: 150,
                          onPressed: () {
                            showDialog(context: context, builder: (context) {
                              return AlertDialog(
                                title: Text('enter your answer '),
                                content: TextFormField(
                                  cursorColor: Colors.white,

                                  controller: numberController,
                                  keyboardType: TextInputType.number,

                                  //onFieldSubmitted: ,
                                  //onChanged: ,
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'من فضلك ادخل الرقم';
                                    }

                                    return null;
                                  },

                                  decoration: InputDecoration(
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.black,
                                          width: 2.0),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(25.0),
                                      borderSide: BorderSide(
                                        color: Colors.black,
                                        width: 2.0,
                                      ),
                                    ),
                                    labelText: "الرقم",
                                    labelStyle: TextStyle(color: Colors.black),


                                    border: OutlineInputBorder(),),
                                ),
                                actions: [
                                  TextButton(onPressed: () {
                                    check();
                                  }, child: Text('Ok'))
                                ],
                              );
                            });
                          },
                          color: Color.fromARGB(255, 214, 225, 237),
                          height: 50,
                          child: Text(
                            'ادخل الاجابة'.toUpperCase(),
                            style: TextStyle(fontSize: 25, color: Colors.black),
                          ),
                        ),
                      ),
                    ):Text(''):
                    (numOfOperation==9)?(cubit.count < time + time * 8)?Center(
                      child: Material(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        elevation: 25,
                        clipBehavior: Clip.antiAlias,
                        child: MaterialButton(
                          minWidth: 150,
                          onPressed: () {
                            showDialog(context: context, builder: (context) {
                              return AlertDialog(
                                title: Text('enter your answer '),
                                content: TextFormField(
                                  cursorColor: Colors.white,

                                  controller: numberController,
                                  keyboardType: TextInputType.number,

                                  //onFieldSubmitted: ,
                                  //onChanged: ,
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'من فضلك ادخل الرقم';
                                    }

                                    return null;
                                  },

                                  decoration: InputDecoration(
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.black,
                                          width: 2.0),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(25.0),
                                      borderSide: BorderSide(
                                        color: Colors.black,
                                        width: 2.0,
                                      ),
                                    ),
                                    labelText: "الرقم",
                                    labelStyle: TextStyle(color: Colors.black),


                                    border: OutlineInputBorder(),),
                                ),
                                actions: [
                                  TextButton(onPressed: () {
                                   check();
                                  }, child: Text('Ok'))
                                ],
                              );
                            });
                          },
                          color: Color.fromARGB(255, 214, 225, 237),
                          height: 50,
                          child: Text(
                            'ادخل الاجابة'.toUpperCase(),
                            style: TextStyle(fontSize: 25, color: Colors.black),
                          ),
                        ),
                      ),
                    ):Text(''):
                    (numOfOperation==10)?(cubit.count < time + time * 9)?Center(
                      child: Material(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        elevation: 25,
                        clipBehavior: Clip.antiAlias,
                        child: MaterialButton(
                          minWidth: 150,
                          onPressed: () {
                            showDialog(context: context, builder: (context) {
                              return AlertDialog(
                                title: Text('enter your answer '),
                                content: TextFormField(
                                  cursorColor: Colors.white,

                                  controller: numberController,
                                  keyboardType: TextInputType.number,

                                  //onFieldSubmitted: ,
                                  //onChanged: ,
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'من فضلك ادخل الرقم';
                                    }

                                    return null;
                                  },

                                  decoration: InputDecoration(
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.black,
                                          width: 2.0),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(25.0),
                                      borderSide: BorderSide(
                                        color: Colors.black,
                                        width: 2.0,
                                      ),
                                    ),
                                    labelText: "الرقم",
                                    labelStyle: TextStyle(color: Colors.black),


                                    border: OutlineInputBorder(),),
                                ),
                                actions: [
                                  TextButton(onPressed: () {
                                    check();
                                  }, child: Text('Ok'))
                                ],
                              );
                            });
                          },
                          color: Color.fromARGB(255, 214, 225, 237),
                          height: 50,
                          child: Text(
                            'ادخل الاجابة'.toUpperCase(),
                            style: TextStyle(fontSize: 25, color: Colors.black),
                          ),
                        ),
                      ),
                    ):Text(''):
                    (numOfOperation==11)?(cubit.count < time + time * 10)?Center(
                      child: Material(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        elevation: 25,
                        clipBehavior: Clip.antiAlias,
                        child: MaterialButton(
                          minWidth: 150,
                          onPressed: () {
                            showDialog(context: context, builder: (context) {
                              return AlertDialog(
                                title: Text('enter your answer '),
                                content: TextFormField(
                                  cursorColor: Colors.white,

                                  controller: numberController,
                                  keyboardType: TextInputType.number,

                                  //onFieldSubmitted: ,
                                  //onChanged: ,
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'من فضلك ادخل الرقم';
                                    }

                                    return null;
                                  },

                                  decoration: InputDecoration(
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.black,
                                          width: 2.0),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(25.0),
                                      borderSide: BorderSide(
                                        color: Colors.black,
                                        width: 2.0,
                                      ),
                                    ),
                                    labelText: "الرقم",
                                    labelStyle: TextStyle(color: Colors.black),


                                    border: OutlineInputBorder(),),
                                ),
                                actions: [
                                  TextButton(onPressed: () {
                                   check();
                                  }, child: Text('Ok'))
                                ],
                              );
                            });
                          },
                          color: Color.fromARGB(255, 214, 225, 237),
                          height: 50,
                          child: Text(
                            'ادخل الاجابة'.toUpperCase(),
                            style: TextStyle(fontSize: 25, color: Colors.black),
                          ),
                        ),
                      ),
                    ):Text(''):
                    (numOfOperation==12)?(cubit.count < time + time * 11)?Center(
                      child: Material(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        elevation: 25,
                        clipBehavior: Clip.antiAlias,
                        child: MaterialButton(
                          minWidth: 150,
                          onPressed: () {
                            showDialog(context: context, builder: (context) {
                              return AlertDialog(
                                title: Text('enter your answer '),
                                content: TextFormField(
                                  cursorColor: Colors.white,

                                  controller: numberController,
                                  keyboardType: TextInputType.number,

                                  //onFieldSubmitted: ,
                                  //onChanged: ,
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'من فضلك ادخل الرقم';
                                    }

                                    return null;
                                  },

                                  decoration: InputDecoration(
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.black,
                                          width: 2.0),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(25.0),
                                      borderSide: BorderSide(
                                        color: Colors.black,
                                        width: 2.0,
                                      ),
                                    ),
                                    labelText: "الرقم",
                                    labelStyle: TextStyle(color: Colors.black),


                                    border: OutlineInputBorder(),),
                                ),
                                actions: [
                                  TextButton(onPressed: () {
                                   check();
                                  }, child: Text('Ok'))
                                ],
                              );
                            });
                          },
                          color: Color.fromARGB(255, 214, 225, 237),
                          height: 50,
                          child: Text(
                            'ادخل الاجابة'.toUpperCase(),
                            style: TextStyle(fontSize: 25, color: Colors.black),
                          ),
                        ),
                      ),
                    ):Text(''):
                    (numOfOperation==13)?(cubit.count < time + time * 12)?Center(
                      child: Material(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        elevation: 25,
                        clipBehavior: Clip.antiAlias,
                        child: MaterialButton(
                          minWidth: 150,
                          onPressed: () {
                            showDialog(context: context, builder: (context) {
                              return AlertDialog(
                                title: Text('enter your answer '),
                                content: TextFormField(
                                  cursorColor: Colors.white,

                                  controller: numberController,
                                  keyboardType: TextInputType.number,

                                  //onFieldSubmitted: ,
                                  //onChanged: ,
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'من فضلك ادخل الرقم';
                                    }

                                    return null;
                                  },

                                  decoration: InputDecoration(
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.black,
                                          width: 2.0),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(25.0),
                                      borderSide: BorderSide(
                                        color: Colors.black,
                                        width: 2.0,
                                      ),
                                    ),
                                    labelText: "الرقم",
                                    labelStyle: TextStyle(color: Colors.black),


                                    border: OutlineInputBorder(),),
                                ),
                                actions: [
                                  TextButton(onPressed: () {
                                   check();
                                  }, child: Text('Ok'))
                                ],
                              );
                            });
                          },
                          color: Color.fromARGB(255, 214, 225, 237),
                          height: 50,
                          child: Text(
                            'ادخل الاجابة'.toUpperCase(),
                            style: TextStyle(fontSize: 25, color: Colors.black),
                          ),
                        ),
                      ),
                    ):Text(''):
                    (numOfOperation==14)?(cubit.count < time + time * 13)?Center(
                      child: Material(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        elevation: 25,
                        clipBehavior: Clip.antiAlias,
                        child: MaterialButton(
                          minWidth: 150,
                          onPressed: () {
                            showDialog(context: context, builder: (context) {
                              return AlertDialog(
                                title: Text('enter your answer '),
                                content: TextFormField(
                                  cursorColor: Colors.white,

                                  controller: numberController,
                                  keyboardType: TextInputType.number,

                                  //onFieldSubmitted: ,
                                  //onChanged: ,
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'من فضلك ادخل الرقم';
                                    }

                                    return null;
                                  },

                                  decoration: InputDecoration(
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.black,
                                          width: 2.0),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(25.0),
                                      borderSide: BorderSide(
                                        color: Colors.black,
                                        width: 2.0,
                                      ),
                                    ),
                                    labelText: "الرقم",
                                    labelStyle: TextStyle(color: Colors.black),


                                    border: OutlineInputBorder(),),
                                ),
                                actions: [
                                  TextButton(onPressed: () {
                                    check();
                                  }, child: Text('Ok'))
                                ],
                              );
                            });
                          },
                          color: Color.fromARGB(255, 214, 225, 237),
                          height: 50,
                          child: Text(
                            'ادخل الاجابة'.toUpperCase(),
                            style: TextStyle(fontSize: 25, color: Colors.black),
                          ),
                        ),
                      ),
                    ):Text(''):
                    (numOfOperation==15)?(cubit.count < time + time * 14)?Center(
                      child: Material(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        elevation: 25,
                        clipBehavior: Clip.antiAlias,
                        child: MaterialButton(
                          minWidth: 150,
                          onPressed: () {
                            showDialog(context: context, builder: (context) {
                              return AlertDialog(
                                title: Text('enter your answer '),
                                content: TextFormField(
                                  cursorColor: Colors.white,

                                  controller: numberController,
                                  keyboardType: TextInputType.number,

                                  //onFieldSubmitted: ,
                                  //onChanged: ,
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'من فضلك ادخل الرقم';
                                    }

                                    return null;
                                  },

                                  decoration: InputDecoration(
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.black,
                                          width: 2.0),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(25.0),
                                      borderSide: BorderSide(
                                        color: Colors.black,
                                        width: 2.0,
                                      ),
                                    ),
                                    labelText: "الرقم",
                                    labelStyle: TextStyle(color: Colors.black),


                                    border: OutlineInputBorder(),),
                                ),
                                actions: [
                                  TextButton(onPressed: () {
                                    check();
                                  }, child: Text('Ok'))
                                ],
                              );
                            });
                          },
                          color: Color.fromARGB(255, 214, 225, 237),
                          height: 50,
                          child: Text(
                            'ادخل الاجابة'.toUpperCase(),
                            style: TextStyle(fontSize: 25, color: Colors.black),
                          ),
                        ),
                      ),
                    ):Text(''):Text(''),
                    Spacer(),
                    Material(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      elevation: 25,
                      clipBehavior: Clip.antiAlias,
                      child: MaterialButton(
                        minWidth: 150,
                        onPressed: () {

                          if (sub == false) {
                            if (level == 1) {
                              if (numOfDigit == 1) {
                                cubit.var1 = Random().nextInt(5) + 1;
                                if(cubit.var1==5){
                                  cubit.var2=Random().nextInt(4) + 1;
                                }
                                if(cubit.var1==4){
                                  cubit.var2=5;
                                }
                                if(cubit.var1==3){
                                  cubit.var2=Random().nextInt(2) + 5;
                                }
                                if(cubit.var1==2){
                                  cubit.var2=Random().nextInt(3) + 5;
                                }
                                if(cubit.var1==1){
                                  cubit.var2=Random().nextInt(2) + 1;
                                }

                              }
                              if (numOfDigit == 2) {
                                cubit.var1 = Random().nextInt(5) + 10;
                                if(cubit.var1==10)
                                  cubit.var2 = Random().nextInt(4) + 60;
                                if(cubit.var1==11)
                                  cubit.var2=Random().nextInt(3) + 50;
                                if(cubit.var1==12)
                                  cubit.var2=Random().nextInt(2) + 70;
                                if(cubit.var1==13)
                                  cubit.var2=Random().nextInt(1) + 20;
                                if(cubit.var1==14)
                                  cubit.var2=Random().nextInt(3) + 12;


                              }
                              if (numOfDigit == 3) {
                                cubit.var1 = Random().nextInt(5) + 100;
                                if(cubit.var1==100)
                                  cubit.var2 = Random().nextInt(4) + 400;
                                if(cubit.var1==101)
                                  cubit.var2 = Random().nextInt(3) + 200;
                                if(cubit.var1==102)
                                  cubit.var2 = Random().nextInt(3) + 604;
                                if(cubit.var1==103)
                                  cubit.var2 = Random().nextInt(3) + 503;
                                if(cubit.var1==104)
                                  cubit.var2 = Random().nextInt(3) + 702;



                              }
                              if (numOfDigit == 4) {
                                cubit.var1 = Random().nextInt(5) + 1000;
                                if(cubit.var1==1000)
                                  cubit.var2 = Random().nextInt(4) + 6001;
                                if(cubit.var1==1001)
                                  cubit.var2 = Random().nextInt(3) + 2000;
                                if(cubit.var1==1002)
                                  cubit.var2 = Random().nextInt(4) + 7003;
                                if(cubit.var1==1003)
                                  cubit.var2 = Random().nextInt(3) + 5003;
                                if(cubit.var1==1004)
                                  cubit.var2 = Random().nextInt(3) + 1002;


                              }
                              if (numOfDigit == 5) {
                                cubit.var1 = Random().nextInt(5) + 10000;
                                if(cubit.var1==10000)
                                  cubit.var2 = Random().nextInt(4) + 80000;
                                if(cubit.var1==10001)
                                  cubit.var2 = Random().nextInt(3) + 60005;
                                if(cubit.var1==10002)
                                  cubit.var2 = Random().nextInt(3) + 30004;
                                if(cubit.var1==10003)
                                  cubit.var2 = Random().nextInt(3) + 20003;
                                if(cubit.var1==10004)
                                  cubit.var2 = Random().nextInt(3) + 70002;



                              }
                              if (numOfDigit == 6) {
                                cubit.var1 = Random().nextInt(5) + 100000;
                                if(cubit.var1==100000)
                                  cubit.var2 = Random().nextInt(4) + 700000;
                                if(cubit.var1==100001)
                                  cubit.var2 = Random().nextInt(3) + 600000;
                                if(cubit.var1==100002)
                                  cubit.var2 = Random().nextInt(3) + 700004;
                                if(cubit.var1==100003)
                                  cubit.var2 = Random().nextInt(3) + 500003;
                                if(cubit.var1==100004)
                                  cubit.var2 = Random().nextInt(3) + 800002;


                              }
                            }
                            else if(level==2) {
                              if (numOfDigit == 1) {
                                cubit.var1 = Random().nextInt(5) + 1;
                                if(cubit.var1==5){
                                  cubit.var2=Random().nextInt(4) + 1;
                                }
                                if(cubit.var1==4){
                                  cubit.var2=Random().nextInt(5) + 1;
                                }
                                if(cubit.var1==3){
                                  cubit.var2=Random().nextInt(6) + 1;
                                }
                                if(cubit.var1==2){
                                  cubit.var2=Random().nextInt(7) + 1;
                                }
                                if(cubit.var1==1){
                                  cubit.var2=Random().nextInt(8) + 1;
                                }


                               // cubit.var2 = Random().nextInt(9) + 1;
                                if(cubit.var1+cubit.var2==5){
                                  cubit.var3 = Random().nextInt(3) + 1;
                                }
                                else if(cubit.var1+cubit.var2==6){
                                  cubit.var3 = Random().nextInt(2) + 1;
                                }
                                else if(cubit.var1+cubit.var2==7){
                                  cubit.var3 = Random().nextInt(1) + 1;
                                }
                                else if(cubit.var1+cubit.var2==8){
                                  cubit.var3 = 1;
                                }
                                else if(cubit.var1+cubit.var2==9){
                                  cubit.var3 = 0;
                                }
                                if(cubit.var1+cubit.var2+cubit.var3==9){
                                  cubit.var4=0;
                                }
                                if(cubit.var1+cubit.var2+cubit.var3==8){
                                  cubit.var4=1;
                                }
                                if(cubit.var1+cubit.var2+cubit.var3==7){
                                  cubit.var4=Random().nextInt(1) + 1;
                                }
                                if(cubit.var1+cubit.var2+cubit.var3==6){
                                  cubit.var4=Random().nextInt(2) + 1;
                                }
                                if(cubit.var1+cubit.var2+cubit.var3==5){
                                  cubit.var4=Random().nextInt(3) + 1;
                                }


                              }
                              if (numOfDigit == 2) {
                                cubit.var1 = Random().nextInt(10) + 10;
                                if(cubit.var1==10)
                                  cubit.var2 =15;
                                else if(cubit.var1==11)
                                  cubit.var2 =44;
                                else if(cubit.var1==12)
                                  cubit.var2 =23;
                                else if(cubit.var1==13)
                                  cubit.var2 =42;
                                else if(cubit.var1==14)
                                  cubit.var2 =31;
                                else cubit.var2=Random().nextInt(90) + 10;

                                cubit.var3 = Random().nextInt(90) + 10;
                                cubit.var4 = Random().nextInt(90) + 10;
                                cubit.var5 = Random().nextInt(90) + 10;
                                cubit.var6 = Random().nextInt(90) + 10;
                                cubit.var7 = Random().nextInt(90) + 10;
                                cubit.var8 = Random().nextInt(90) + 10;
                                cubit.var9 = Random().nextInt(90) + 10;
                                cubit.var10 = Random().nextInt(90) + 10;
                                cubit.var11 = Random().nextInt(90) + 10;
                                cubit.var12 = Random().nextInt(90) + 10;
                                cubit.var13 = Random().nextInt(90) + 10;
                                cubit.var14 = Random().nextInt(90) + 10;
                                cubit.var15 = Random().nextInt(90) + 10;
                                cubit.var16 = Random().nextInt(90) + 10;
                              }
                              if (numOfDigit == 3) {
                                cubit.var1 = Random().nextInt(10) + 100;
                                if(cubit.var1==100)
                                  cubit.var2=105;
                                else if(cubit.var1==101)
                                  cubit.var2=454;
                                else if(cubit.var1==102)
                                  cubit.var2=253;
                                else if(cubit.var1==103)
                                  cubit.var2=452;
                                else if(cubit.var1==104)
                                  cubit.var2=321;
                                else cubit.var2 = Random().nextInt(900) + 100;
                                cubit.var3 = Random().nextInt(900) + 100;
                                cubit.var4 = Random().nextInt(900) + 100;
                                cubit.var5 = Random().nextInt(900) + 100;
                                cubit.var6 = Random().nextInt(900) + 100;
                                cubit.var7 = Random().nextInt(900) + 100;
                                cubit.var8 = Random().nextInt(900) + 100;
                                cubit.var9 = Random().nextInt(900) + 100;
                                cubit.var10 = Random().nextInt(900) + 100;
                                cubit.var11 = Random().nextInt(900) + 100;
                                cubit.var12 = Random().nextInt(900) + 100;
                                cubit.var13 = Random().nextInt(900) + 100;
                                cubit.var14 = Random().nextInt(900) + 100;
                                cubit.var15 = Random().nextInt(900) + 100;
                                cubit.var16 = Random().nextInt(900) + 100;
                              }
                              if (numOfDigit == 4) {
                                cubit.var1 = Random().nextInt(10) + 1000;
                                if(cubit.var1==1000)
                                  cubit.var2=4555;
                                else if(cubit.var1==1001)
                                  cubit.var2=4354;
                                else if(cubit.var1==1002)
                                  cubit.var2=1523;
                                else if(cubit.var1==1003)
                                  cubit.var2=6552;
                                else if(cubit.var1==1004)
                                  cubit.var2=8671;
                                else cubit.var2 = Random().nextInt(9000) + 1000;
                                cubit.var3 = Random().nextInt(9000) + 1000;
                                cubit.var4 = Random().nextInt(9000) + 1000;
                                cubit.var5 = Random().nextInt(9000) + 1000;
                                cubit.var6 = Random().nextInt(9000) + 1000;
                                cubit.var7 = Random().nextInt(9000) + 1000;
                                cubit.var8 = Random().nextInt(9000) + 1000;
                                cubit.var9 = Random().nextInt(9000) + 1000;
                                cubit.var10 = Random().nextInt(9000) + 1000;
                                cubit.var11 = Random().nextInt(9000) + 1000;
                                cubit.var12 = Random().nextInt(9000) + 1000;
                                cubit.var13 = Random().nextInt(9000) + 1000;
                                cubit.var14 = Random().nextInt(9000) + 1000;
                                cubit.var15 = Random().nextInt(9000) + 1000;
                                cubit.var16 = Random().nextInt(9000) + 1000;
                              }
                              if (numOfDigit == 5) {
                                cubit.var1 = Random().nextInt(90000) + 10000;
                                cubit.var2 = Random().nextInt(90000) + 10000;
                                cubit.var3 = Random().nextInt(90000) + 10000;
                                cubit.var4 = Random().nextInt(90000) + 10000;
                                cubit.var5 = Random().nextInt(90000) + 10000;
                                cubit.var6 = Random().nextInt(90000) + 10000;
                                cubit.var7 = Random().nextInt(90000) + 10000;
                                cubit.var8 = Random().nextInt(90000) + 10000;
                                cubit.var9 = Random().nextInt(90000) + 10000;
                                cubit.var10 = Random().nextInt(90000) + 10000;
                                cubit.var11 = Random().nextInt(90000) + 10000;
                                cubit.var12 = Random().nextInt(90000) + 10000;
                                cubit.var13 = Random().nextInt(90000) + 10000;
                                cubit.var14 = Random().nextInt(90000) + 10000;
                                cubit.var15 = Random().nextInt(90000) + 10000;
                                cubit.var16 = Random().nextInt(90000) + 10000;
                              }
                              if (numOfDigit == 6) {
                                cubit.var1 = Random().nextInt(900000) + 100000;
                                cubit.var2 = Random().nextInt(900000) + 100000;
                                cubit.var3 = Random().nextInt(900000) + 100000;
                                cubit.var4 = Random().nextInt(900000) + 100000;
                                cubit.var5 = Random().nextInt(900000) + 100000;
                                cubit.var6 = Random().nextInt(900000) + 100000;
                                cubit.var7 = Random().nextInt(900000) + 100000;
                                cubit.var8 = Random().nextInt(900000) + 100000;
                                cubit.var9 = Random().nextInt(900000) + 100000;
                                cubit.var10 = Random().nextInt(900000) + 100000;
                                cubit.var11 = Random().nextInt(900000) + 100000;
                                cubit.var12 = Random().nextInt(900000) + 100000;
                                cubit.var13 = Random().nextInt(900000) + 100000;
                                cubit.var14 = Random().nextInt(900000) + 100000;
                                cubit.var15 = Random().nextInt(900000) + 100000;
                                cubit.var16 = Random().nextInt(900000) + 100000;
                              }
                            }
                            else if(level==3) {
                              if (numOfDigit == 1) {
                                cubit.var1 = Random().nextInt(9) + 1;
                                if(cubit.var1==9){
                                  cubit.var2=1;
                                }
                                if(cubit.var1==8){
                                  cubit.var2=2;
                                }
                                if(cubit.var1==7){
                                  cubit.var2=3;
                                }
                                if(cubit.var1==6){
                                  cubit.var2=4;
                                }
                                if(cubit.var1==5){
                                  cubit.var2=5;
                                }
                                if(cubit.var1==4){
                                  cubit.var2=6;
                                }
                                if(cubit.var1==3){
                                  cubit.var2=7;
                                }
                                if(cubit.var1==2){
                                  cubit.var2=8;
                                }
                                if(cubit.var1==1){
                                  cubit.var2=9;
                                }

                                // cubit.var2 = Random().nextInt(9) + 1;
                                cubit.var3 = Random().nextInt(9) + 1;
                                cubit.var4 = Random().nextInt(9) + 1;
                                cubit.var5 = Random().nextInt(9) + 1;
                                cubit.var6 = Random().nextInt(9) + 1;
                                if(cubit.var1+cubit.var2+cubit.var3+cubit.var4+cubit.var5+cubit.var6==25
                                    ||cubit.var1+cubit.var2+cubit.var3+cubit.var4+cubit.var5+cubit.var6==35
                                    ||cubit.var1+cubit.var2+cubit.var3+cubit.var4+cubit.var5+cubit.var6==30
                                    ||cubit.var1+cubit.var2+cubit.var3+cubit.var4+cubit.var5+cubit.var6==40){
                                  cubit.var7 = 9;
                                }
                                else cubit.var7 = Random().nextInt(9) + 1;
                                if(cubit.var1+cubit.var2+cubit.var3+cubit.var4+cubit.var5+cubit.var6+cubit.var7==34)
                                  cubit.var8 = 9;
                                if(cubit.var1+cubit.var2+cubit.var3+cubit.var4+cubit.var5+cubit.var6+cubit.var7==44)
                                  cubit.var8 = 6;
                                if(cubit.var1+cubit.var2+cubit.var3+cubit.var4+cubit.var5+cubit.var6+cubit.var7==39)
                                  cubit.var8 = 9;
                                if(cubit.var1+cubit.var2+cubit.var3+cubit.var4+cubit.var5+cubit.var6+cubit.var7==49)
                                  cubit.var8 = 6;
                                cubit.var8 = Random().nextInt(9) + 1;
                                cubit.var9 = Random().nextInt(9) + 1;
                                cubit.var10 = Random().nextInt(9) + 1;
                                if(cubit.var1+cubit.var2+cubit.var3+cubit.var4+cubit.var5+cubit.var6+cubit.var7+cubit.var8+cubit.var9+cubit.var10==50)
                                  cubit.var11 = 5;
                                if(cubit.var1+cubit.var2+cubit.var3+cubit.var4+cubit.var5+cubit.var6+cubit.var7+cubit.var8+cubit.var9+cubit.var10==51)
                                  cubit.var11 = 4;
                                if(cubit.var1+cubit.var2+cubit.var3+cubit.var4+cubit.var5+cubit.var6+cubit.var7+cubit.var8+cubit.var9+cubit.var10==52)
                                  cubit.var11 = 3;
                                if(cubit.var1+cubit.var2+cubit.var3+cubit.var4+cubit.var5+cubit.var6+cubit.var7+cubit.var8+cubit.var9+cubit.var10==53)
                                  cubit.var11 = 2;
                                if(cubit.var1+cubit.var2+cubit.var3+cubit.var4+cubit.var5+cubit.var6+cubit.var7+cubit.var8+cubit.var9+cubit.var10==54)
                                  cubit.var11 = 1;
                                cubit.var11 = Random().nextInt(9) + 1;
                                if(cubit.var1+cubit.var2+cubit.var3+cubit.var4+cubit.var5+cubit.var6+cubit.var7+cubit.var8+cubit.var9+cubit.var10==50)
                                  cubit.var12 = 5;
                                if(cubit.var1+cubit.var2+cubit.var3+cubit.var4+cubit.var5+cubit.var6+cubit.var7+cubit.var8+cubit.var9+cubit.var10+cubit.var11==51)
                                  cubit.var12 = 4;
                                if(cubit.var1+cubit.var2+cubit.var3+cubit.var4+cubit.var5+cubit.var6+cubit.var7+cubit.var8+cubit.var9+cubit.var10+cubit.var11==52)
                                  cubit.var12 = 3;
                                if(cubit.var1+cubit.var2+cubit.var3+cubit.var4+cubit.var5+cubit.var6+cubit.var7+cubit.var8+cubit.var9+cubit.var10+cubit.var11==53)
                                  cubit.var12 = 2;
                                if(cubit.var1+cubit.var2+cubit.var3+cubit.var4+cubit.var5+cubit.var6+cubit.var7+cubit.var8+cubit.var9+cubit.var10+cubit.var11==54)
                                  cubit.var12 = 1;
                                cubit.var12 = Random().nextInt(9) + 1;
                                cubit.var13 = Random().nextInt(9) + 1;
                                cubit.var14 = Random().nextInt(9) + 1;
                                cubit.var15 = Random().nextInt(9) + 1;
                                cubit.var16 = Random().nextInt(9) + 1;
                              }
                              if (numOfDigit == 2) {
                                cubit.var1 = Random().nextInt(10) + 10;
                                if(cubit.var1==10)
                                  cubit.var2 = 90;
                                else if(cubit.var1==11)
                                  cubit.var2 = 99;
                                else if(cubit.var1==12)
                                  cubit.var2 = 78;
                                else if(cubit.var1==13)
                                  cubit.var2 = 97;
                                else if(cubit.var1==14)
                                  cubit.var2 = 56;

                                else cubit.var2 = Random().nextInt(90) + 10;
                                cubit.var3 = Random().nextInt(90) + 10;
                                cubit.var4 = Random().nextInt(90) + 10;
                                cubit.var5 = Random().nextInt(90) + 10;
                                cubit.var6 = Random().nextInt(90) + 10;
                                cubit.var7 = Random().nextInt(90) + 10;
                                cubit.var8 = Random().nextInt(90) + 10;
                                cubit.var9 = Random().nextInt(90) + 10;
                                cubit.var10 = Random().nextInt(90) + 10;
                                cubit.var11 = Random().nextInt(90) + 10;
                                cubit.var12 = Random().nextInt(90) + 10;
                                cubit.var13 = Random().nextInt(90) + 10;
                                cubit.var14 = Random().nextInt(90) + 10;
                                cubit.var15 = Random().nextInt(90) + 10;
                                cubit.var16 = Random().nextInt(90) + 10;
                              }
                              if (numOfDigit == 3) {
                                cubit.var1 = Random().nextInt(10) + 100;
                                if(cubit.var1==100)
                                  cubit.var2=910;
                                else if(cubit.var1==101)
                                  cubit.var2=679;
                                else if(cubit.var1==102)
                                  cubit.var2=268;
                                else if(cubit.var1==103)
                                  cubit.var2=487;
                                else if(cubit.var1==104)
                                  cubit.var2=326;
                                else cubit.var2 = Random().nextInt(900) + 100;
                                cubit.var3 = Random().nextInt(900) + 100;
                                cubit.var4 = Random().nextInt(900) + 100;
                                cubit.var5 = Random().nextInt(900) + 100;
                                cubit.var6 = Random().nextInt(900) + 100;
                                cubit.var7 = Random().nextInt(900) + 100;
                                cubit.var8 = Random().nextInt(900) + 100;
                                cubit.var9 = Random().nextInt(900) + 100;
                                cubit.var10 = Random().nextInt(900) + 100;
                                cubit.var11 = Random().nextInt(900) + 100;
                                cubit.var12 = Random().nextInt(900) + 100;
                                cubit.var13 = Random().nextInt(900) + 100;
                                cubit.var14 = Random().nextInt(900) + 100;
                                cubit.var15 = Random().nextInt(900) + 100;
                                cubit.var16 = Random().nextInt(900) + 100;
                              }
                              if (numOfDigit == 4) {
                                cubit.var1 = Random().nextInt(10) + 1000;
                                if(cubit.var1==1000)
                                  cubit.var2=9000;
                                else if(cubit.var1==1001)
                                  cubit.var2=8369;
                                else if(cubit.var1==1002)
                                  cubit.var2=1728;
                                else if(cubit.var1==1003)
                                  cubit.var2=6897;
                                else if(cubit.var1==1004)
                                  cubit.var2=9676;
                                else cubit.var2 = Random().nextInt(9000) + 1000;
                                cubit.var3 = Random().nextInt(9000) + 1000;
                                cubit.var4 = Random().nextInt(9000) + 1000;
                                cubit.var5 = Random().nextInt(9000) + 1000;
                                cubit.var6 = Random().nextInt(9000) + 1000;
                                cubit.var7 = Random().nextInt(9000) + 1000;
                                cubit.var8 = Random().nextInt(9000) + 1000;
                                cubit.var9 = Random().nextInt(9000) + 1000;
                                cubit.var10 = Random().nextInt(9000) + 1000;
                                cubit.var11 = Random().nextInt(9000) + 1000;
                                cubit.var12 = Random().nextInt(9000) + 1000;
                                cubit.var13 = Random().nextInt(9000) + 1000;
                                cubit.var14 = Random().nextInt(9000) + 1000;
                                cubit.var15 = Random().nextInt(9000) + 1000;
                                cubit.var16 = Random().nextInt(9000) + 1000;
                              }
                              if (numOfDigit == 5) {
                                cubit.var1 = Random().nextInt(90000) + 10000;
                                cubit.var2 = Random().nextInt(90000) + 10000;
                                cubit.var3 = Random().nextInt(90000) + 10000;
                                cubit.var4 = Random().nextInt(90000) + 10000;
                                cubit.var5 = Random().nextInt(90000) + 10000;
                                cubit.var6 = Random().nextInt(90000) + 10000;
                                cubit.var7 = Random().nextInt(90000) + 10000;
                                cubit.var8 = Random().nextInt(90000) + 10000;
                                cubit.var9 = Random().nextInt(90000) + 10000;
                                cubit.var10 = Random().nextInt(90000) + 10000;
                                cubit.var11 = Random().nextInt(90000) + 10000;
                                cubit.var12 = Random().nextInt(90000) + 10000;
                                cubit.var13 = Random().nextInt(90000) + 10000;
                                cubit.var14 = Random().nextInt(90000) + 10000;
                                cubit.var15 = Random().nextInt(90000) + 10000;
                                cubit.var16 = Random().nextInt(90000) + 10000;
                              }
                              if (numOfDigit == 6) {
                                cubit.var1 = Random().nextInt(900000) + 100000;
                                cubit.var2 = Random().nextInt(900000) + 100000;
                                cubit.var3 = Random().nextInt(900000) + 100000;
                                cubit.var4 = Random().nextInt(900000) + 100000;
                                cubit.var5 = Random().nextInt(900000) + 100000;
                                cubit.var6 = Random().nextInt(900000) + 100000;
                                cubit.var7 = Random().nextInt(900000) + 100000;
                                cubit.var8 = Random().nextInt(900000) + 100000;
                                cubit.var9 = Random().nextInt(900000) + 100000;
                                cubit.var10 = Random().nextInt(900000) + 100000;
                                cubit.var11 = Random().nextInt(900000) + 100000;
                                cubit.var12 = Random().nextInt(900000) + 100000;
                                cubit.var13 = Random().nextInt(900000) + 100000;
                                cubit.var14 = Random().nextInt(900000) + 100000;
                                cubit.var15 = Random().nextInt(900000) + 100000;
                                cubit.var16 = Random().nextInt(900000) + 100000;
                              }
                            }
                          }
                          else {
                            if (level == 1) {
                              if (numOfDigit == 1) {
                                cubit.var1 = Random().nextInt(4) + 1;


                                if (cubit.var1 == 4) {
                                  cubit.var2 = Random().nextInt(3) + 1;
                                  sum = cubit.var1 - cubit.var2;
                                }

                                else if(cubit.var1==3) {
                                  cubit.var2 = Random().nextInt(3) + 1;
                                  sum = cubit.var1 - cubit.var2;
                                }
                                else if(cubit.var1==2) {
                                  cubit.var2 = Random().nextInt(2) + 1;
                                  sum = cubit.var1 - cubit.var2;
                                }
                                else if(cubit.var1==1) {
                                  cubit.var2 =  1;
                                  sum = cubit.var1 - cubit.var2;
                                }


                                if (sum == 3) {
                                  cubit.var3 = Random().nextInt(1) + 5;
                                  sum += cubit.var3;
                                }

                                else if (sum == 2) {
                                  cubit.var3 = Random().nextInt(2) + 5;
                                  sum += cubit.var3;
                                }

                                else if(sum==1) {
                                  cubit.var3 = Random().nextInt(3) + 5;
                                  sum += cubit.var3;
                                }
                                else if(sum==0) {
                                  cubit.var3 = Random().nextInt(3) + 6;
                                  sum += cubit.var3;
                                }

                                if (sum == 9) {
                                  cubit.var4 = Random().nextInt(4) + 5;
                                  sum -= cubit.var4;
                                }

                                if (sum == 8) {
                                  cubit.var4 = Random().nextInt(3) + 5;
                                  sum -= cubit.var4;
                                }

                                else if (sum == 7) {
                                  cubit.var4 = Random().nextInt(2) + 5;
                                  sum -= cubit.var4;
                                }

                                else if (sum == 6) {
                                  cubit.var4 =  1;
                                  sum -= cubit.var4;
                                }
                                else if (sum == 5) {
                                  cubit.var4 =  5;
                                  sum -= cubit.var4;
                                }




                                if (sum == 5) {
                                  cubit.var5 = Random().nextInt(4) + 1;
                                  sum += cubit.var5;
                                }

                                else if (sum == 4) {
                                  cubit.var5 = 5;
                                  sum += cubit.var5;
                                }
                                else if (sum == 3) {
                                  cubit.var5 = Random().nextInt(1) + 5;
                                  sum += cubit.var5;
                                }
                                else if (sum == 2) {
                                  cubit.var5 = Random().nextInt(2) + 5;
                                  sum += cubit.var5;
                                }
                                else if (sum == 1) {
                                  cubit.var5 = Random().nextInt(3) + 5;
                                  sum += cubit.var5;
                                }
                                else if (sum == 0) {
                                  cubit.var5 = Random().nextInt(8) + 1;
                                  sum += cubit.var5;
                                }



                                if (sum == 9) {
                                  cubit.var6 = Random().nextInt(4) + 5;
                                  sum -= cubit.var6;
                                }
                                else if (sum == 8) {
                                  cubit.var6 = Random().nextInt(3) + 5;
                                  sum -= cubit.var6;
                                }
                                else if (sum == 7) {
                                  cubit.var6 = Random().nextInt(2) + 5;
                                  sum -= cubit.var6;
                                }
                                else if (sum == 6) {
                                  cubit.var6 = 5;
                                  sum -= cubit.var6;
                                }
                                else if (sum == 5) {
                                  cubit.var6 = 5;
                                  sum -= cubit.var6;
                                }
                                else if (sum == 4) {
                                  cubit.var6 = Random().nextInt(3) + 1;
                                  sum -= cubit.var6;
                                }
                                else if (sum == 3) {
                                  cubit.var6 = Random().nextInt(2) + 1;
                                  sum -= cubit.var6;
                                }
                                else if (sum == 2||sum==1) {
                                  cubit.var6 =  1;
                                  sum -= cubit.var6;
                                }
                                else if (sum == 0) {
                                  cubit.var6 = 0;
                                  sum -= cubit.var6;
                                }

                                if(sum==4){
                                  cubit.var7 = 5;
                                  sum += cubit.var7;
                                }
                                else if(sum==3){
                                  cubit.var7 = Random().nextInt(1) + 5;
                                  sum += cubit.var7;
                                }
                                else if(sum==2){
                                  cubit.var7 = Random().nextInt(2) + 5;
                                  sum += cubit.var7;
                                }
                                else if(sum==1){
                                  cubit.var7 = Random().nextInt(3) + 1;
                                  sum += cubit.var7;
                                }
                                else if(sum==0){
                                  cubit.var7 = Random().nextInt(8) + 1;
                                  sum += cubit.var7;
                                }


                                if (sum == 9) {
                                  cubit.var8 = Random().nextInt(4) + 5;
                                  sum -= cubit.var8;
                                }
                                else if (sum == 8) {
                                  cubit.var8 = Random().nextInt(3) + 5;
                                  sum -= cubit.var8;
                                }
                                else if (sum == 7) {
                                  cubit.var8 = Random().nextInt(2) + 5;
                                  sum -= cubit.var8;
                                }
                                else if (sum == 6) {
                                  cubit.var8 = Random().nextInt(1) + 5;
                                  sum -= cubit.var8;
                                }
                                else if (sum == 5) {
                                  cubit.var8 =  5;
                                  sum -= cubit.var8;
                                }
                                else if (sum == 4) {
                                  cubit.var8 = Random().nextInt(4) + 1;
                                  sum -= cubit.var8;
                                }
                                else if (sum == 3) {
                                  cubit.var8 = Random().nextInt(3) + 1;
                                  sum -= cubit.var8;
                                }
                                else if (sum == 2||sum==1) {
                                  cubit.var8 = 1;
                                  sum -= cubit.var8;
                                }
                                else if (sum == 0) {
                                  cubit.var8 =0;
                                  sum -= cubit.var8;
                                }


                                if (sum == 4) {
                                  cubit.var9 = 5;
                                  sum += cubit.var9;
                                }

                                else if (sum == 3) {
                                  cubit.var9 =  1;
                                  sum += cubit.var9;
                                }

                                else if (sum == 2) {
                                  cubit.var9 =  2;
                                  sum += cubit.var9;
                                }
                                else if (sum == 1) {
                                  cubit.var9 =  3;
                                  sum += cubit.var9;
                                }
                                else if (sum == 0) {
                                  cubit.var9 =  4;
                                  sum += cubit.var9;
                                }

                                if (sum == 4) {
                                  cubit.var10 = Random().nextInt(3) + 1;
                                  sum -= cubit.var10;
                                }
                                else if (sum == 9) {
                                  cubit.var10 =  6;
                                  sum -= cubit.var10;
                                }




                                if (sum == 3) {
                                  cubit.var11 = 5;
                                  sum += cubit.var11;
                                }

                                else if (sum == 2) {
                                  cubit.var11 = Random().nextInt(2) + 5;
                                  sum += cubit.var11;
                                }

                                else if (sum == 1) {
                                  cubit.var11 = Random().nextInt(3) + 5;
                                  sum += cubit.var11;
                                }
                                else if (sum == 0) {
                                  cubit.var11 = Random().nextInt(8) + 1;
                                  sum += cubit.var11;
                                }

                                if (sum == 9) {
                                  cubit.var12 = 7;
                                  sum -= cubit.var12;
                                }
                                else if (sum == 8) {
                                  cubit.var12 = 7;
                                  sum -= cubit.var12;
                                }

                                else if (sum == 7) {
                                  cubit.var12 = 6;
                                  sum -= cubit.var12;
                                }

                                else if (sum == 6) {
                                  cubit.var12 = 5;
                                  sum -= cubit.var12;
                                }

                                else if (sum == 5) {
                                  cubit.var12 = 5;
                                  sum -= cubit.var12;
                                }
                                else if (sum == 4) {
                                  cubit.var12 = Random().nextInt(4) + 1;
                                  sum -= cubit.var12;
                                }
                                else if (sum == 3||sum==2||sum==1) {
                                  cubit.var12 =  1;
                                  sum -= cubit.var12;
                                }
                                else if (sum == 0) {
                                  cubit.var12 = 0;
                                  sum -= cubit.var12;
                                }

                                if (sum == 4) {
                                  cubit.var13 = 5;
                                  sum += cubit.var13;
                                }
                                else if (sum == 3) {
                                  cubit.var13 =  1;
                                  sum += cubit.var13;
                                }
                                else if (sum == 2) {
                                  cubit.var13 =  Random().nextInt(2) + 1;
                                  sum += cubit.var13;
                                }
                                else if (sum == 1) {
                                  cubit.var13 =  3;
                                  sum += cubit.var13;
                                }
                                else if (sum == 0) {
                                  cubit.var13 =  Random().nextInt(7) + 2;
                                  sum += cubit.var13;
                                }


                                if (sum == 9) {
                                  cubit.var14 = 4;
                                  sum -= cubit.var14;
                                }

                                else if (sum == 8) {
                                  cubit.var14 = 3;
                                  sum -= cubit.var14;
                                }

                                else if (sum == 7) {
                                  cubit.var14 = 2;
                                  sum -= cubit.var14;
                                }
                                else if (sum == 6) {
                                  cubit.var14 = 1;
                                  sum -= cubit.var14;
                                }
                                else if (sum == 5) {
                                  cubit.var14 = 5;
                                  sum -= cubit.var14;
                                }
                                else if (sum == 4) {
                                  cubit.var14 = Random().nextInt(3) + 1;
                                  sum -= cubit.var14;
                                }
                                else if (sum == 3) {
                                  cubit.var14 = Random().nextInt(3) + 1;
                                  sum -= cubit.var14;
                                }
                                else if (sum == 2) {
                                  cubit.var14 = Random().nextInt(2) + 1;
                                  sum -= cubit.var14;
                                }
                                else if (sum == 1||sum==0) {
                                  cubit.var14 = 0;
                                  sum -= cubit.var14;
                                }


                                if(sum==1){
                                  cubit.var15 = 3;
                                  sum += cubit.var15;
                                }
                                else if(sum==2){
                                  cubit.var15 = 1;
                                  sum += cubit.var15;
                                }
                                else if(sum==3){
                                  cubit.var15 = 1;
                                  sum += cubit.var15;
                                }
                                else if(sum==4){
                                  cubit.var15 = 5;
                                  sum += cubit.var15;
                                }

                                if (sum == 9) {
                                  cubit.var16 = Random().nextInt(8) + 1;
                                }
                                else if (sum == 8) {
                                  cubit.var16 = 3;
                                }
                                else if (sum == 7) {
                                  cubit.var16 = Random().nextInt(2) + 5;
                                }
                                else if (sum == 6) {
                                  cubit.var16 = Random().nextInt(1) + 5;
                                }
                                else if (sum == 5) {
                                  cubit.var16 =  5;
                                }
                                else if (sum == 1) {
                                  cubit.var16 = 1;
                                }
                                else {
                                  cubit.var16 = 2;
                                }
                              }
                              if (numOfDigit == 2) {
                                cubit.var1 = Random().nextInt(5) + 93;
                                cubit.var2 = Random().nextInt(5) + 10;
                                cubit.var3 = Random().nextInt(5) + 60;
                                cubit.var4 = Random().nextInt(5) + 20;
                                cubit.var5 = Random().nextInt(5) + 70;
                                cubit.var6 = Random().nextInt(5) + 10;
                                cubit.var7 = Random().nextInt(5) + 60;
                                cubit.var8 = Random().nextInt(5) + 30;
                                cubit.var9 = Random().nextInt(5) + 20;
                                cubit.var10 = Random().nextInt(5) + 30;
                                cubit.var11 = Random().nextInt(5) + 10;
                                cubit.var12 = Random().nextInt(5) + 40;
                                cubit.var13 = Random().nextInt(5) + 50;
                                cubit.var14 = Random().nextInt(5) + 20;
                                cubit.var15 = Random().nextInt(5) + 30;
                                cubit.var16 = Random().nextInt(5) + 60;
                              }
                              if (numOfDigit == 3) {
                                cubit.var1 = Random().nextInt(5) + 800;
                                cubit.var2 = Random().nextInt(5) + 200;
                                cubit.var3 = Random().nextInt(5) + 700;
                                cubit.var4 = Random().nextInt(5) + 100;
                                cubit.var5 = Random().nextInt(5) + 300;
                                cubit.var6 = Random().nextInt(5) + 100;
                                cubit.var7 = Random().nextInt(5) + 400;
                                cubit.var8 = Random().nextInt(5) + 500;
                                cubit.var9 = Random().nextInt(5) + 100;
                                cubit.var10 = Random().nextInt(5) + 200;
                                cubit.var11 = Random().nextInt(5) + 300;
                                cubit.var12 = Random().nextInt(5) + 100;
                                cubit.var13 = Random().nextInt(5) + 600;
                                cubit.var14 = Random().nextInt(5) + 300;
                                cubit.var15 = Random().nextInt(5) + 200;
                                cubit.var16 = Random().nextInt(5) + 100;
                              }
                              if (numOfDigit == 4) {
                                cubit.var1 = Random().nextInt(5) + 9000;
                                cubit.var2 = Random().nextInt(5) + 2000;
                                cubit.var3 = Random().nextInt(5) + 7000;
                                cubit.var4 = Random().nextInt(5) + 3000;
                                cubit.var5 = Random().nextInt(5) + 4000;
                                cubit.var6 = Random().nextInt(5) + 1000;
                                cubit.var7 = Random().nextInt(5) + 3000;
                                cubit.var8 = Random().nextInt(5) + 1000;
                                cubit.var9 = Random().nextInt(5) + 4000;
                                cubit.var10 = Random().nextInt(5) + 2000;
                                cubit.var11 = Random().nextInt(5) + 4000;
                                cubit.var12 = Random().nextInt(5) + 1000;
                                cubit.var13 = Random().nextInt(5) + 3000;
                                cubit.var14 = Random().nextInt(5) + 8000;
                                cubit.var15 = Random().nextInt(5) + 3000;
                                cubit.var16 = Random().nextInt(5) + 4000;
                              }
                              if (numOfDigit == 5) {
                                cubit.var1 = Random().nextInt(5) + 70000;
                                cubit.var2 = Random().nextInt(5) + 20000;
                                cubit.var3 = Random().nextInt(5) + 80000;
                                cubit.var4 = Random().nextInt(5) + 60000;
                                cubit.var5 = Random().nextInt(5) + 30000;
                                cubit.var6 = Random().nextInt(5) + 50000;
                                cubit.var7 = Random().nextInt(5) + 20000;
                                cubit.var8 = Random().nextInt(5) + 10000;
                                cubit.var9 = Random().nextInt(5) + 50000;
                                cubit.var10 = Random().nextInt(5) + 30000;
                                cubit.var11 = Random().nextInt(5) + 20000;
                                cubit.var12 = Random().nextInt(5) + 30000;
                                cubit.var13 = Random().nextInt(5) + 20000;
                                cubit.var14 = Random().nextInt(5) + 10000;
                                cubit.var15 = Random().nextInt(5) + 20000;
                                cubit.var16 = Random().nextInt(5) + 10000;
                              }
                              if (numOfDigit == 6) {
                                cubit.var1 = Random().nextInt(5) + 800000;
                                cubit.var2 = Random().nextInt(5) + 100000;
                                cubit.var3 = Random().nextInt(5) + 700000;
                                cubit.var4 = Random().nextInt(5) + 100000;
                                cubit.var5 = Random().nextInt(5) + 300000;
                                cubit.var6 = Random().nextInt(5) + 200000;
                                cubit.var7 = Random().nextInt(5) + 500000;
                                cubit.var8 = Random().nextInt(5) + 300000;
                                cubit.var9 = Random().nextInt(5) + 600000;
                                cubit.var10 = Random().nextInt(5) + 100000;
                                cubit.var11 = Random().nextInt(5) + 700000;
                                cubit.var12 = Random().nextInt(5) + 200000;
                                cubit.var13 = Random().nextInt(5) + 400000;
                                cubit.var14 = Random().nextInt(5) + 700000;
                                cubit.var15 = Random().nextInt(5) + 600000;
                                cubit.var16 = Random().nextInt(5) + 100000;
                              }
                            }
                            else if(level==2) {
                              if (numOfDigit == 1) {
                                cubit.var1 = Random().nextInt(4) + 5;
                                if(cubit.var1==5){
                                  cubit.var2 = Random().nextInt(4) + 1;
                                  sum = cubit.var1 - cubit.var2;
                                }

                                if(cubit.var1==6){
                                  cubit.var2 = Random().nextInt(3) + 2;
                                  sum = cubit.var1 - cubit.var2;
                                }

                                if(cubit.var1==7) {
                                  cubit.var2 = Random().nextInt(2) + 3;
                                  sum = cubit.var1 - cubit.var2;
                                }
                                if(cubit.var1==8) {
                                  cubit.var2 = 4;
                                  sum = cubit.var1 - cubit.var2;
                                }

                                if (sum == 4) {
                                  cubit.var3 = 1;
                                  sum += cubit.var3;
                                }

                                else if (sum == 3) {
                                  cubit.var3 =  2;
                                  sum += cubit.var3;
                                }

                                else {
                                  cubit.var3 = Random().nextInt(3) + 1;
                                  sum += cubit.var3;
                                }

                                if (sum == 5) {
                                  cubit.var4 = Random().nextInt(3) + 2;
                                  sum -= cubit.var4;
                                }

                                if (sum == 4) {
                                  cubit.var4 = 2;
                                  sum -= cubit.var4;
                                }

                                else if (sum == 3) {
                                  cubit.var4 =  1;
                                  sum -= cubit.var4;
                                }






                                if (sum == 3) {
                                  cubit.var5 = Random().nextInt(2) + 1;
                                  sum += cubit.var5;
                                }

                                else if (sum == 2) {
                                  cubit.var5 = Random().nextInt(3) + 1;
                                  sum += cubit.var5;
                                }

                                else if (sum == 1) {
                                  cubit.var5 = Random().nextInt(4) + 2;
                                  sum += cubit.var5;
                                }
                                else if (sum == 0) {
                                  cubit.var5 = Random().nextInt(5) + 1;
                                  sum += cubit.var5;
                                }

                                if (sum == 6) {
                                  cubit.var6 = Random().nextInt(4) + 2;
                                  sum -= cubit.var6;
                                }
                                else if (sum == 5) {
                                  cubit.var6 = Random().nextInt(3) + 2;
                                  sum -= cubit.var6;
                                }
                                else if (sum == 4) {
                                  cubit.var6 = Random().nextInt(2) + 2;
                                  sum -= cubit.var6;
                                }
                                else if (sum == 3) {
                                  cubit.var6 = Random().nextInt(3) + 1;
                                  sum -= cubit.var6;
                                }
                                else if (sum == 2||sum==1) {
                                  cubit.var6 =1;
                                  sum -= cubit.var6;
                                }
                                else if (sum ==0) {
                                  cubit.var6 =0;
                                  sum -= cubit.var6;
                                }



                                if (sum == 0) {
                                  cubit.var7 = 5;
                                  sum += cubit.var7;
                                }
                                else if (sum == 1) {
                                  cubit.var7 = 4;
                                  sum += cubit.var7;
                                }
                                else if (sum == 2) {
                                  cubit.var7 = 3;
                                  sum += cubit.var7;
                                }
                                else if (sum == 3) {
                                  cubit.var7 = 2;
                                  sum += cubit.var7;
                                }
                                else if (sum==4) {
                                  cubit.var7 =1;
                                  sum += cubit.var7;
                                }




                                if (sum == 8) {
                                  cubit.var8 = 4;
                                  sum -= cubit.var8;
                                }
                                else if (sum == 7) {
                                  cubit.var8 = 3;
                                  sum -= cubit.var8;
                                }
                                else if (sum == 5) {
                                  cubit.var8 = Random().nextInt(4) + 1;
                                  sum -= cubit.var8;
                                }
                                else if (sum == 4) {
                                  cubit.var8 = Random().nextInt(3) + 1;
                                  sum -= cubit.var8;
                                }
                                else if (sum == 3) {
                                  cubit.var8 = Random().nextInt(2) + 1;
                                  sum -= cubit.var8;
                                }
                                else if (sum == 2||sum==1) {
                                  cubit.var8 = 1;
                                  sum -= cubit.var8;
                                }
                                else if (sum == 0) {
                                  cubit.var8 = 0;
                                  sum -= cubit.var8;
                                }



                                if(sum==0){
                                  cubit.var9 = 5;
                                  sum += cubit.var9;
                                }
                                else if(sum==1){
                                  cubit.var9 = 4;
                                  sum += cubit.var9;
                                }
                                else if(sum==2){
                                  cubit.var9 = 3;
                                  sum += cubit.var9;
                                }
                                else if(sum==3){
                                  cubit.var9 = 2;
                                  sum += cubit.var9;
                                }
                                else if(sum==4){
                                  cubit.var9 = 1;
                                  sum += cubit.var9;
                                }








                                if (sum == 8) {
                                  cubit.var10 = Random().nextInt(5) + 2;
                                  sum -= cubit.var10;
                                }

                                else if (sum == 7) {
                                  cubit.var10 = Random().nextInt(4) + 2;
                                  sum -= cubit.var10;
                                }
                                else if (sum == 6) {
                                  cubit.var10 = Random().nextInt(3) + 2;
                                  sum -= cubit.var10;
                                }
                                else if (sum == 5) {
                                  cubit.var10 = Random().nextInt(2) + 2;
                                  sum -= cubit.var10;
                                }
                                else if (sum == 4||sum==3||sum==2||sum==1) {
                                  cubit.var10 = 1;
                                  sum -= cubit.var10;
                                }



                                if (sum == 6) {
                                  cubit.var11 = 2;
                                  sum += cubit.var11;
                                }

                                else if (sum == 5) {
                                  cubit.var11 = Random().nextInt(3) + 1;
                                  sum += cubit.var11;
                                }

                                else if (sum == 4||sum == 3||sum == 2||sum==1) {
                                  cubit.var11 = Random().nextInt(4) + 1;
                                  sum += cubit.var11;
                                }
                                else if (sum == 0) {
                                  cubit.var11 = 3;
                                  sum += cubit.var11;
                                }



                                if (sum == 8) {
                                  cubit.var12 = 4;
                                  sum -= cubit.var12;
                                }
                                else if (sum == 7) {
                                  cubit.var12 = Random().nextInt(2) + 3;
                                  sum -= cubit.var12;
                                }

                                else if (sum == 6) {
                                  cubit.var12 = 4;
                                  sum -= cubit.var12;
                                }

                                else if (sum == 5) {
                                  cubit.var12 = Random().nextInt(4) + 1;
                                  sum -= cubit.var12;
                                }
                                else if (sum == 4) {
                                  cubit.var12 = Random().nextInt(3) + 1;
                                  sum -= cubit.var12;
                                }
                                else if (sum == 3||sum==2||sum==1) {
                                  cubit.var12 =  1;
                                  sum -= cubit.var12;
                                }



                                if (sum == 4) {
                                  cubit.var13 = Random().nextInt(4) + 1;
                                  sum += cubit.var13;
                                }
                                else if (sum == 3) {
                                  cubit.var13 = Random().nextInt(5) + 1;
                                  sum += cubit.var13;
                                }
                                else if (sum == 2) {
                                  cubit.var13 = Random().nextInt(4) + 2;
                                  sum += cubit.var13;
                                }
                                else if (sum == 1) {
                                  cubit.var13 = Random().nextInt(5) + 2;
                                  sum += cubit.var13;
                                }
                                else if (sum == 0) {
                                  cubit.var13 = Random().nextInt(8) + 1;
                                  sum += cubit.var13;
                                }


                                if (sum == 8) {
                                  cubit.var14 = 4;
                                  sum -= cubit.var14;
                                }

                                else if (sum == 7) {
                                  cubit.var14 = 3;
                                  sum -= cubit.var14;
                                }
                                else if (sum == 6) {
                                  cubit.var14 = 3;
                                  sum -= cubit.var14;
                                }
                                else if (sum == 5) {
                                  cubit.var14 = Random().nextInt(4) + 1;
                                  sum -= cubit.var14;
                                }
                                else if (sum == 4) {
                                  cubit.var14 = Random().nextInt(3) + 1;
                                  sum -= cubit.var14;
                                }
                                else if (sum == 3||sum==2||sum==1) {
                                  cubit.var14 =  1;
                                  sum -= cubit.var14;
                                }
                                else if (sum == 0) {
                                  cubit.var14 = 0;
                                  sum -= cubit.var14;
                                }



                                cubit.var15 = Random().nextInt(4) + 1;
                                sum += cubit.var15;
                                if (sum == 9) {
                                  cubit.var16 = Random().nextInt(8) + 1;
                                }
                                else if (sum == 8) {
                                  cubit.var16 = Random().nextInt(7) + 1;
                                }
                                else if (sum == 7) {
                                  cubit.var16 = Random().nextInt(6) + 1;
                                }
                                else if (sum == 6) {
                                  cubit.var16 = Random().nextInt(5) + 1;
                                }
                                else if (sum == 5) {
                                  cubit.var16 = Random().nextInt(4) + 1;
                                }
                                else if (sum == 4) {
                                  cubit.var16 = Random().nextInt(3) + 1;
                                }
                                else if (sum == 3) {
                                  cubit.var16 = Random().nextInt(2) + 1;
                                }
                                else if (sum == 2||sum==1) {
                                  cubit.var16 =  1;
                                }
                                else if (sum == 0) {
                                  cubit.var16 = 0;
                                }

                              }
                              if (numOfDigit == 2) {
                                cubit.var1 = Random().nextInt(10) + 50;
                                if(cubit.var1==60)
                                  cubit.var2 =15;
                                else if(cubit.var1==59)
                                  cubit.var2 =34;
                                else if(cubit.var1==58)
                                  cubit.var2 =23;
                                else if(cubit.var1==57)
                                  cubit.var2 =12;
                                else if(cubit.var1==56)
                                  cubit.var2 =31;
                                else if(cubit.var1==55)
                                  cubit.var2 =32;
                                else if(cubit.var1==54)
                                  cubit.var2 =31;
                                else if(cubit.var1==53)
                                  cubit.var2 =22;
                                else if(cubit.var1==52)
                                  cubit.var2 =11;
                                else if(cubit.var1==51)
                                  cubit.var2 =34;
                                else if(cubit.var1==55)
                                  cubit.var2 =25;

                                cubit.var3 = Random().nextInt(10) + 9;
                                cubit.var4 = Random().nextInt(20) + 10;
                                cubit.var5 = Random().nextInt(20) + 9;
                                cubit.var6 = Random().nextInt(10) + 10;
                                cubit.var7 = Random().nextInt(10) + 30;
                                cubit.var8 = Random().nextInt(10) + 20;
                                cubit.var9 = Random().nextInt(10) + 10;
                                cubit.var10 = Random().nextInt(10) + 15;
                                cubit.var11 = 10;
                                cubit.var12 = Random().nextInt(2) + 10;
                                cubit.var13 = Random().nextInt(10) + 30;//
                                cubit.var14 = Random().nextInt(10) + 20;
                                cubit.var15 = Random().nextInt(9) + 20;
                                cubit.var16 = Random().nextInt(30) + 10;
                              }
                              if (numOfDigit == 3) {
                                cubit.var1 = Random().nextInt(900) + 99;
                                cubit.var2 = Random().nextInt(400) + 100;
                                cubit.var3 = Random().nextInt(900) + 99;
                                cubit.var4 = Random().nextInt(600) + 100;
                                cubit.var5 = Random().nextInt(900) + 99;
                                cubit.var6 = Random().nextInt(500) + 100;
                                cubit.var7 = Random().nextInt(900) + 99;
                                cubit.var8 = Random().nextInt(400) + 100;
                                cubit.var9 = Random().nextInt(900) + 99;
                                cubit.var10 = Random().nextInt(700) + 100;
                                cubit.var11 = Random().nextInt(900) + 99;
                                cubit.var12 = Random().nextInt(900) + 100;
                                cubit.var13 = Random().nextInt(900) + 99;
                                cubit.var14 = Random().nextInt(300) + 100;
                                cubit.var15 = Random().nextInt(900) + 99;
                                cubit.var16 = Random().nextInt(700) + 100;
                              }
                              if (numOfDigit == 4) {
                                cubit.var1 = Random().nextInt(9000) + 999;
                                cubit.var2 = Random().nextInt(4000) + 1000;
                                cubit.var3 = Random().nextInt(9000) + 999;
                                cubit.var4 = Random().nextInt(6000) + 1000;
                                cubit.var5 = Random().nextInt(9000) + 999;
                                cubit.var6 = Random().nextInt(4000) + 1000;
                                cubit.var7 = Random().nextInt(9000) + 999;
                                cubit.var8 = Random().nextInt(2000) + 1000;
                                cubit.var9 = Random().nextInt(9000) + 999;
                                cubit.var10 = Random().nextInt(3000) + 1000;
                                cubit.var11 = Random().nextInt(9000) + 999;
                                cubit.var12 = Random().nextInt(1000) + 1000;
                                cubit.var13 = Random().nextInt(9000) + 999;
                                cubit.var14 = Random().nextInt(7000) + 1000;
                                cubit.var15 = Random().nextInt(9000) + 1000;
                                cubit.var16 = Random().nextInt(9000) + 1000;
                              }
                              if (numOfDigit == 5) {
                                cubit.var1 = Random().nextInt(90000) + 9999;
                                cubit.var2 = Random().nextInt(30000) + 10000;
                                cubit.var3 = Random().nextInt(90000) + 9999;
                                cubit.var4 = Random().nextInt(40000) + 10000;
                                cubit.var5 = Random().nextInt(90000) + 10000;
                                cubit.var6 = Random().nextInt(10000) + 10000;
                                cubit.var7 = Random().nextInt(90000) + 10000;
                                cubit.var8 = Random().nextInt(30000) + 10000;
                                cubit.var9 = Random().nextInt(90000) + 10000;
                                cubit.var10 = Random().nextInt(20000) + 10000;
                                cubit.var11 = Random().nextInt(90000) + 10000;
                                cubit.var12 = Random().nextInt(30000) + 10000;
                                cubit.var13 = Random().nextInt(90000) + 10000;
                                cubit.var14 = Random().nextInt(40000) + 10000;
                                cubit.var15 = Random().nextInt(90000) + 10000;
                                cubit.var16 = Random().nextInt(10000) + 10000;
                              }
                              if (numOfDigit == 6) {
                                cubit.var1 = Random().nextInt(900000) + 100000;
                                cubit.var2 = Random().nextInt(400000) + 100000;
                                cubit.var3 = Random().nextInt(900000) + 100000;
                                cubit.var4 = Random().nextInt(500000) + 100000;
                                cubit.var5 = Random().nextInt(900000) + 100000;
                                cubit.var6 = Random().nextInt(100000) + 100000;
                                cubit.var7 = Random().nextInt(900000) + 100000;
                                cubit.var8 = Random().nextInt(500000) + 100000;
                                cubit.var9 = Random().nextInt(900000) + 100000;
                                cubit.var10 = Random().nextInt(700000) + 100000;
                                cubit.var11 = Random().nextInt(900000) + 100000;
                                cubit.var12 = Random().nextInt(200000) + 100000;
                                cubit.var13 = Random().nextInt(900000) + 100000;
                                cubit.var14 = Random().nextInt(400000) + 100000;
                                cubit.var15 = Random().nextInt(900000) + 100000;
                                cubit.var16 = Random().nextInt(100000) + 100000;
                              }
                            }
                            else if(level==3) {
                              if (numOfDigit == 1) {
                                cubit.var1 = Random().nextInt(4) + 5;
                                if(cubit.var1==9)
                                  cubit.var2=1;
                                else if(cubit.var1==8)
                                  cubit.var2=2;
                                else if(cubit.var1==7)
                                  cubit.var2=3;
                                else if(cubit.var1==6)
                                  cubit.var2=4;
                                else if(cubit.var1==5)
                                  cubit.var2=5;
                                else cubit.var2 = Random().nextInt(4) + 1;
                                cubit.var3 = Random().nextInt(4) + 5;
                                cubit.var4 = Random().nextInt(4) + 1;
                                cubit.var5 = Random().nextInt(4) + 5;
                                cubit.var6 = Random().nextInt(4) + 1;
                                cubit.var7 = Random().nextInt(4) + 1;
                                cubit.var8 = Random().nextInt(4) + 1;
                                cubit.var9 = Random().nextInt(4) + 1;
                                cubit.var10 = Random().nextInt(4) + 1;
                                cubit.var11 = Random().nextInt(4) + 1;
                                cubit.var12 = Random().nextInt(4) + 1;
                                cubit.var13 = Random().nextInt(4) + 1;
                                cubit.var14 = Random().nextInt(4) + 1;
                                cubit.var15 = Random().nextInt(4) + 1;
                                cubit.var16 = Random().nextInt(4) + 1;
                              }
                              if (numOfDigit == 2) {
                                cubit.var1 = Random().nextInt(9) + 90;
                                if(cubit.var1==90)
                                  cubit.var2 = 10;
                                else if(cubit.var1==91)
                                  cubit.var2 = 19;
                                else if(cubit.var1==92)
                                  cubit.var2 = 38;
                                else if(cubit.var1==93)
                                  cubit.var2 = 57;
                                else if(cubit.var1==94)
                                  cubit.var2 = 46;
                                else if(cubit.var1==95)
                                  cubit.var2 = 25;
                                else cubit.var2 = Random().nextInt(40) + 10;
                                cubit.var3 = Random().nextInt(90) + 9;
                                cubit.var4 = Random().nextInt(30) + 10;
                                cubit.var5 = Random().nextInt(90) + 9;
                                cubit.var6 = Random().nextInt(40) + 10;
                                cubit.var7 = Random().nextInt(90) + 10;
                                cubit.var8 = Random().nextInt(50) + 10;
                                cubit.var9 = Random().nextInt(90) + 10;
                                cubit.var10 = Random().nextInt(60) + 10;
                                cubit.var11 = Random().nextInt(90) + 10;
                                cubit.var12 = Random().nextInt(40) + 10;
                                cubit.var13 = Random().nextInt(90) + 10;
                                cubit.var14 = Random().nextInt(90) + 10;
                                cubit.var15 = Random().nextInt(90) + 10;
                                cubit.var16 = Random().nextInt(40) + 10;
                              }
                              if (numOfDigit == 3) {
                                cubit.var1 = Random().nextInt(900) + 99;
                                cubit.var2 = Random().nextInt(400) + 100;
                                cubit.var3 = Random().nextInt(900) + 99;
                                cubit.var4 = Random().nextInt(600) + 100;
                                cubit.var5 = Random().nextInt(900) + 99;
                                cubit.var6 = Random().nextInt(500) + 100;
                                cubit.var7 = Random().nextInt(900) + 99;
                                cubit.var8 = Random().nextInt(400) + 100;
                                cubit.var9 = Random().nextInt(900) + 99;
                                cubit.var10 = Random().nextInt(700) + 100;
                                cubit.var11 = Random().nextInt(900) + 99;
                                cubit.var12 = Random().nextInt(900) + 100;
                                cubit.var13 = Random().nextInt(900) + 99;
                                cubit.var14 = Random().nextInt(300) + 100;
                                cubit.var15 = Random().nextInt(900) + 99;
                                cubit.var16 = Random().nextInt(700) + 100;
                              }
                              if (numOfDigit == 4) {
                                cubit.var1 = Random().nextInt(9000) + 999;
                                cubit.var2 = Random().nextInt(4000) + 1000;
                                cubit.var3 = Random().nextInt(9000) + 999;
                                cubit.var4 = Random().nextInt(6000) + 1000;
                                cubit.var5 = Random().nextInt(9000) + 999;
                                cubit.var6 = Random().nextInt(4000) + 1000;
                                cubit.var7 = Random().nextInt(9000) + 999;
                                cubit.var8 = Random().nextInt(2000) + 1000;
                                cubit.var9 = Random().nextInt(9000) + 999;
                                cubit.var10 = Random().nextInt(3000) + 1000;
                                cubit.var11 = Random().nextInt(9000) + 999;
                                cubit.var12 = Random().nextInt(1000) + 1000;
                                cubit.var13 = Random().nextInt(9000) + 999;
                                cubit.var14 = Random().nextInt(7000) + 1000;
                                cubit.var15 = Random().nextInt(9000) + 1000;
                                cubit.var16 = Random().nextInt(9000) + 1000;
                              }
                              if (numOfDigit == 5) {
                                cubit.var1 = Random().nextInt(90000) + 9999;
                                cubit.var2 = Random().nextInt(30000) + 10000;
                                cubit.var3 = Random().nextInt(90000) + 9999;
                                cubit.var4 = Random().nextInt(40000) + 10000;
                                cubit.var5 = Random().nextInt(90000) + 10000;
                                cubit.var6 = Random().nextInt(10000) + 10000;
                                cubit.var7 = Random().nextInt(90000) + 10000;
                                cubit.var8 = Random().nextInt(30000) + 10000;
                                cubit.var9 = Random().nextInt(90000) + 10000;
                                cubit.var10 = Random().nextInt(20000) + 10000;
                                cubit.var11 = Random().nextInt(90000) + 10000;
                                cubit.var12 = Random().nextInt(30000) + 10000;
                                cubit.var13 = Random().nextInt(90000) + 10000;
                                cubit.var14 = Random().nextInt(40000) + 10000;
                                cubit.var15 = Random().nextInt(90000) + 10000;
                                cubit.var16 = Random().nextInt(10000) + 10000;
                              }
                              if (numOfDigit == 6) {
                                cubit.var1 = Random().nextInt(900000) + 100000;
                                cubit.var2 = Random().nextInt(400000) + 100000;
                                cubit.var3 = Random().nextInt(900000) + 100000;
                                cubit.var4 = Random().nextInt(500000) + 100000;
                                cubit.var5 = Random().nextInt(900000) + 100000;
                                cubit.var6 = Random().nextInt(100000) + 100000;
                                cubit.var7 = Random().nextInt(900000) + 100000;
                                cubit.var8 = Random().nextInt(500000) + 100000;
                                cubit.var9 = Random().nextInt(900000) + 100000;
                                cubit.var10 = Random().nextInt(700000) + 100000;
                                cubit.var11 = Random().nextInt(900000) + 100000;
                                cubit.var12 = Random().nextInt(200000) + 100000;
                                cubit.var13 = Random().nextInt(900000) + 100000;
                                cubit.var14 = Random().nextInt(400000) + 100000;
                                cubit.var15 = Random().nextInt(900000) + 100000;
                                cubit.var16 = Random().nextInt(100000) + 100000;
                              }
                            }
                          }


                          cubit.startTimer(time * numOfOperation * 2 + 1);
                          //cubit.playAudio();
                        },
                        color: Colors.green,
                        height: 50,
                        child: Text(
                          'start'.toUpperCase(),
                          style: TextStyle(fontSize: 25, color: Colors.white),
                        ),
                      ),
                    ),
                    SizedBox(height: 30,),


                  ],
                ),
              ),

            ),
            floatingActionButton: FloatingActionButton(
              child: Icon(Icons.keyboard_arrow_up),
              backgroundColor: Colors.green,
              onPressed: () {
                showModalBottomSheet(
                    builder: (context) =>
                        MyCon(),
                    context: context);
              },
            ),
          );
        },
      ),
    );
  }

  Color getRandomColorBetweenBlackAndRed() {
    Color randomColor = Colors.black;
    final random = Random();
    final colorValue = random.nextDouble(); // Generate a random value between 0 and 1
    randomColor = Color.lerp(Colors.black, Colors.red, colorValue)!;
    return randomColor;
  }

  myTextStyle() {
    return TextStyle(
        fontSize:
        80,
        color: getRandomColorBetweenBlackAndRed()
    );
  }

}
