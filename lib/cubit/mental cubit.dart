import 'dart:async';
import 'dart:math';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mental_arithmetic/cubit/state.dart';
import 'package:mental_arithmetic/screen/game.dart';
import 'package:mental_arithmetic/screen/mental%20arithmetic.dart';

class AppCubit extends Cubit<AppState> {
  final int?hazem;
  AppCubit({this.hazem}) : super(AppInitialState());




  static AppCubit get(context) => BlocProvider.of(context);
  int numberOfDigit = 1;
  int numberOfDigitForRule = 1;
  int numberOfOperation = 1;
  int currentIndex = 0;
  int var1 = 0;
  int var2 = 0;
  int var3 = 0;
  int var4 = 0;
  int var5 = 0;
  int var6 = 0;
  int var7 = 0;
  int var8 = 0;
  int var9 = 0;
  int var10 = 0;
  int var11 = 0;
  int var12 = 0;
  int var13 = 0;
  int var14 = 0;
  int var15 = 0;
  int var16 = 0;
  int level = 1;
  bool sub = false;
  Timer? timer;
  Duration myDuration = Duration(minutes: 1);
  int count = 10;
  int count2 = 3;
  List? rand;
  int time = 1;
  int z = 0;
  int correctAnswer = 0;
  int wrongAnswer = 0;
  int column1=0;
  int column2=0;
  int column3=0;
  int column4=0;
  int column5=0;
  int column6=0;
  int column7=0;
  Color color = Color.fromARGB(255, 1, 248, 133);
  Color color18 = Color.fromARGB(255, 1, 248, 133);
  Color color19 = Color.fromARGB(255, 1, 248, 133);
  Color color20 = Color.fromARGB(255, 1, 248, 133);
  Color color21 = Color.fromARGB(255, 1, 248, 133);
  Color color12 = Color.fromARGB(255, 1, 248, 133);
  Color color10 = Color.fromARGB(255, 1, 248, 133);
  Color color8 = Color.fromARGB(255, 1, 248, 133);
  Color color6 = Color.fromARGB(255, 1, 248, 133);
  Color color2 =Color.fromARGB(255, 1, 248, 133);
  Color color4 =Color.fromARGB(255, 1, 248, 133);
  Color color26 = Color.fromARGB(255, 1, 248, 133);
  Color color27 = Color.fromARGB(255, 1, 248, 133);
  Color color28 = Color.fromARGB(255, 1, 248, 133);
  Color color29 = Color.fromARGB(255, 1, 248, 133);
  Color color34 = Color.fromARGB(255, 1, 248, 133);
  Color color35 = Color.fromARGB(255, 1, 248, 133);
  Color color36 =Color.fromARGB(255, 1, 248, 133);
  Color color37 = Color.fromARGB(255, 1, 248, 133);
  Color color42 = Color.fromARGB(255, 1, 248, 133);
  Color color43 = Color.fromARGB(255, 1, 248, 133);
  Color color44 = Color.fromARGB(255, 1, 248, 133);
  Color color45 = Color.fromARGB(255, 1, 248, 133);
  Color color50 = Color.fromARGB(255, 1, 248, 133);
  Color color51 = Color.fromARGB(255, 1, 248, 133);
  Color color52 =Color.fromARGB(255, 1, 248, 133);
  Color color53 =Color.fromARGB(255, 1, 248, 133);
  Color color58 =Color.fromARGB(255, 1, 248, 133);
  Color color59 = Color.fromARGB(255, 1, 248, 133);
  Color color60 =Color.fromARGB(255, 1, 248, 133);
  Color color61 =Color.fromARGB(255, 1, 248, 133);
  Color color66 =Color.fromARGB(255, 1, 248, 133);
  Color color67 =Color.fromARGB(255, 1, 248, 133);
  Color color68 =Color.fromARGB(255, 1, 248, 133);
  Color color69 =Color.fromARGB(255, 1, 248, 133);
  Color color1 = Colors.white;
  Color color3 = Colors.white;
  Color color5 = Colors.white;
  Color color7 = Colors.white;
  Color color9 = Colors.white;
  Color color11 = Colors.white;
  Color color13 = Colors.white;
  Color color14 = Colors.white;
  Color color15 = Colors.white;
  Color color16 = Colors.white;
  Color color17 = Colors.white;
  Color color22 = Colors.white;
  Color color23 = Colors.white;
  Color color24 = Colors.white;
  Color color25 = Colors.white;
  Color color30 = Colors.white;
  Color color31 = Colors.white;
  Color color32 = Colors.white;
  Color color33 = Colors.white;
  Color color38 = Colors.white;
  Color color39 = Colors.white;
  Color color40 = Colors.white;
  Color color41 = Colors.white;
  Color color46 = Colors.white;
  Color color47 = Colors.white;
  Color color48 = Colors.white;
  Color color49 = Colors.white;
  Color color54 = Colors.white;
  Color color55 = Colors.white;
  Color color56 = Colors.white;
  Color color57 = Colors.white;
  Color color62 = Colors.white;
  Color color63 = Colors.white;
  Color color64 = Colors.white;
  Color color65 = Colors.white;
  int x = 0;
  int y = 0;
  final audio=AudioPlayer();
  int studyVar1=0;
  int studyVar2=0;
  int studyVar3=0;
  int studyVar4=0;
  int studyVar5=0;
  int studyVar6=0;
  int studyVar7=0;
  int answer=0;
  bool nextExample=false;



  List<String> title = [
    'Mental Arithmetic',
    'Counter',
  ];

  moveExample(){
    if(nextExample==true)
      nextExample=false;
    else
      nextExample=true;
    emit(NextExampleState());
  }





  changeValueOfColumn1(int value){
    if(column1==0||column1==1||column1==2||column1==3||column1==4)
      column1+=value;

    emit(IncrementAbacusState());
  }

  changeValueOfAbacusSubColumn1(int value){
    if(column1==5||column1==6||column1==7||column1==8||column1==8||column1==9)
      column1-=value;

    emit(DecrementAbacusState());
  }

  changeValueOfColumn2(int value){
    if(column2==0||column2==1||column2==2||column2==3||column2==4)
      column2+=value;

    emit(IncrementAbacusState());
  }

  changeValueOfAbacusSubColumn2(int value){
    if(column2==5||column2==6||column2==7||column2==8||column2==8||column2==9)
      column2-=value;
    emit(DecrementAbacusState());
  }

  changeValueOfColumn3(int value){
    if(column3==0||column3==1||column3==2||column3==3||column3==4)
      column3+=value;

    emit(IncrementAbacusState());
  }

  changeValueOfAbacusSubColumn3(int value){
    if(column3==5||column3==6||column3==7||column3==8||column3==8||column3==9)
      column3-=value;

    emit(DecrementAbacusState());
  }

  changeValueOfColumn4(int value){
    if(column4==0||column4==1||column4==2||column4==3||column4==4)
      column4+=value;

    emit(IncrementAbacusState());
  }

  changeValueOfAbacusSubColumn4(int value){
    if(column4==5||column4==6||column4==7||column4==8||column4==8||column4==9)
      column4-=value;

    emit(DecrementAbacusState());
  }

  changeValueOfColumn5(int value){
    if(column5==0||column5==1||column5==2||column5==3||column5==4)
      column5+=value;

    emit(IncrementAbacusState());
  }

  changeValueOfAbacusSubColumn5(int value){
    if(column5==5||column5==6||column5==7||column5==8||column5==8||column5==9)
      column5-=value;

    emit(DecrementAbacusState());
  }

  changeValueOfColumn6(int value){
    if(column6==0||column6==1||column6==2||column6==3||column6==4)
      column6+=value;

    emit(IncrementAbacusState());
  }

  changeValueOfAbacusSubColumn6(int value){
    if(column6==5||column6==6||column6==7||column6==8||column6==8||column6==9)
      column6-=value;

    emit(DecrementAbacusState());
  }

  changeValueOfColumn7(int value){
    if(column7==0||column7==1||column7==2||column7==3||column7==4)
      column7+=value;

    emit(IncrementAbacusState());
  }

  changeValueOfAbacusSubColumn7(int value){
    if(column7==5||column7==6||column7==7||column7==8||column7==8||column7==9)
      column7-=value;

    emit(DecrementAbacusState());
  }
  changeValueColumn1(){
    if(column1==0)
      column1=1;
    else if(column1==5)
      column1=6;
    emit(IncrementAbacusState());
  }

  changeValueColumn2Part1(){
    if(column2==0)
      column2=1;
    else if(column2==5)
      column2=6;
    emit(IncrementAbacusState());
  }

  changeValueColumn3Part1(){
    if(column3==0)
      column3=1;
    else if(column3==5)
      column3=6;
    emit(IncrementAbacusState());
  }

  changeValueColumn4Part1(){
    if(column4==0)
      column4=1;
    else if(column4==5)
      column4=6;
    emit(IncrementAbacusState());
  }

  changeValueColumn6Part1(){
    if(column6==0)
      column6=1;
    else if(column6==5)
      column6=6;
    emit(IncrementAbacusState());
  }

  changeValueColumn5Part1(){
    if(column5==0)
      column5=1;
    else if(column5==5)
      column5=6;
    emit(IncrementAbacusState());
  }

  changeValueColumn7Part1(){
    if(column7==0)
      column7=1;
    else if(column7==5)
      column7=6;
    emit(IncrementAbacusState());
  }

  changeValueColumn1Part1Sub(){
    if(column1==4||column1==9)
      column1-=4;
    else if(column1==3||column1==8)
      column1-=3;
    else if(column1==2||column1==7)
      column1-=2;
    else if(column1==1||column1==6)
      column1-=1;
    emit(IncrementAbacusState());
  }

  changeValueColumn2Part1Sub(){
    if(column2==4||column2==9)
      column2-=4;
    else if(column2==3||column2==8)
      column2-=3;
    else if(column2==2||column2==7)
      column2-=2;
    else if(column2==1||column2==6)
      column2-=1;
    emit(IncrementAbacusState());
  }

  changeValueColumn3Part1Sub(){
    if(column3==4||column3==9)
      column3-=4;
    else if(column3==3||column3==8)
      column3-=3;
    else if(column3==2||column3==7)
      column3-=2;
    else if(column3==1||column3==6)
      column3-=1;
    emit(IncrementAbacusState());
  }

  changeValueColumn4Part1Sub(){
    if(column4==4||column4==9)
      column4-=4;
    else if(column4==3||column4==8)
      column4-=3;
    else if(column4==2||column4==7)
      column4-=2;
    else if(column4==1||column4==6)
      column4-=1;
    emit(IncrementAbacusState());
  }

  changeValueColumn5Part1Sub(){
    if(column5==4||column5==9)
      column5-=4;
    else if(column5==3||column5==8)
      column5-=3;
    else if(column5==2||column5==7)
      column5-=2;
    else if(column5==1||column5==6)
      column5-=1;
    emit(IncrementAbacusState());
  }

  changeValueColumn6Part1Sub(){
    if(column6==4||column6==9)
      column6-=4;
    else if(column6==3||column6==8)
      column6-=3;
    else if(column6==2||column6==7)
      column6-=2;
    else if(column6==1||column6==6)
      column6-=1;
    emit(IncrementAbacusState());
  }

  changeValueColumn7Part1Sub(){
    if(column7==4||column7==9)
      column7-=4;
    else if(column7==3||column7==8)
      column7-=3;
    else if(column7==2||column7==7)
      column7-=2;
    else if(column7==1||column7==6)
      column7-=1;
    emit(IncrementAbacusState());
  }

  changeValueColumn1Part2(){
    if(column1==0||column1==1)
      column1=2;
    else if(column1==5||column1==6)
      column1=7;

    emit(IncrementAbacusState());
  }

  changeValueColumn7Part2(){
    if(column7==0||column7==1)
      column7=2;
    else if(column7==5||column7==6)
      column7=7;

    emit(IncrementAbacusState());
  }

  changeValueColumn6Part2(){
    if(column6==0||column6==1)
      column6=2;
    else if(column6==5||column6==6)
      column6=7;

    emit(IncrementAbacusState());
  }

  changeValueColumn4Part2(){
    if(column4==0||column4==1)
      column4=2;
    else if(column4==5||column4==6)
      column4=7;

    emit(IncrementAbacusState());
  }

  changeValueColumn5Part2(){
    if(column5==0||column5==1)
      column5=2;
    else if(column5==5||column5==6)
      column5=7;

    emit(IncrementAbacusState());
  }

  changeValueColumn2Part2(){
    if(column2==0||column2==1)
      column2=2;
    else if(column2==5||column2==6)
      column2=7;

    emit(IncrementAbacusState());
  }

  changeValueColumn3Part2(){
    if(column3==0||column3==1)
      column3=2;
    else if(column3==5||column3==6)
      column3=7;

    emit(IncrementAbacusState());
  }



  changeValueColumn1Part2Sub(){
    if(column1==4||column1==9)
      column1-=3;
    else if(column1==3||column1==8)
      column1-=2;
    else if(column1==2||column1==7)
      column1-=1;

    emit(IncrementAbacusState());
  }

  changeValueColumn7Part2Sub(){
    if(column7==4||column7==9)
      column7-=3;
    else if(column7==3||column7==8)
      column7=2;
    else if(column7==2||column7==7)
      column7-=1;

    emit(IncrementAbacusState());
  }

  changeValueColumn6Part2Sub(){
    if(column6==4||column6==9)
      column6-=3;
    else if(column6==3||column6==8)
      column6-=2;
    else if(column6==2||column6==7)
      column6-=1;

    emit(IncrementAbacusState());
  }

  changeValueColumn5Part2Sub(){
    if(column5==4||column5==9)
      column5-=3;
    else if(column5==3||column5==8)
      column5-=2;
    else if(column5==2||column5==7)
      column5-=1;

    emit(IncrementAbacusState());
  }

  changeValueColumn4Part2Sub(){
    if(column4==4||column4==9)
      column4-=3;
    else if(column4==3||column4==8)
      column4-=2;
    else if(column4==2||column4==7)
      column4-=1;

    emit(IncrementAbacusState());
  }

  changeValueColumn3Part2Sub(){
    if(column3==4||column3==9)
      column3-=3;
    else if(column3==3||column3==8)
      column3-=2;
    else if(column3==2||column3==7)
      column3-=1;

    emit(IncrementAbacusState());
  }

  changeValueColumn2Part2Sub(){
    if(column2==4||column2==9)
      column2-=3;
    else if(column2==3||column2==8)
      column2-=2;
    else if(column2==2||column2==7)
      column2-=1;

    emit(IncrementAbacusState());
  }

  changeValueColumn1Part3Sub(){
    if(column1==4||column1==9)
      column1-=2;
    else if(column1==3||column1==8)
      column1-=1;


    emit(IncrementAbacusState());
  }

  changeValueColumn6Part3Sub(){
    if(column6==4||column6==9)
      column6-=2;
    else if(column6==3||column6==8)
      column6-=1;


    emit(IncrementAbacusState());
  }

  changeValueColumn7Part3Sub(){
    if(column7==4||column7==9)
      column7-=2;
    else if(column7==3||column7==8)
      column7-=1;


    emit(IncrementAbacusState());
  }

  changeValueColumn2Part3Sub(){
    if(column2==4||column2==9)
      column2-=2;
    else if(column2==3||column2==8)
      column2-=1;


    emit(IncrementAbacusState());
  }

  changeValueColumn5Part3Sub(){
    if(column5==4||column5==9)
      column5-=2;
    else if(column5==3||column5==8)
      column5-=1;


    emit(IncrementAbacusState());
  }

  changeValueColumn4Part3Sub(){
    if(column4==4||column4==9)
      column4-=2;
    else if(column4==3||column4==8)
      column4-=1;


    emit(IncrementAbacusState());
  }

  changeValueColumn3Part3Sub(){
    if(column3==4||column3==9)
      column3-=2;
    else if(column3==3||column3==8)
      column3-=1;


    emit(IncrementAbacusState());
  }

  changeValueColumn1Part4Sub(){
    if(column1==4||column1==9)
      column1-=1;



    emit(IncrementAbacusState());
  }

  changeValueColumn7Part4Sub(){
    if(column7==4||column7==9)
      column7-=1;



    emit(IncrementAbacusState());
  }

  changeValueColumn6Part4Sub(){
    if(column6==4||column6==9)
      column6-=1;



    emit(IncrementAbacusState());
  }


  changeValueColumn5Part4Sub(){
    if(column5==4||column5==9)
      column5-=1;



    emit(IncrementAbacusState());
  }

  changeValueColumn4Part4Sub(){
    if(column4==4||column4==9)
      column4-=1;



    emit(IncrementAbacusState());
  }


  changeValueColumn3Part4Sub(){
    if(column3==4||column3==9)
      column3-=1;



    emit(IncrementAbacusState());
  }

  changeValueColumn2Part4Sub(){
    if(column2==4||column2==9)
      column2-=1;



    emit(IncrementAbacusState());
  }

  changeValueColumn1Part3(){
    if(column1==0||column1==1||column1==2)
      column1=3;
    else if(column1==5||column1==6||column1==7)
      column1=8;

    emit(IncrementAbacusState());
  }

  changeValueColumn7Part3(){
    if(column7==0||column7==1||column7==2)
      column7=3;
    else if(column7==5||column7==6||column7==7)
      column7=8;

    emit(IncrementAbacusState());
  }

  changeValueColumn5Part3(){
    if(column5==0||column5==1||column5==2)
      column5=3;
    else if(column5==5||column5==6||column5==7)
      column5=8;

    emit(IncrementAbacusState());
  }

  changeValueColumn6Part3(){
    if(column6==0||column6==1||column6==2)
      column6=3;
    else if(column6==5||column6==6||column6==7)
      column6=8;

    emit(IncrementAbacusState());
  }

  changeValueColumn4Part3(){
    if(column4==0||column4==1||column4==2)
      column4=3;
    else if(column4==5||column4==6||column4==7)
      column4=8;

    emit(IncrementAbacusState());
  }

  changeValueColumn3Part3(){
    if(column3==0||column3==1||column3==2)
      column3=3;
    else if(column3==5||column3==6||column3==7)
      column3=8;

    emit(IncrementAbacusState());
  }

  changeValueColumn2Part3(){
    if(column2==0||column2==1||column2==2)
      column2=3;
    else if(column2==5||column2==6||column2==7)
      column2=8;

    emit(IncrementAbacusState());
  }

  changeValueColumn1Part4(){
    if(column1==0||column1==1||column1==2||column1==3)
      column1=4;
    else if(column1==5||column1==6||column1==7||column1==8)
      column1=9;

    emit(IncrementAbacusState());
  }

  changeValueColumn7Part4(){
    if(column7==0||column7==1||column7==2||column7==3)
      column7=4;
    else if(column7==5||column7==6||column7==7||column7==8)
      column7=9;

    emit(IncrementAbacusState());
  }

  changeValueColumn6Part4(){
    if(column6==0||column6==1||column6==2||column6==3)
      column6=4;
    else if(column6==5||column6==6||column6==7||column6==8)
      column6=9;

    emit(IncrementAbacusState());
  }

  changeValueColumn5Part4(){
    if(column5==0||column5==1||column5==2||column5==3)
      column5=4;
    else if(column5==5||column5==6||column5==7||column5==8)
      column5=9;

    emit(IncrementAbacusState());
  }

  changeValueColumn4Part4(){
    if(column4==0||column4==1||column4==2||column4==3)
      column4=4;
    else if(column4==5||column4==6||column4==7||column4==8)
      column4=9;

    emit(IncrementAbacusState());
  }

  changeValueColumn3Part4(){
    if(column3==0||column3==1||column3==2||column3==3)
      column3=4;
    else if(column3==5||column3==6||column3==7||column3==8)
      column3=9;

    emit(IncrementAbacusState());
  }

  changeValueColumn2Part4(){
    if(column2==0||column2==1||column2==2||column2==3)
      column2=4;
    else if(column2==5||column2==6||column2==7||column2==8)
      column2=9;

    emit(IncrementAbacusState());
  }


  void incrementX(int a) {
    x = a;
    emit(IncrementX());
  }

  void decrementX(int a) {
    x = a;
    emit(DecrementX());
  }

  void incrementY(int a) {
    y = a;
    emit(IncrementY());
  }

  void decrementY(int a) {
    y = a;
    emit(DecrementY());
  }

  gestChange(Color x,Color y) {
    color = x;
    color1=y;
    emit(ChangeGest());

  }

  gestChange62(Color x,Color y) {
    color65 = x;
    color69=y;
    emit(ChangeGest());

  }

  gestChange61(Color x,Color y) {
    color64 = x;
    color65 = x;
    color68=y;
    color69=y;
    emit(ChangeGest());

  }

  gestChange60(Color x,Color y) {
    color63 = x;
    color64 = x;
    color65 = x;
    color67=y;
    color68=y;
    color69=y;
    emit(ChangeGest());

  }

  gestChange59(Color x,Color y) {
    color62 = x;
    color63 = x;
    color64 = x;
    color65 = x;
    color66=y;
    color67=y;
    color68=y;
    color69=y;

    emit(ChangeGest());

  }

  gestChange58(Color x,Color y) {
    color62 = x;
    color66=y;
    emit(ChangeGest());

  }

  gestChange57(Color x,Color y) {
    color62 = x;
    color63 = x;
    color66=y;
    color67=y;
    emit(ChangeGest());

  }

  gestChange56(Color x,Color y) {
    color62 = x;
    color63 = x;
    color64 = x;
    color66=y;
    color67=y;
    color68=y;
    emit(ChangeGest());

  }

  gestChange55(Color x,Color y) {
    color62 = x;
    color63 = x;
    color64 = x;
    color65 = x;
    color66=y;
    color67=y;
    color68=y;
    color69=y;
    emit(ChangeGest());

  }

  gestChange54(Color x,Color y) {
    color57 = x;
    color61=y;
    emit(ChangeGest());

  }

  gestChange53(Color x,Color y) {
    color56 = x;
    color57 = x;
    color60=y;
    color61=y;
    emit(ChangeGest());

  }

  gestChange52(Color x,Color y) {
    color55 = x;
    color56 = x;
    color57 = x;
    color59=y;
    color60=y;
    color61=y;
    emit(ChangeGest());

  }

  gestChange51(Color x,Color y) {
    color54 = x;
    color55 = x;
    color56 = x;
    color57 = x;
    color58=y;
    color59=y;
    color60=y;
    color61=y;

    emit(ChangeGest());

  }


  gestChange50(Color x,Color y) {
    color54 = x;
    color58=y;
    emit(ChangeGest());

  }

  gestChange49(Color x,Color y) {
    color54 = x;
    color55 = x;
    color58=y;
    color59=y;
    emit(ChangeGest());

  }

  gestChange48(Color x,Color y) {
    color54 = x;
    color55 = x;
    color56 = x;
    color58=y;
    color59=y;
    color60=y;
    emit(ChangeGest());

  }

  gestChange47(Color x,Color y) {
    color54 = x;
    color55 = x;
    color56 = x;
    color57 = x;
    color58=y;
    color59=y;
    color60=y;
    color61=y;
    emit(ChangeGest());

  }

  gestChange46(Color x,Color y) {
    color49 = x;
    color53=y;
    emit(ChangeGest());

  }

  gestChange45(Color x,Color y) {
    color48 = x;
    color49 = x;
    color52=y;
    color53=y;
    emit(ChangeGest());

  }

  gestChange44(Color x,Color y) {
    color47 = x;
    color48 = x;
    color49 = x;
    color51=y;
    color52=y;
    color53=y;
    emit(ChangeGest());

  }

  gestChange43(Color x,Color y) {
    color46 = x;
    color47 = x;
    color48 = x;
    color49 = x;
    color50=y;
    color51=y;
    color52=y;
    color53=y;

    emit(ChangeGest());

  }

  gestChange42(Color x,Color y) {
    color46 = x;
    color50=y;
    emit(ChangeGest());

  }

  gestChange41(Color x,Color y) {
    color46 = x;
    color47 = x;
    color50=y;
    color51=y;
    emit(ChangeGest());

  }

  gestChange40(Color x,Color y) {
    color46 = x;
    color47 = x;
    color48 = x;
    color50=y;
    color51=y;
    color52=y;
    emit(ChangeGest());

  }

  gestChange39(Color x,Color y) {
    color46 = x;
    color47 = x;
    color48 = x;
    color49 = x;
    color50=y;
    color51=y;
    color52=y;
    color53=y;
    emit(ChangeGest());

  }

  gestChange38(Color x,Color y) {
    color41 = x;
    color45=y;
    emit(ChangeGest());

  }

  gestChange37(Color x,Color y) {
    color40 = x;
    color41 = x;
    color44=y;
    color45=y;
    emit(ChangeGest());

  }

  gestChange36(Color x,Color y) {
    color39 = x;
    color40 = x;
    color41 = x;
    color43=y;
    color44=y;
    color45=y;
    emit(ChangeGest());

  }

  gestChange35(Color x,Color y) {
    color38 = x;
    color39 = x;
    color40 = x;
    color41 = x;
    color42=y;
    color43=y;
    color44=y;
    color45=y;

    emit(ChangeGest());

  }

  gestChange34(Color x,Color y) {
    color38 = x;
    color42=y;
    emit(ChangeGest());

  }

  gestChange33(Color x,Color y) {
    color38 = x;
    color39 = x;
    color42=y;
    color43=y;
    emit(ChangeGest());

  }

  gestChange32(Color x,Color y) {
    color38 = x;
    color39 = x;
    color40 = x;
    color44=y;
    color43=y;
    color42=y;
    emit(ChangeGest());

  }

  gestChange31(Color x,Color y) {
    color38 = x;
    color39 = x;
    color40 = x;
    color41 = x;
    color42=y;
    color43=y;
    color44=y;
    color45=y;
    emit(ChangeGest());

  }


  gestChange30(Color x,Color y) {
    color33 = x;
    color37=y;
    emit(ChangeGest());

  }

  gestChange29(Color x,Color y) {
    color32 = x;
    color33 = x;
    color36=y;
    color37=y;
    emit(ChangeGest());

  }

  gestChange28(Color x,Color y) {
    color31 = x;
    color32 = x;
    color33 = x;
    color35=y;
    color36=y;
    color37=y;
    emit(ChangeGest());

  }

  gestChange27(Color x,Color y) {
    color30 = x;
    color31 = x;
    color32 = x;
    color33 = x;
    color34=y;
    color35=y;
    color36=y;
    color37=y;

    emit(ChangeGest());

  }

  gestChange26(Color x,Color y) {
    color30 = x;
    color34=y;
    emit(ChangeGest());

  }

  gestChange25(Color x,Color y) {
    color30 = x;
    color31 = x;
    color34=y;
    color35=y;
    emit(ChangeGest());

  }

  gestChange24(Color x,Color y) {
    color30 = x;
    color31 = x;
    color32 = x;
    color36=y;
    color35=y;
    color34=y;
    emit(ChangeGest());

  }

  gestChange23(Color x,Color y) {
    color30 = x;
    color31 = x;
    color32 = x;
    color33 = x;
    color34=y;
    color35=y;
    color36=y;
    color37=y;
    emit(ChangeGest());

  }

  gestChange22(Color x,Color y) {
    color25 = x;
    color29=y;
    emit(ChangeGest());

  }

  gestChange21(Color x,Color y) {
    color24 = x;
    color25 = x;
    color28=y;
    color29=y;
    emit(ChangeGest());

  }

  gestChange20(Color x,Color y) {
    color23 = x;
    color24 = x;
    color25 = x;
    color27=y;
    color28=y;
    color29=y;
    emit(ChangeGest());

  }



  gestChange19(Color x,Color y) {
    color22 = x;
    color23 = x;
    color24 = x;
    color25 = x;
    color26=y;
    color27=y;
    color28=y;
    color29=y;

    emit(ChangeGest());

  }

  gestChange18(Color x,Color y) {
    color22 = x;
    color26=y;
    emit(ChangeGest());

  }

  gestChange17(Color x,Color y) {
    color22 = x;
    color23 = x;
    color26=y;
    color27=y;
    emit(ChangeGest());

  }

  gestChange16(Color x,Color y) {
    color22 = x;
    color23 = x;
    color24 = x;
    color26=y;
    color27=y;
    color28=y;
    emit(ChangeGest());

  }

  gestChange15(Color x,Color y) {
    color22 = x;
    color23 = x;
    color24 = x;
    color25 = x;
    color26=y;
    color27=y;
    color28=y;
    color29=y;
    emit(ChangeGest());

  }

  gestChange14(Color x,Color y) {
    color17 = x;
    color21=y;
    emit(ChangeGest());

  }

  gestChange13(Color x,Color y) {
    color15 = x;
    color14 = x;
    color16 = x;
    color17 = x;
    color21=y;
    color20=y;
    color19=y;
    color18=y;
    emit(ChangeGest());

  }

  gestChange12(Color x,Color y) {
    color16 = x;
    color17 = x;
    color20=y;
    color21=y;
    emit(ChangeGest());

  }

  gestChange11(Color x,Color y) {
    color15 = x;
    color14 = x;
    color16 = x;
    color20=y;
    color19=y;
    color18=y;
    emit(ChangeGest());

  }

  gestChange10(Color x,Color y) {
    color18 = x;
    color14=y;
    emit(ChangeGest());

  }

  gestChange9(Color x,Color y) {
    color15 = x;
    color16 = x;
    color17 = x;
    color19=y;
    color20=y;
    color21=y;
    emit(ChangeGest());

  }

  gestChange8(Color x,Color y) {
    color15 = x;
    color14 = x;
    color19=y;
    color18=y;
    emit(ChangeGest());

  }

  gestChange7(Color x,Color y) {
    color14 = x;
    color15 = x;
    color16 = x;
    color17 = x;
    color18=y;
    color19=y;
    color20=y;
    color21=y;

    emit(ChangeGest());

  }

  gestChange6(Color x,Color y) {
    color12 = x;
    color13=y;
    emit(ChangeGest());

  }

  gestChange5(Color x,Color y) {
    color10 = x;
    color11=y;
    emit(ChangeGest());

  }

  gestChange4(Color x,Color y) {
    color8 = x;
    color9=y;
    emit(ChangeGest());

  }

  gestChange3(Color x,Color y) {
    color6 = x;
    color7=y;
    emit(ChangeGest());

  }

  gestChange1(Color x,Color y) {
    color2 = x;
    color3=y;
    emit(ChangeGest());

  }

  gestChange2(Color x,Color y) {
    color4 = x;
    color5=y;
    emit(ChangeGest());

  }






  startTimer(int x) {
    count = x;
    if (timer != null) {
      timer!.cancel();
    }
    timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (count > 0) {
        count--;
        if(hazem==15&&count==80)
          count=0;
        emit(AppTimer());
      } else
        timer.cancel();

    });
  }

  void changeSub(y) {
    sub = !sub;
    numberOfOperation=1;
    emit(AppChangSub());
  }

  void changeSlider(int newLevel) {
    level = newLevel;
    emit(AppNewSlider());
  }

  void changeSliderTime(int newLevel) {
    time = newLevel;
    emit(AppTime());
  }

  void changeSliderOperation(int newLevel) {
    numberOfOperation = newLevel;
    emit(AppTime());
  }

  void changIndex(int index) {
    currentIndex = index;
    emit(AppChangeIndex());
  }

  incrementNumOfDigit() {
    if (numberOfDigit == 6) numberOfDigit = 0;
    numberOfDigit++;

    emit(AppIncrement());
    return numberOfDigit;
  }

  incrementNumOfDigitForRule() {
    if (numberOfDigitForRule == 2) numberOfDigitForRule = 0;
    numberOfDigitForRule++;

    emit(AppIncrement());
    return numberOfDigit;
  }

  decrementNumOfDigit() {
    if (numberOfDigit == 1) numberOfDigit = 2;
    numberOfDigit--;
    emit(AppDecrement());
  }

  decrementNumOfDigitForRule() {
    if (numberOfDigitForRule == 1) numberOfDigitForRule = 2;
    numberOfDigitForRule--;
    emit(AppDecrement());
  }

  decrementNumOfOperation() {
    if (numberOfOperation == 1) numberOfOperation = 2;
    numberOfOperation--;
    emit(AppDecrement());
  }

  incrementNumOfOperation() {
    if (level == 2) {
      if(sub==false){
      numberOfOperation += 1;
      if (numberOfOperation == 4||numberOfOperation==5||numberOfOperation==6||numberOfOperation==7||numberOfOperation==8||numberOfOperation==9||numberOfOperation==10||numberOfOperation==11||numberOfOperation==12||numberOfOperation==13||numberOfOperation==14||numberOfOperation==15)
        numberOfOperation = 1;
      emit(AppIncrement());
      }

      else{
        if (numberOfOperation == 15) numberOfOperation = 0;
        numberOfOperation++;
      }
      emit(AppIncrement());
    }
    else {
    if (numberOfOperation == 15) numberOfOperation = 0;
    numberOfOperation++;
    emit(AppIncrement());
  }
  }

  incrementCorrectAnswer() {
    correctAnswer++;
    emit(AppIncrementCorrectAnswer());
  }

  incrementWrongAnswer() {
    wrongAnswer++;
    emit(AppIncrementWrongAnswer());
  }


  playAudio(numOfVar){
    Text('${(numOfVar==1)?audio.play(AssetSource('1.mp3')):
    (numOfVar==2)?audio.play(AssetSource('2.mp3')):
    (numOfVar==3)?audio.play(AssetSource('3.mp3')):
    (numOfVar==4)?audio.play(AssetSource('4.mp3')):
    (numOfVar==5)?audio.play(AssetSource('5.mp3')):
    (numOfVar==6)?audio.play(AssetSource('6.mp3')):
    (numOfVar==7)?audio.play(AssetSource('7.mp3')):
    (numOfVar==8)?audio.play(AssetSource('8.mp3')):
    (numOfVar==9)?audio.play(AssetSource('9.mp3')):
    (numOfVar==10)?audio.play(AssetSource('10.mp3')):
    (numOfVar==11)?audio.play(AssetSource('11.mp3')):
    (numOfVar==12)?audio.play(AssetSource('12.mp3')):
    (numOfVar==13)?audio.play(AssetSource('13.mp3')):
    (numOfVar==14)?audio.play(AssetSource('14.mp3')):
    (numOfVar==15)?audio.play(AssetSource('15.mp3')):
    (numOfVar==16)?audio.play(AssetSource('16.mp3')):
    (numOfVar==17)?audio.play(AssetSource('17.mp3')):
    (numOfVar==18)?audio.play(AssetSource('18.mp3')):
    (numOfVar==19)?audio.play(AssetSource('19.mp3')):
    (numOfVar==20)?audio.play(AssetSource('20.mp3')):
    (numOfVar==21)?audio.play(AssetSource('21.mp3')):
    (numOfVar==22)?audio.play(AssetSource('22.mp3')):
    (numOfVar==23)?audio.play(AssetSource('23.mp3')):
    (numOfVar==24)?audio.play(AssetSource('24.mp3')):
    (numOfVar==25)?audio.play(AssetSource('25.mp3')):
    (numOfVar==26)?audio.play(AssetSource('26.mp3')):
    (numOfVar==27)?audio.play(AssetSource('27.mp3')):
    (numOfVar==28)?audio.play(AssetSource('28.mp3')):
    (numOfVar==29)?audio.play(AssetSource('29.mp3')):
    (numOfVar==30)?audio.play(AssetSource('30.mp3')):
    (numOfVar==31)?audio.play(AssetSource('31.mp3')):
    (numOfVar==32)?audio.play(AssetSource('32.mp3')):
    (numOfVar==33)?audio.play(AssetSource('33.mp3')):
    (numOfVar==34)?audio.play(AssetSource('34.mp3')):
    (numOfVar==35)?audio.play(AssetSource('35.mp3')):
    (numOfVar==36)?audio.play(AssetSource('36.mp3')):
    (numOfVar==37)?audio.play(AssetSource('37.mp3')):
    (numOfVar==38)?audio.play(AssetSource('38.mp3')):
    (numOfVar==39)?audio.play(AssetSource('39.mp3')):
    (numOfVar==40)?audio.play(AssetSource('40.mp3')):
    (numOfVar==41)?audio.play(AssetSource('41.mp3')):
    (numOfVar==42)?audio.play(AssetSource('42.mp3')):
    (numOfVar==43)?audio.play(AssetSource('43.mp3')):
    (numOfVar==45)?audio.play(AssetSource('45.mp3')):
    (numOfVar==46)?audio.play(AssetSource('46.mp3')):
    (numOfVar==47)?audio.play(AssetSource('47.mp3')):
    (numOfVar==48)?audio.play(AssetSource('48.mp3')):
    (numOfVar==49)?audio.play(AssetSource('49.mp3')):
    (numOfVar==50)?audio.play(AssetSource('50.mp3')):
    (numOfVar==51)?audio.play(AssetSource('51.mp3')):
    (numOfVar==52)?audio.play(AssetSource('52.mp3')):
    (numOfVar==53)?audio.play(AssetSource('53.mp3')):
    (numOfVar==54)?audio.play(AssetSource('54.mp3')):
    (numOfVar==55)?audio.play(AssetSource('55.mp3')):
    (numOfVar==56)?audio.play(AssetSource('56.mp3')):
    (numOfVar==57)?audio.play(AssetSource('57.mp3')):
    (numOfVar==58)?audio.play(AssetSource('58.mp3')):
    (numOfVar==59)?audio.play(AssetSource('59.mp3')):
    (numOfVar==60)?audio.play(AssetSource('60.mp3')):
    (numOfVar==61)?audio.play(AssetSource('61.mp3')):
    (numOfVar==62)?audio.play(AssetSource('62.mp3')):
    (numOfVar==63)?audio.play(AssetSource('63.mp3')):
    (numOfVar==64)?audio.play(AssetSource('64.mp3')):
    (numOfVar==65)?audio.play(AssetSource('65.mp3')):
    (numOfVar==66)?audio.play(AssetSource('66.mp3')):
    (numOfVar==67)?audio.play(AssetSource('67.mp3')):
    (numOfVar==68)?audio.play(AssetSource('68.mp3')):
    (numOfVar==69)?audio.play(AssetSource('69.mp3')):
    (numOfVar==70)?audio.play(AssetSource('70.mp3')):
    (numOfVar==71)?audio.play(AssetSource('71.mp3')):
    (numOfVar==72)?audio.play(AssetSource('72.mp3')):
    (numOfVar==73)?audio.play(AssetSource('73.mp3')):
    (numOfVar==74)?audio.play(AssetSource('74.mp3')):
    (numOfVar==75)?audio.play(AssetSource('75.mp3')):
    (numOfVar==76)?audio.play(AssetSource('76.mp3')):
    (numOfVar==77)?audio.play(AssetSource('77.mp3')):
    (numOfVar==78)?audio.play(AssetSource('78.mp3')):
    (numOfVar==79)?audio.play(AssetSource('79.mp3')):
    (numOfVar==80)?audio.play(AssetSource('80.mp3')):
    (numOfVar==81)?audio.play(AssetSource('81.mp3')):
    (numOfVar==82)?audio.play(AssetSource('82.mp3')):
    (numOfVar==83)?audio.play(AssetSource('83.mp3')):
    (numOfVar==84)?audio.play(AssetSource('84.mp3')):
    (numOfVar==85)?audio.play(AssetSource('85.mp3')):
    (numOfVar==86)?audio.play(AssetSource('86.mp3')):
    (numOfVar==87)?audio.play(AssetSource('87.mp3')):
    (numOfVar==88)?audio.play(AssetSource('88.mp3')):
    (numOfVar==89)?audio.play(AssetSource('89.mp3')):
    (numOfVar==90)?audio.play(AssetSource('90.mp3')):
    (numOfVar==91)?audio.play(AssetSource('91.mp3')):
    (numOfVar==92)?audio.play(AssetSource('92.mp3')):
    (numOfVar==93)?audio.play(AssetSource('93.mp3')):
    (numOfVar==94)?audio.play(AssetSource('94.mp3')):
    (numOfVar==95)?audio.play(AssetSource('95.mp3')):
    (numOfVar==96)?audio.play(AssetSource('96.mp3')):
    (numOfVar==97)?audio.play(AssetSource('97.mp3')):
    (numOfVar==98)?audio.play(AssetSource('98.mp3')):
    (numOfVar==99)?audio.play(AssetSource('99.mp3')):''}');
  }

  playAudioForMinus(numOfVar){
    Text('${(numOfVar==1)?audio.play(AssetSource('minus1.mp3')):
    (numOfVar==2)?audio.play(AssetSource('minus2.mp3')):
    (numOfVar==3)?audio.play(AssetSource('minus3.mp3')):
    (numOfVar==4)?audio.play(AssetSource('minus4.mp3')):
    (numOfVar==5)?audio.play(AssetSource('minus5.mp3')):
    (numOfVar==6)?audio.play(AssetSource('minus6.mp3')):
    (numOfVar==7)?audio.play(AssetSource('minus7.mp3')):
    (numOfVar==8)?audio.play(AssetSource('minus8.mp3')):
    (numOfVar==9)?audio.play(AssetSource('minus9.mp3')):
    (numOfVar==10)?audio.play(AssetSource('minus10.mp3')):
    (numOfVar==11)?audio.play(AssetSource('minus11.mp3')):
    (numOfVar==12)?audio.play(AssetSource('minus12.mp3')):
    (numOfVar==13)?audio.play(AssetSource('minus13.mp3')):
    (numOfVar==14)?audio.play(AssetSource('minus14.mp3')):
    (numOfVar==15)?audio.play(AssetSource('minus15.mp3')):
    (numOfVar==16)?audio.play(AssetSource('minus16.mp3')):
    (numOfVar==17)?audio.play(AssetSource('minus17.mp3')):
    (numOfVar==18)?audio.play(AssetSource('minus18.mp3')):
    (numOfVar==19)?audio.play(AssetSource('minus19.mp3')):
    (numOfVar==20)?audio.play(AssetSource('minus20.mp3')):
    (numOfVar==21)?audio.play(AssetSource('minus21.mp3')):
    (numOfVar==22)?audio.play(AssetSource('minus22.mp3')):
    (numOfVar==23)?audio.play(AssetSource('minus23.mp3')):
    (numOfVar==24)?audio.play(AssetSource('minus24.mp3')):
    (numOfVar==25)?audio.play(AssetSource('minus25.mp3')):
    (numOfVar==26)?audio.play(AssetSource('minus26.mp3')):
    (numOfVar==27)?audio.play(AssetSource('minus27.mp3')):
    (numOfVar==28)?audio.play(AssetSource('minus28.mp3')):
    (numOfVar==29)?audio.play(AssetSource('minus29.mp3')):
    (numOfVar==30)?audio.play(AssetSource('minus30.mp3')):
    (numOfVar==31)?audio.play(AssetSource('minus31.mp3')):
    (numOfVar==32)?audio.play(AssetSource('minus32.mp3')):
    (numOfVar==33)?audio.play(AssetSource('minus33.mp3')):
    (numOfVar==34)?audio.play(AssetSource('minus34.mp3')):
    (numOfVar==35)?audio.play(AssetSource('minus35.mp3')):
    (numOfVar==36)?audio.play(AssetSource('minus36.mp3')):
    (numOfVar==37)?audio.play(AssetSource('minus37.mp3')):
    (numOfVar==38)?audio.play(AssetSource('minus38.mp3')):
    (numOfVar==39)?audio.play(AssetSource('minus39.mp3')):
    (numOfVar==40)?audio.play(AssetSource('minus40.mp3')):
    (numOfVar==41)?audio.play(AssetSource('minus41.mp3')):
    (numOfVar==42)?audio.play(AssetSource('minus42.mp3')):
    (numOfVar==43)?audio.play(AssetSource('minus43.mp3')):
    (numOfVar==45)?audio.play(AssetSource('minus45.mp3')):
    (numOfVar==46)?audio.play(AssetSource('minus46.mp3')):
    (numOfVar==47)?audio.play(AssetSource('minus47.mp3')):
    (numOfVar==48)?audio.play(AssetSource('minus48.mp3')):
    (numOfVar==49)?audio.play(AssetSource('minus49.mp3')):
    (numOfVar==50)?audio.play(AssetSource('minus50.mp3')):
    (numOfVar==51)?audio.play(AssetSource('minus51.mp3')):
    (numOfVar==52)?audio.play(AssetSource('minus52.mp3')):
    (numOfVar==53)?audio.play(AssetSource('minus53.mp3')):
    (numOfVar==54)?audio.play(AssetSource('minus54.mp3')):
    (numOfVar==55)?audio.play(AssetSource('minus55.mp3')):
    (numOfVar==56)?audio.play(AssetSource('minus56.mp3')):
    (numOfVar==57)?audio.play(AssetSource('minus57.mp3')):
    (numOfVar==58)?audio.play(AssetSource('minus58.mp3')):
    (numOfVar==59)?audio.play(AssetSource('minus59.mp3')):
    (numOfVar==60)?audio.play(AssetSource('minus60.mp3')):
    (numOfVar==61)?audio.play(AssetSource('minus61.mp3')):
    (numOfVar==62)?audio.play(AssetSource('minus62.mp3')):
    (numOfVar==63)?audio.play(AssetSource('minus63.mp3')):
    (numOfVar==64)?audio.play(AssetSource('minus64.mp3')):
    (numOfVar==65)?audio.play(AssetSource('minus65.mp3')):
    (numOfVar==66)?audio.play(AssetSource('minus66.mp3')):
    (numOfVar==67)?audio.play(AssetSource('minus67.mp3')):
    (numOfVar==68)?audio.play(AssetSource('minus68.mp3')):
    (numOfVar==69)?audio.play(AssetSource('minus69.mp3')):
    (numOfVar==70)?audio.play(AssetSource('minus70.mp3')):
    (numOfVar==71)?audio.play(AssetSource('minus71.mp3')):
    (numOfVar==72)?audio.play(AssetSource('minus72.mp3')):
    (numOfVar==73)?audio.play(AssetSource('minus73.mp3')):
    (numOfVar==74)?audio.play(AssetSource('minus74.mp3')):
    (numOfVar==75)?audio.play(AssetSource('minus75.mp3')):
    (numOfVar==76)?audio.play(AssetSource('minus76.mp3')):
    (numOfVar==77)?audio.play(AssetSource('minus77.mp3')):
    (numOfVar==78)?audio.play(AssetSource('minus78.mp3')):
    (numOfVar==79)?audio.play(AssetSource('minus79.mp3')):
    (numOfVar==80)?audio.play(AssetSource('minus80.mp3')):
    (numOfVar==81)?audio.play(AssetSource('minus81.mp3')):
    (numOfVar==82)?audio.play(AssetSource('minus82.mp3')):
    (numOfVar==83)?audio.play(AssetSource('minus83.mp3')):
    (numOfVar==84)?audio.play(AssetSource('minus84.mp3')):
    (numOfVar==85)?audio.play(AssetSource('minus85.mp3')):
    (numOfVar==86)?audio.play(AssetSource('minus86.mp3')):
    (numOfVar==87)?audio.play(AssetSource('minus87.mp3')):
    (numOfVar==88)?audio.play(AssetSource('minus88.mp3')):
    (numOfVar==89)?audio.play(AssetSource('minus89.mp3')):
    (numOfVar==90)?audio.play(AssetSource('minus90.mp3')):
    (numOfVar==91)?audio.play(AssetSource('minus91.mp3')):
    (numOfVar==92)?audio.play(AssetSource('minus92.mp3')):
    (numOfVar==93)?audio.play(AssetSource('minus93.mp3')):
    (numOfVar==94)?audio.play(AssetSource('minus94.mp3')):
    (numOfVar==95)?audio.play(AssetSource('minus95.mp3')):
    (numOfVar==96)?audio.play(AssetSource('minus96.mp3')):
    (numOfVar==97)?audio.play(AssetSource('minus97.mp3')):
    (numOfVar==98)?audio.play(AssetSource('minus98.mp3')):
    (numOfVar==99)?audio.play(AssetSource('minus99.mp3')):''}');
  }

  choseStudyExample(int x){

    switch (x) {
      case 1:
        studyVar1=8;
        studyVar2=1;
        studyVar3=-5;
        studyVar4=1;
        studyVar5=2;
        studyVar6=-6;
        studyVar7=3;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 2:
        studyVar1=9;
        studyVar2=-5;
        studyVar3=1;
        studyVar4=3;
        studyVar5=-6;
        studyVar6=2;
        studyVar7=1;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 3:
        studyVar1=2;
        studyVar2=2;
        studyVar3=1;
        studyVar4=3;
        studyVar5=-6;
        studyVar6=2;
        studyVar7=-3;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 4:
        studyVar1=6;
        studyVar2=3;
        studyVar3=-5;
        studyVar4=1;
        studyVar5=3;
        studyVar6=-2;
        studyVar7=-5;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 5:
        studyVar1=4;
        studyVar2=1;
        studyVar3=2;
        studyVar4=-6;
        studyVar5=8;
        studyVar6=-9;
        studyVar7=3;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 6:
        studyVar1=3;
        studyVar2=1;
        studyVar3=1;
        studyVar4=2;
        studyVar5=-6;
        studyVar6=7;
        studyVar7=1;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 7:
        studyVar1=9;
        studyVar2=-3;
        studyVar3=-5;
        studyVar4=3;
        studyVar5=1;
        studyVar6=3;
        studyVar7=-6;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 8:
        studyVar1=2;
        studyVar2=2;
        studyVar3=1;
        studyVar4=3;
        studyVar5=-5;
        studyVar6=1;
        studyVar7=-4;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 9:
        studyVar1=1;
        studyVar2=3;
        studyVar3=1;
        studyVar4=-5;
        studyVar5=3;
        studyVar6=1;
        studyVar7=-3;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 10:
        studyVar1=5;
        studyVar2=4;
        studyVar3=-5;
        studyVar4=1;
        studyVar5=3;
        studyVar6=-1;
        studyVar7=-1;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 11:
        studyVar1=2;
        studyVar2=2;
        studyVar3=1;
        studyVar4=3;
        studyVar5=-6;
        studyVar6=2;
        studyVar7=1;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 12:
        studyVar1=1;
        studyVar2=3;
        studyVar3=-4;
        studyVar4=2;
        studyVar5=1;
        studyVar6=1;
        studyVar7=1;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 13:
        studyVar1=9;
        studyVar2=-5;
        studyVar3=1;
        studyVar4=3;
        studyVar5=-8;
        studyVar6=6;
        studyVar7=3;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 14:
        studyVar1=7;
        studyVar2=2;
        studyVar3=-6;
        studyVar4=1;
        studyVar5=1;
        studyVar6=3;
        studyVar7=-7;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 15:
        studyVar1=8;
        studyVar2=1;
        studyVar3=-5;
        studyVar4=1;
        studyVar5=3;
        studyVar6=-7;
        studyVar7=2;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 16:
        studyVar1=4;
        studyVar2=1;
        studyVar3=3;
        studyVar4=-7;
        studyVar5=3;
        studyVar6=1;
        studyVar7=1;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 17:
        studyVar1=5;
        studyVar2=2;
        studyVar3=-7;
        studyVar4=4;
        studyVar5=1;
        studyVar6=2;
        studyVar7=-6;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 18:
        studyVar1=1;
        studyVar2=8;
        studyVar3=-5;
        studyVar4=1;
        studyVar5=3;
        studyVar6=-6;
        studyVar7=7;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 19:
        studyVar1=6;
        studyVar2=3;
        studyVar3=-5;
        studyVar4=1;
        studyVar5=3;
        studyVar6=-3;
        studyVar7=4;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 20:
        studyVar1=3;
        studyVar2=1;
        studyVar3=1;
        studyVar4=3;
        studyVar5=-7;
        studyVar6=3;
        studyVar7=1;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 21:
        studyVar1=3;
        studyVar2=1;
        studyVar3=1;
        studyVar4=-5;
        studyVar5=6;
        studyVar6=2;
        studyVar7=-2;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 22:
        studyVar1=5;
        studyVar2=1;
        studyVar3=3;
        studyVar4=-5;
        studyVar5=1;
        studyVar6=3;
        studyVar7=-7;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 23:
        studyVar1=7;
        studyVar2=2;
        studyVar3=-5;
        studyVar4=1;
        studyVar5=4;
        studyVar6=-5;
        studyVar7=-3;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 24:
        studyVar1=2;
        studyVar2=2;
        studyVar3=1;
        studyVar4=-5;
        studyVar5=7;
        studyVar6=1;
        studyVar7=-7;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 25:
        studyVar1=4;
        studyVar2=1;
        studyVar3=1;
        studyVar4=-6;
        studyVar5=8;
        studyVar6=-2;
        studyVar7=3;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 26:
        studyVar1=6;
        studyVar2=2;
        studyVar3=1;
        studyVar4=-5;
        studyVar5=1;
        studyVar6=2;
        studyVar7=-7;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 27:
        studyVar1=8;
        studyVar2=-5;
        studyVar3=1;
        studyVar4=1;
        studyVar5=1;
        studyVar6=1;
        studyVar7=-2;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 28:
        studyVar1=9;
        studyVar2=-4;
        studyVar3=4;
        studyVar4=-5;
        studyVar5=1;
        studyVar6=2;
        studyVar7=-6;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 29:
        studyVar1=8;
        studyVar2=1;
        studyVar3=-5;
        studyVar4=1;
        studyVar5=4;
        studyVar6=-8;
        studyVar7=2;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 30:
        studyVar1=7;
        studyVar2=1;
        studyVar3=1;
        studyVar4=-5;
        studyVar5=1;
        studyVar6=4;
        studyVar7=-8;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 31:
        studyVar1=6;
        studyVar2=3;
        studyVar3=-5;
        studyVar4=1;
        studyVar5=1;
        studyVar6=2;
        studyVar7=-5;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 32:
        studyVar1=7;
        studyVar2=2;
        studyVar3=-5;
        studyVar4=1;
        studyVar5=3;
        studyVar6=-7;
        studyVar7=3;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 33:
        studyVar1=8;
        studyVar2=-5;
        studyVar3=1;
        studyVar4=1;
        studyVar5=3;
        studyVar6=-6;
        studyVar7=5;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 34:
        studyVar1=9;
        studyVar2=-5;
        studyVar3=1;
        studyVar4=4;
        studyVar5=-8;
        studyVar6=-1;
        studyVar7=3;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 35:
        studyVar1=1;
        studyVar2=3;
        studyVar3=1;
        studyVar4=4;
        studyVar5=-8;
        studyVar6=7;
        studyVar7=1;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 36:
        studyVar1=6;
        studyVar2=2;
        studyVar3=-7;
        studyVar4=8;
        studyVar5=-5;
        studyVar6=2;
        studyVar7=-1;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 37:
        studyVar1=7;
        studyVar2=2;
        studyVar3=-5;
        studyVar4=2;
        studyVar5=-1;
        studyVar6=-5;
        studyVar7=3;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 38:
        studyVar1=8;
        studyVar2=1;
        studyVar3=-5;
        studyVar4=2;
        studyVar5=2;
        studyVar6=-8;
        studyVar7=2;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 39:
        studyVar1=9;
        studyVar2=-4;
        studyVar3=-5;
        studyVar4=3;
        studyVar5=1;
        studyVar6=2;
        studyVar7=-5;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 40:
        studyVar1=1;
        studyVar2=3;
        studyVar3=2;
        studyVar4=-1;
        studyVar5=4;
        studyVar6=-6;
        studyVar7=5;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      default:
        print('Unknown fruit.');
    }
    emit(ChoseState());
  }

  choseStudyExampleForPlus2(int x){

    switch (x) {
      case 1:
        studyVar1=2;
        studyVar2=5;
        studyVar3=1;
        studyVar4=-5;
        studyVar5=2;
        studyVar6=3;
        studyVar7=-8;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 2:
        studyVar1=3;
        studyVar2=5;
        studyVar3=-6;
        studyVar4=2;
        studyVar5=2;
        studyVar6=-1;
        studyVar7=3;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 3:
        studyVar1=4;
        studyVar2=2;
        studyVar3=2;
        studyVar4=-7;
        studyVar5=1;
        studyVar6=5;
        studyVar7=-1;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 4:
        studyVar1=5;
        studyVar2=3;
        studyVar3=1;
        studyVar4=-6;
        studyVar5=2;
        studyVar6=-5;
        studyVar7=2;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 5:
        studyVar1=6;
        studyVar2=3;
        studyVar3=-6;
        studyVar4=2;
        studyVar5=-5;
        studyVar6=4;
        studyVar7=2;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 6:
        studyVar1=7;
        studyVar2=1;
        studyVar3=-5;
        studyVar4=2;
        studyVar5=3;
        studyVar6=-2;
        studyVar7=-5;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 7:
        studyVar1=8;
        studyVar2=1;
        studyVar3=-6;
        studyVar4=2;
        studyVar5=-5;
        studyVar6=4;
        studyVar7=2;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 8:
        studyVar1=9;
        studyVar2=-6;
        studyVar3=2;
        studyVar4=2;
        studyVar5=-7;
        studyVar6=8;
        studyVar7=1;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 9:
        studyVar1=5;
        studyVar2=4;
        studyVar3=-5;
        studyVar4=2;
        studyVar5=2;
        studyVar6=-8;
        studyVar7=5;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 10:
        studyVar1=7;
        studyVar2=2;
        studyVar3=-6;
        studyVar4=2;
        studyVar5=3;
        studyVar6=-8;
        studyVar7=7;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 11:
        studyVar1=2;
        studyVar2=5;
        studyVar3=2;
        studyVar4=-6;
        studyVar5=2;
        studyVar6=3;
        studyVar7=-5;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 12:
        studyVar1=1;
        studyVar2=8;
        studyVar3=-7;
        studyVar4=2;
        studyVar5=2;
        studyVar6=2;
        studyVar7=-6;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 13:
        studyVar1=9;
        studyVar2=-3;
        studyVar3=-5;
        studyVar4=8;
        studyVar5=-5;
        studyVar6=2;
        studyVar7=1;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 14:
        studyVar1=8;
        studyVar2=-5;
        studyVar3=2;
        studyVar4=3;
        studyVar5=-6;
        studyVar6=2;
        studyVar7=2;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 15:
        studyVar1=7;
        studyVar2=2;
        studyVar3=-5;
        studyVar4=2;
        studyVar5=-1;
        studyVar6=3;
        studyVar7=-7;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 16:
        studyVar1=6;
        studyVar2=3;
        studyVar3=-4;
        studyVar4=-5;
        studyVar5=4;
        studyVar6=2;
        studyVar7=3;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 17:
        studyVar1=5;
        studyVar2=4;
        studyVar3=-5;
        studyVar4=2;
        studyVar5=-1;
        studyVar6=-5;
        studyVar7=-7;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 18:
        studyVar1=4;
        studyVar2=2;
        studyVar3=-1;
        studyVar4=4;
        studyVar5=-5;
        studyVar6=2;
        studyVar7=-6;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 19:
        studyVar1=3;
        studyVar2=2;
        studyVar3=4;
        studyVar4=-4;
        studyVar5=2;
        studyVar6=-7;
        studyVar7=6;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 20:
        studyVar1=2;
        studyVar2=2;
        studyVar3=2;
        studyVar4=-5;
        studyVar5=3;
        studyVar6=2;
        studyVar7=-5;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 21:
        studyVar1=1;
        studyVar2=7;
        studyVar3=1;
        studyVar4=-5;
        studyVar5=1;
        studyVar6=-5;
        studyVar7=3;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 22:
        studyVar1=9;
        studyVar2=-5;
        studyVar3=1;
        studyVar4=2;
        studyVar5=-7;
        studyVar6=8;
        studyVar7=-6;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 23:
        studyVar1=7;
        studyVar2=2;
        studyVar3=-3;
        studyVar4=-5;
        studyVar5=3;
        studyVar6=1;
        studyVar7=2;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 24:
        studyVar1=5;
        studyVar2=2;
        studyVar3=2;
        studyVar4=-5;
        studyVar5=1;
        studyVar6=3;
        studyVar7=-8;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 25:
        studyVar1=4;
        studyVar2=1;
        studyVar3=2;
        studyVar4=-6;
        studyVar5=8;
        studyVar6=-3;
        studyVar7=-1;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 26:
        studyVar1=4;
        studyVar2=2;
        studyVar3=3;
        studyVar4=-4;
        studyVar5=-5;
        studyVar6=7;
        studyVar7=1;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 27:
        studyVar1=1;
        studyVar2=3;
        studyVar3=2;
        studyVar4=-6;
        studyVar5=8;
        studyVar6=2;
        studyVar7=3;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 28:
        studyVar1=3;
        studyVar2=-2;
        studyVar3=8;
        studyVar4=-5;
        studyVar5=2;
        studyVar6=-1;
        studyVar7=1;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 29:
        studyVar1=2;
        studyVar2=2;
        studyVar3=2;
        studyVar4=3;
        studyVar5=-6;
        studyVar6=-2;
        studyVar7=3;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 30:
        studyVar1=5;
        studyVar2=3;
        studyVar3=-5;
        studyVar4=2;
        studyVar5=-5;
        studyVar6=8;
        studyVar7=-7;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 31:
        studyVar1=9;
        studyVar2=-4;
        studyVar3=-5;
        studyVar4=8;
        studyVar5=-5;
        studyVar6=2;
        studyVar7=1;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 32:
        studyVar1=4;
        studyVar2=2;
        studyVar3=-1;
        studyVar4=-5;
        studyVar5=8;
        studyVar6=-2;
        studyVar7=-5;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 33:
        studyVar1=6;
        studyVar2=3;
        studyVar3=-6;
        studyVar4=2;
        studyVar5=3;
        studyVar6=-7;
        studyVar7=3;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 34:
        studyVar1=8;
        studyVar2=1;
        studyVar3=-5;
        studyVar4=2;
        studyVar5=-1;
        studyVar6=-5;
        studyVar7=6;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 35:
        studyVar1=3;
        studyVar2=1;
        studyVar3=2;
        studyVar4=-5;
        studyVar5=3;
        studyVar6=2;
        studyVar7=-5;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 36:
        studyVar1=1;
        studyVar2=8;
        studyVar3=-4;
        studyVar4=3;
        studyVar5=-5;
        studyVar6=2;
        studyVar7=3;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 37:
        studyVar1=1;
        studyVar2=8;
        studyVar3=-5;
        studyVar4=2;
        studyVar5=2;
        studyVar6=1;
        studyVar7=-9;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 38:
        studyVar1=5;
        studyVar2=3;
        studyVar3=-5;
        studyVar4=2;
        studyVar5=4;
        studyVar6=-6;
        studyVar7=-2;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 39:
        studyVar1=2;
        studyVar2=2;
        studyVar3=2;
        studyVar4=3;
        studyVar5=-8;
        studyVar6=1;
        studyVar7=-2;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 40:
        studyVar1=7;
        studyVar2=-1;
        studyVar3=3;
        studyVar4=-5;
        studyVar5=2;
        studyVar6=-1;
        studyVar7=4;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      default:
        print('Unknown fruit.');
    }
    emit(ChoseState());
  }

  choseStudyExampleForPlus3(int x){

    switch (x) {
      case 1:
        studyVar1=7;
        studyVar2=2;
        studyVar3=-5;
        studyVar4=3;
        studyVar5=2;
        studyVar6=-7;
        studyVar7=3;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 2:
        studyVar1=6;
        studyVar2=3;
        studyVar3=-7;
        studyVar4=3;
        studyVar5=4;
        studyVar6=-8;
        studyVar7=6;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 3:
        studyVar1=9;
        studyVar2=-5;
        studyVar3=3;
        studyVar4=-6;
        studyVar5=8;
        studyVar6=-4;
        studyVar7=1;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 4:
        studyVar1=8;
        studyVar2=1;
        studyVar3=-7;
        studyVar4=3;
        studyVar5=4;
        studyVar6=-6;
        studyVar7=3;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 5:
        studyVar1=1;
        studyVar2=8;
        studyVar3=-7;
        studyVar4=3;
        studyVar5=4;
        studyVar6=-8;
        studyVar7=7;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 6:
        studyVar1=2;
        studyVar2=5;
        studyVar3=-6;
        studyVar4=3;
        studyVar5=3;
        studyVar6=-6;
        studyVar7=8;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 7:
        studyVar1=3;
        studyVar2=3;
        studyVar3=-5;
        studyVar4=8;
        studyVar5=-9;
        studyVar6=4;
        studyVar7=3;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 8:
        studyVar1=4;
        studyVar2=3;
        studyVar3=-1;
        studyVar4=3;
        studyVar5=-8;
        studyVar6=7;
        studyVar7=-3;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 9:
        studyVar1=5;
        studyVar2=4;
        studyVar3=-3;
        studyVar4=-5;
        studyVar5=8;
        studyVar6=-6;
        studyVar7=3;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 10:
        studyVar1=6;
        studyVar2=2;
        studyVar3=-6;
        studyVar4=3;
        studyVar5=4;
        studyVar6=-5;
        studyVar7=3;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 11:
        studyVar1=4;
        studyVar2=3;
        studyVar3=-5;
        studyVar4=7;
        studyVar5=-8;
        studyVar6=7;
        studyVar7=-5;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 12:
        studyVar1=6;
        studyVar2=2;
        studyVar3=1;
        studyVar4=-7;
        studyVar5=3;
        studyVar6=4;
        studyVar7=-5;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 13:
        studyVar1=8;
        studyVar2=1;
        studyVar3=-7;
        studyVar4=3;
        studyVar5=4;
        studyVar6=-8;
        studyVar7=7;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 14:
        studyVar1=1;
        studyVar2=7;
        studyVar3=-5;
        studyVar4=3;
        studyVar5=-1;
        studyVar6=4;
        studyVar7=-8;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 15:
        studyVar1=3;
        studyVar2=1;
        studyVar3=3;
        studyVar4=2;
        studyVar5=-8;
        studyVar6=-1;
        studyVar7=-5;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 16:
        studyVar1=5;
        studyVar2=4;
        studyVar3=-7;
        studyVar4=3;
        studyVar5=4;
        studyVar6=-7;
        studyVar7=3;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 17:
        studyVar1=7;
        studyVar2=2;
        studyVar3=-6;
        studyVar4=3;
        studyVar5=3;
        studyVar6=-9;
        studyVar7=4;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 18:
        studyVar1=9;
        studyVar2=-1;
        studyVar3=-5;
        studyVar4=3;
        studyVar5=3;
        studyVar6=-9;
        studyVar7=-7;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 19:
        studyVar1=1;
        studyVar2=6;
        studyVar3=2;
        studyVar4=-8;
        studyVar5=1;
        studyVar6=3;
        studyVar7=4;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 20:
        studyVar1=2;
        studyVar2=7;
        studyVar3=-5;
        studyVar4=3;
        studyVar5=-6;
        studyVar6=3;
        studyVar7=3;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 21:
        studyVar1=8;
        studyVar2=1;
        studyVar3=-2;
        studyVar4=-5;
        studyVar5=3;
        studyVar6=4;
        studyVar7=-8;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 22:
        studyVar1=9;
        studyVar2=-4;
        studyVar3=3;
        studyVar4=-6;
        studyVar5=3;
        studyVar6=4;
        studyVar7=-7;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 23:
        studyVar1=1;
        studyVar2=3;
        studyVar3=3;
        studyVar4=-2;
        studyVar5=4;
        studyVar6=-8;
        studyVar7=1;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 24:
        studyVar1=1;
        studyVar2=8;
        studyVar3=-7;
        studyVar4=3;
        studyVar5=4;
        studyVar6=-8;
        studyVar7=2;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 25:
        studyVar1=9;
        studyVar2=-4;
        studyVar3=3;
        studyVar4=-6;
        studyVar5=3;
        studyVar6=4;
        studyVar7=-8;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 26:
        studyVar1=8;
        studyVar2=1;
        studyVar3=-4;
        studyVar4=3;
        studyVar5=-6;
        studyVar6=3;
        studyVar7=4;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 27:
        studyVar1=7;
        studyVar2=2;
        studyVar3=-8;
        studyVar4=2;
        studyVar5=3;
        studyVar6=3;
        studyVar7=-6;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 28:
        studyVar1=6;
        studyVar2=3;
        studyVar3=-8;
        studyVar4=2;
        studyVar5=3;
        studyVar6=3;
        studyVar7=-5;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 29:
        studyVar1=5;
        studyVar2=2;
        studyVar3=-5;
        studyVar4=3;
        studyVar5=4;
        studyVar6=-9;
        studyVar7=2;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 30:
        studyVar1=4;
        studyVar2=3;
        studyVar3=1;
        studyVar4=-6;
        studyVar5=-1;
        studyVar6=3;
        studyVar7=3;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 31:
        studyVar1=7;
        studyVar2=2;
        studyVar3=-7;
        studyVar4=3;
        studyVar5=-5;
        studyVar6=7;
        studyVar7=1;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 32:
        studyVar1=8;
        studyVar2=1;
        studyVar3=-7;
        studyVar4=3;
        studyVar5=4;
        studyVar6=-6;
        studyVar7=-2;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 33:
        studyVar1=9;
        studyVar2=-4;
        studyVar3=3;
        studyVar4=-5;
        studyVar5=3;
        studyVar6=3;
        studyVar7=-9;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 34:
        studyVar1=1;
        studyVar2=6;
        studyVar3=2;
        studyVar4=-7;
        studyVar5=3;
        studyVar6=3;
        studyVar7=-6;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 35:
        studyVar1=2;
        studyVar2=2;
        studyVar3=3;
        studyVar4=-1;
        studyVar5=-5;
        studyVar6=8;
        studyVar7=-8;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 36:
        studyVar1=3;
        studyVar2=5;
        studyVar3=-5;
        studyVar4=3;
        studyVar5=3;
        studyVar6=-7;
        studyVar7=6;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 37:
        studyVar1=4;
        studyVar2=5;
        studyVar3=-9;
        studyVar4=4;
        studyVar5=3;
        studyVar6=-5;
        studyVar7=3;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 38:
        studyVar1=5;
        studyVar2=4;
        studyVar3=-2;
        studyVar4=-5;
        studyVar5=3;
        studyVar6=4;
        studyVar7=-6;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 39:
        studyVar1=6;
        studyVar2=2;
        studyVar3=1;
        studyVar4=-9;
        studyVar5=4;
        studyVar6=3;
        studyVar7=-1;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 40:
        studyVar1=7;
        studyVar2=2;
        studyVar3=-8;
        studyVar4=2;
        studyVar5=3;
        studyVar6=-5;
        studyVar7=3;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      default:
        print('Unknown fruit.');
    }
    emit(ChoseState());
  }

  choseStudyExampleForPlus4(int x){

    switch (x) {
      case 1:
        studyVar1=7;
        studyVar2=2;
        studyVar3=-3;
        studyVar4=-5;
        studyVar5=4;
        studyVar6=2;
        studyVar7=-7;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 2:
        studyVar1=8;
        studyVar2=-5;
        studyVar3=4;
        studyVar4=1;
        studyVar5=-3;
        studyVar6=-5;
        studyVar7=4;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 3:
        studyVar1=9;
        studyVar2=-5;
        studyVar3=4;
        studyVar4=-3;
        studyVar5=4;
        studyVar6=-9;
        studyVar7=7;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 4:
        studyVar1=1;
        studyVar2=3;
        studyVar3=4;
        studyVar4=-6;
        studyVar5=4;
        studyVar6=3;
        studyVar7=-3;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 5:
        studyVar1=9;
        studyVar2=-4;
        studyVar3=3;
        studyVar4=-6;
        studyVar5=4;
        studyVar6=3;
        studyVar7=-8;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 6:
        studyVar1=8;
        studyVar2=1;
        studyVar3=-3;
        studyVar4=-5;
        studyVar5=4;
        studyVar6=2;
        studyVar7=-7;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 7:
        studyVar1=7;
        studyVar2=2;
        studyVar3=-7;
        studyVar4=4;
        studyVar5=2;
        studyVar6=-5;
        studyVar7=4;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 8:
        studyVar1=6;
        studyVar2=3;
        studyVar3=-8;
        studyVar4=4;
        studyVar5=2;
        studyVar6=2;
        studyVar7=-8;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 9:
        studyVar1=5;
        studyVar2=1;
        studyVar3=-5;
        studyVar4=4;
        studyVar5=4;
        studyVar6=-7;
        studyVar7=5;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 10:
        studyVar1=4;
        studyVar2=5;
        studyVar3=-8;
        studyVar4=4;
        studyVar5=2;
        studyVar6=-1;
        studyVar7=-5;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 11:
        studyVar1=4;
        studyVar2=5;
        studyVar3=-4;
        studyVar4=1;
        studyVar5=-6;
        studyVar6=2;
        studyVar7=4;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 12:
        studyVar1=5;
        studyVar2=1;
        studyVar3=3;
        studyVar4=-6;
        studyVar5=-2;
        studyVar6=4;
        studyVar7=3;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 13:
        studyVar1=6;
        studyVar2=2;
        studyVar3=1;
        studyVar4=-7;
        studyVar5=4;
        studyVar6=-5;
        studyVar7=7;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 14:
        studyVar1=7;
        studyVar2=1;
        studyVar3=-3;
        studyVar4=4;
        studyVar5=-5;
        studyVar6=4;
        studyVar7=-2;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 15:
        studyVar1=8;
        studyVar2=1;
        studyVar3=-7;
        studyVar4=4;
        studyVar5=2;
        studyVar6=-3;
        studyVar7=-5;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 16:
        studyVar1=9;
        studyVar2=-5;
        studyVar3=4;
        studyVar4=-2;
        studyVar5=-5;
        studyVar6=4;
        studyVar7=3;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 17:
        studyVar1=1;
        studyVar2=7;
        studyVar3=-3;
        studyVar4=4;
        studyVar5=-5;
        studyVar6=4;
        studyVar7=-3;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 18:
        studyVar1=2;
        studyVar2=5;
        studyVar3=-1;
        studyVar4=-6;
        studyVar5=7;
        studyVar6=-5;
        studyVar7=4;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 19:
        studyVar1=3;
        studyVar2=4;
        studyVar3=1;
        studyVar4=-3;
        studyVar5=-3;
        studyVar6=4;
        studyVar7=4;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 20:
        studyVar1=4;
        studyVar2=5;
        studyVar3=-3;
        studyVar4=-5;
        studyVar5=4;
        studyVar6=2;
        studyVar7=-1;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 21:
        studyVar1=22;
        studyVar2=44;
        studyVar3=33;
        studyVar4=-44;
        studyVar5=22;
        studyVar6=-77;
        studyVar7=99;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 22:
        studyVar1=33;
        studyVar2=66;
        studyVar3=-55;
        studyVar4=44;
        studyVar5=-22;
        studyVar6=33;
        studyVar7=-88;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 23:
        studyVar1=44;
        studyVar2=44;
        studyVar3=-55;
        studyVar4=11;
        studyVar5=44;
        studyVar6=-33;
        studyVar7=22;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 24:
        studyVar1=55;
        studyVar2=22;
        studyVar3=22;
        studyVar4=-55;
        studyVar5=44;
        studyVar6=-33;
        studyVar7=44;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 25:
        studyVar1=66;
        studyVar2=-55;
        studyVar3=44;
        studyVar4=22;
        studyVar5=-66;
        studyVar6=33;
        studyVar7=44;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 26:
        studyVar1=55;
        studyVar2=11;
        studyVar3=11;
        studyVar4=-66;
        studyVar5=44;
        studyVar6=33;
        studyVar7=-88;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 27:
        studyVar1=66;
        studyVar2=22;
        studyVar3=-66;
        studyVar4=44;
        studyVar5=-11;
        studyVar6=44;
        studyVar7=-33;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 28:
        studyVar1=77;
        studyVar2=11;
        studyVar3=11;
        studyVar4=-88;
        studyVar5=44;
        studyVar6=-55;
        studyVar7=33;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 29:
        studyVar1=88;
        studyVar2=-22;
        studyVar3=-55;
        studyVar4=44;
        studyVar5=33;
        studyVar6=-22;
        studyVar7=-55;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 30:
        studyVar1=99;
        studyVar2=-33;
        studyVar3=-55;
        studyVar4=44;
        studyVar5=33;
        studyVar6=-77;
        studyVar7=44;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;

      default:
        print('Unknown fruit.');
    }
    emit(ChoseState());
  }

  choseStudyExampleForMinus1(int x){

    switch (x) {
      case 1:
        studyVar1=7;
        studyVar2=-2;
        studyVar3=-1;
        studyVar4=-2;
        studyVar5=7;
        studyVar6=-9;
        studyVar7=1;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 2:
        studyVar1=8;
        studyVar2=1;
        studyVar3=-3;
        studyVar4=-6;
        studyVar5=5;
        studyVar6=-1;
        studyVar7=-2;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 3:
        studyVar1=9;
        studyVar2=-4;
        studyVar3=-1;
        studyVar4=-3;
        studyVar5=6;
        studyVar6=-2;
        studyVar7=-1;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 4:
        studyVar1=2;
        studyVar2=2;
        studyVar3=5;
        studyVar4=-4;
        studyVar5=-1;
        studyVar6=-4;
        studyVar7=5;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 5:
        studyVar1=4;
        studyVar2=5;
        studyVar3=-3;
        studyVar4=-1;
        studyVar5=-1;
        studyVar6=5;
        studyVar7=-1;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 6:
        studyVar1=6;
        studyVar2=2;
        studyVar3=-3;
        studyVar4=-1;
        studyVar5=5;
        studyVar6=-8;
        studyVar7=1;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 7:
        studyVar1=8;
        studyVar2=-3;
        studyVar3=-1;
        studyVar4=-3;
        studyVar5=7;
        studyVar6=-8;
        studyVar7=4;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 8:
        studyVar1=1;
        studyVar2=3;
        studyVar3=5;
        studyVar4=-3;
        studyVar5=-6;
        studyVar6=5;
        studyVar7=-1;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 9:
        studyVar1=3;
        studyVar2=1;
        studyVar3=-3;
        studyVar4=5;
        studyVar5=-1;
        studyVar6=-1;
        studyVar7=5;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 10:
        studyVar1=5;
        studyVar2=4;
        studyVar3=-3;
        studyVar4=-5;
        studyVar5=-1;
        studyVar6=5;
        studyVar7=-1;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 11:
        studyVar1=1;
        studyVar2=8;
        studyVar3=-4;
        studyVar4=-5;
        studyVar5=4;
        studyVar6=4;
        studyVar7=-3;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 12:
        studyVar1=2;
        studyVar2=4;
        studyVar3=2;
        studyVar4=-6;
        studyVar5=4;
        studyVar6=3;
        studyVar7=-5;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 13:
        studyVar1=3;
        studyVar2=1;
        studyVar3=4;
        studyVar4=-3;
        studyVar5=-5;
        studyVar6=4;
        studyVar7=4;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 14:
        studyVar1=4;
        studyVar2=5;
        studyVar3=-4;
        studyVar4=2;
        studyVar5=-6;
        studyVar6=4;
        studyVar7=4;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 15:
        studyVar1=5;
        studyVar2=4;
        studyVar3=-7;
        studyVar4=4;
        studyVar5=-6;
        studyVar6=5;
        studyVar7=1;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 16:
        studyVar1=5;
        studyVar2=-1;
        studyVar3=-3;
        studyVar4=8;
        studyVar5=-6;
        studyVar6=5;
        studyVar7=-7;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 17:
        studyVar1=4;
        studyVar2=5;
        studyVar3=-5;
        studyVar4=-4;
        studyVar5=5;
        studyVar6=-1;
        studyVar7=-2;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 18:
        studyVar1=7;
        studyVar2=-1;
        studyVar3=-1;
        studyVar4=-1;
        studyVar5=-3;
        studyVar6=7;
        studyVar7=1;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 19:
        studyVar1=8;
        studyVar2=1;
        studyVar3=-4;
        studyVar4=-1;
        studyVar5=5;
        studyVar6=-8;
        studyVar7=6;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 20:
        studyVar1=9;
        studyVar2=-8;
        studyVar3=5;
        studyVar4=-1;
        studyVar5=-1;
        studyVar6=5;
        studyVar7=-7;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 21:
        studyVar1=2;
        studyVar2=5;
        studyVar3=-2;
        studyVar4=-1;
        studyVar5=5;
        studyVar6=-4;
        studyVar7=-1;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 22:
        studyVar1=3;
        studyVar2=1;
        studyVar3=-4;
        studyVar4=5;
        studyVar5=-1;
        studyVar6=-3;
        studyVar7=-1;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 23:
        studyVar1=4;
        studyVar2=-3;
        studyVar3=-1;
        studyVar4=5;
        studyVar5=-1;
        studyVar6=5;
        studyVar7=-6;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 24:
        studyVar1=5;
        studyVar2=3;
        studyVar3=-2;
        studyVar4=-1;
        studyVar5=-1;
        studyVar6=-4;
        studyVar7=7;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 25:
        studyVar1=6;
        studyVar2=1;
        studyVar3=2;
        studyVar4=-4;
        studyVar5=-1;
        studyVar6=-3;
        studyVar7=-1;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 26:
        studyVar1=7;
        studyVar2=2;
        studyVar3=-5;
        studyVar4=-3;
        studyVar5=5;
        studyVar6=-1;
        studyVar7=-1;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 27:
        studyVar1=9;
        studyVar2=-3;
        studyVar3=-1;
        studyVar4=-1;
        studyVar5=5;
        studyVar6=-9;
        studyVar7=7;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 28:
        studyVar1=4;
        studyVar2=5;
        studyVar3=-4;
        studyVar4=-1;
        studyVar5=-3;
        studyVar6=5;
        studyVar7=-1;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 29:
        studyVar1=9;
        studyVar2=-4;
        studyVar3=-1;
        studyVar4=-3;
        studyVar5=5;
        studyVar6=-1;
        studyVar7=-1;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 30:
        studyVar1=8;
        studyVar2=1;
        studyVar3=-8;
        studyVar4=6;
        studyVar5=-2;
        studyVar6=-1;
        studyVar7=-3;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;

      default:
        print('Unknown fruit.');
    }
    emit(ChoseState());
  }

  choseStudyExampleForMinus2(int x){

    switch (x) {
      case 1:
        studyVar1=7;
        studyVar2=1;
        studyVar3=-8;
        studyVar4=6;
        studyVar5=-2;
        studyVar6=-4;
        studyVar7=8;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 2:
        studyVar1=9;
        studyVar2=-4;
        studyVar3=-2;
        studyVar4=1;
        studyVar5=5;
        studyVar6=-3;
        studyVar7=-2;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 3:
        studyVar1=1;
        studyVar2=3;
        studyVar3=5;
        studyVar4=-8;
        studyVar5=5;
        studyVar6=-2;
        studyVar7=-3;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 4:
        studyVar1=3;
        studyVar2=5;
        studyVar3=-3;
        studyVar4=-2;
        studyVar5=5;
        studyVar6=-3;
        studyVar7=2;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 5:
        studyVar1=7;
        studyVar2=1;
        studyVar3=-3;
        studyVar4=-2;
        studyVar5=1;
        studyVar6=5;
        studyVar7=-4;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 6:
        studyVar1=1;
        studyVar2=5;
        studyVar3=-2;
        studyVar4=5;
        studyVar5=-8;
        studyVar6=7;
        studyVar7=-3;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 7:
        studyVar1=2;
        studyVar2=5;
        studyVar3=-2;
        studyVar4=-2;
        studyVar5=1;
        studyVar6=-4;
        studyVar7=7;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 8:
        studyVar1=3;
        studyVar2=5;
        studyVar3=-2;
        studyVar4=-2;
        studyVar5=-3;
        studyVar6=7;
        studyVar7=-2;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 9:
        studyVar1=4;
        studyVar2=-3;
        studyVar3=5;
        studyVar4=-2;
        studyVar5=-3;
        studyVar6=5;
        studyVar7=-2;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 10:
        studyVar1=5;
        studyVar2=2;
        studyVar3=-7;
        studyVar4=6;
        studyVar5=-2;
        studyVar6=-3;
        studyVar7=7;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 11:
        studyVar1=2;
        studyVar2=2;
        studyVar3=5;
        studyVar4=-9;
        studyVar5=5;
        studyVar6=-1;
        studyVar7=-3;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 12:
        studyVar1=1;
        studyVar2=3;
        studyVar3=5;
        studyVar4=-7;
        studyVar5=-2;
        studyVar6=5;
        studyVar7=-1;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 13:
        studyVar1=2;
        studyVar2=2;
        studyVar3=5;
        studyVar4=-8;
        studyVar5=-1;
        studyVar6=5;
        studyVar7=-1;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 14:
        studyVar1=3;
        studyVar2=5;
        studyVar3=-3;
        studyVar4=-1;
        studyVar5=5;
        studyVar6=-9;
        studyVar7=8;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 15:
        studyVar1=4;
        studyVar2=5;
        studyVar3=-4;
        studyVar4=-1;
        studyVar5=-3;
        studyVar6=6;
        studyVar7=-1;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 16:
        studyVar1=4;
        studyVar2=-3;
        studyVar3=1;
        studyVar4=2;
        studyVar5=-4;
        studyVar6=6;
        studyVar7=-2;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 17:
        studyVar1=6;
        studyVar2=3;
        studyVar3=-4;
        studyVar4=-2;
        studyVar5=-2;
        studyVar6=7;
        studyVar7=-2;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 18:
        studyVar1=8;
        studyVar2=1;
        studyVar3=-4;
        studyVar4=-2;
        studyVar5=1;
        studyVar6=5;
        studyVar7=-7;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 19:
        studyVar1=3;
        studyVar2=1;
        studyVar3=-4;
        studyVar4=7;
        studyVar5=-2;
        studyVar6=-2;
        studyVar7=1;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 20:
        studyVar1=5;
        studyVar2=4;
        studyVar3=-1;
        studyVar4=-7;
        studyVar5=5;
        studyVar6=-2;
        studyVar7=-3;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 21:
        studyVar1=9;
        studyVar2=-4;
        studyVar3=-2;
        studyVar4=1;
        studyVar5=5;
        studyVar6=-9;
        studyVar7=7;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 22:
        studyVar1=4;
        studyVar2=5;
        studyVar3=-3;
        studyVar4=-2;
        studyVar5=-3;
        studyVar6=5;
        studyVar7=-1;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 23:
        studyVar1=5;
        studyVar2=2;
        studyVar3=1;
        studyVar4=-3;
        studyVar5=-2;
        studyVar6=1;
        studyVar7=-3;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 24:
        studyVar1=1;
        studyVar2=3;
        studyVar3=5;
        studyVar4=-4;
        studyVar5=-2;
        studyVar6=1;
        studyVar7=5;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 25:
        studyVar1=2;
        studyVar2=7;
        studyVar3=-4;
        studyVar4=-2;
        studyVar5=1;
        studyVar6=-4;
        studyVar7=8;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 26:
        studyVar1=7;
        studyVar2=1;
        studyVar3=-8;
        studyVar4=6;
        studyVar5=-1;
        studyVar6=-1;
        studyVar7=-4;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 27:
        studyVar1=6;
        studyVar2=2;
        studyVar3=-3;
        studyVar4=-1;
        studyVar5=-3;
        studyVar6=5;
        studyVar7=2;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 28:
        studyVar1=5;
        studyVar2=3;
        studyVar3=-3;
        studyVar4=-1;
        studyVar5=5;
        studyVar6=-9;
        studyVar7=7;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 29:
        studyVar1=4;
        studyVar2=5;
        studyVar3=-4;
        studyVar4=-1;
        studyVar5=-3;
        studyVar6=5;
        studyVar7=-1;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 30:
        studyVar1=3;
        studyVar2=1;
        studyVar3=5;
        studyVar4=-8;
        studyVar5=5;
        studyVar6=-1;
        studyVar7=-1;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;

      default:
        print('Unknown fruit.');
    }
    emit(ChoseState());
  }

  choseStudyExampleForMinus3(int x){

    switch (x) {
      case 1:
        studyVar1=7;
        studyVar2=-3;
        studyVar3=-3;
        studyVar4=7;
        studyVar5=-1;
        studyVar6=-3;
        studyVar7=-4;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 2:
        studyVar1=8;
        studyVar2=1;
        studyVar3=-4;
        studyVar4=-3;
        studyVar5=2;
        studyVar6=5;
        studyVar7=-7;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 3:
        studyVar1=2;
        studyVar2=7;
        studyVar3=-4;
        studyVar4=-3;
        studyVar5=2;
        studyVar6=5;
        studyVar7=-8;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 4:
        studyVar1=1;
        studyVar2=2;
        studyVar3=1;
        studyVar4=5;
        studyVar5=-2;
        studyVar6=-3;
        studyVar7=-2;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 5:
        studyVar1=3;
        studyVar2=1;
        studyVar3=5;
        studyVar4=-7;
        studyVar5=5;
        studyVar6=-3;
        studyVar7=5;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 6:
        studyVar1=4;
        studyVar2=5;
        studyVar3=-3;
        studyVar4=-3;
        studyVar5=1;
        studyVar6=5;
        studyVar7=-4;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 7:
        studyVar1=5;
        studyVar2=3;
        studyVar3=-1;
        studyVar4=-3;
        studyVar5=-4;
        studyVar6=7;
        studyVar7=-6;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 8:
        studyVar1=6;
        studyVar2=3;
        studyVar3=-4;
        studyVar4=-3;
        studyVar5=1;
        studyVar6=5;
        studyVar7=-3;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 9:
        studyVar1=9;
        studyVar2=-4;
        studyVar3=-3;
        studyVar4=1;
        studyVar5=-3;
        studyVar6=8;
        studyVar7=-1;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 10:
        studyVar1=1;
        studyVar2=3;
        studyVar3=-4;
        studyVar4=5;
        studyVar5=-3;
        studyVar6=1;
        studyVar7=1;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 11:
        studyVar1=8;
        studyVar2=-5;
        studyVar3=-1;
        studyVar4=5;
        studyVar5=-3;
        studyVar6=-4;
        studyVar7=-7;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 12:
        studyVar1=7;
        studyVar2=2;
        studyVar3=-6;
        studyVar4=5;
        studyVar5=-1;
        studyVar6=-3;
        studyVar7=-4;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 13:
        studyVar1=6;
        studyVar2=1;
        studyVar3=-2;
        studyVar4=-3;
        studyVar5=1;
        studyVar6=-3;
        studyVar7=5;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 14:
        studyVar1=5;
        studyVar2=4;
        studyVar3=-3;
        studyVar4=-3;
        studyVar5=1;
        studyVar6=-4;
        studyVar7=8;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 15:
        studyVar1=4;
        studyVar2=-3;
        studyVar3=5;
        studyVar4=-1;
        studyVar5=-3;
        studyVar6=2;
        studyVar7=-3;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 16:
        studyVar1=3;
        studyVar2=5;
        studyVar3=-3;
        studyVar4=-3;
        studyVar5=2;
        studyVar6=5;
        studyVar7=-5;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 17:
        studyVar1=2;
        studyVar2=1;
        studyVar3=1;
        studyVar4=5;
        studyVar5=-3;
        studyVar6=-1;
        studyVar7=-3;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 18:
        studyVar1=1;
        studyVar2=1;
        studyVar3=5;
        studyVar4=-3;
        studyVar5=-3;
        studyVar6=5;
        studyVar7=-1;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 19:
        studyVar1=9;
        studyVar2=-5;
        studyVar3=-3;
        studyVar4=5;
        studyVar5=-3;
        studyVar6=1;
        studyVar7=-4;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 20:
        studyVar1=2;
        studyVar2=5;
        studyVar3=-3;
        studyVar4=5;
        studyVar5=-7;
        studyVar6=-1;
        studyVar7=5;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 21:
        studyVar1=4;
        studyVar2=5;
        studyVar3=-4;
        studyVar4=-5;
        studyVar5=6;
        studyVar6=-3;
        studyVar7=-2;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 22:
        studyVar1=3;
        studyVar2=6;
        studyVar3=-3;
        studyVar4=-3;
        studyVar5=1;
        studyVar6=-2;
        studyVar7=-2;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 23:
        studyVar1=1;
        studyVar2=8;
        studyVar3=-4;
        studyVar4=-3;
        studyVar5=1;
        studyVar6=-1;
        studyVar7=5;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 24:
        studyVar1=2;
        studyVar2=6;
        studyVar3=-2;
        studyVar4=-3;
        studyVar5=1;
        studyVar6=-3;
        studyVar7=8;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 25:
        studyVar1=3;
        studyVar2=6;
        studyVar3=-7;
        studyVar4=5;
        studyVar5=-3;
        studyVar6=-4;
        studyVar7=3;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 26:
        studyVar1=2;
        studyVar2=2;
        studyVar3=-3;
        studyVar4=5;
        studyVar5=-3;
        studyVar6=-2;
        studyVar7=3;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 27:
        studyVar1=3;
        studyVar2=1;
        studyVar3=5;
        studyVar4=-7;
        studyVar5=5;
        studyVar6=-3;
        studyVar7=-4;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 28:
        studyVar1=4;
        studyVar2=5;
        studyVar3=-3;
        studyVar4=-3;
        studyVar5=-2;
        studyVar6=1;
        studyVar7=5;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 29:
        studyVar1=5;
        studyVar2=2;
        studyVar3=-3;
        studyVar4=-3;
        studyVar5=7;
        studyVar6=-6;
        studyVar7=7;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 30:
        studyVar1=6;
        studyVar2=3;
        studyVar3=-4;
        studyVar4=-3;
        studyVar5=1;
        studyVar6=1;
        studyVar7=-3;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;

      default:
        print('Unknown fruit.');
    }
    emit(ChoseState());
  }

  choseStudyExampleForMinus4(int x){

    switch (x) {
      case 1:
        studyVar1=2;
        studyVar2=1;
        studyVar3=5;
        studyVar4=-4;
        studyVar5=5;
        studyVar6=-7;
        studyVar7=5;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 2:
        studyVar1=3;
        studyVar2=5;
        studyVar3=-4;
        studyVar4=5;
        studyVar5=-9;
        studyVar6=7;
        studyVar7=-2;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 3:
        studyVar1=4;
        studyVar2=-3;
        studyVar3=6;
        studyVar4=-4;
        studyVar5=1;
        studyVar6=-3;
        studyVar7=5;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 4:
        studyVar1=5;
        studyVar2=1;
        studyVar3=-1;
        studyVar4=-4;
        studyVar5=3;
        studyVar6=5;
        studyVar7=-7;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 5:
        studyVar1=6;
        studyVar2=1;
        studyVar3=1;
        studyVar4=-4;
        studyVar5=-3;
        studyVar6=5;
        studyVar7=-4;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 6:
        studyVar1=7;
        studyVar2=2;
        studyVar3=-4;
        studyVar4=-4;
        studyVar5=1;
        studyVar6=5;
        studyVar7=-5;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 7:
        studyVar1=8;
        studyVar2=1;
        studyVar3=-4;
        studyVar4=-4;
        studyVar5=3;
        studyVar6=5;
        studyVar7=-7;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 8:
        studyVar1=9;
        studyVar2=-4;
        studyVar3=-4;
        studyVar4=2;
        studyVar5=6;
        studyVar6=-7;
        studyVar7=1;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 9:
        studyVar1=1;
        studyVar2=2;
        studyVar3=-3;
        studyVar4=5;
        studyVar5=-4;
        studyVar6=3;
        studyVar7=5;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 10:
        studyVar1=2;
        studyVar2=7;
        studyVar3=-6;
        studyVar4=5;
        studyVar5=-4;
        studyVar6=5;
        studyVar7=-7;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 11:
        studyVar1=4;
        studyVar2=5;
        studyVar3=-1;
        studyVar4=-1;
        studyVar5=-3;
        studyVar6=-4;
        studyVar7=8;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 12:
        studyVar1=5;
        studyVar2=3;
        studyVar3=-2;
        studyVar4=-3;
        studyVar5=1;
        studyVar6=-4;
        studyVar7=6;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 13:
        studyVar1=6;
        studyVar2=3;
        studyVar3=-4;
        studyVar4=-3;
        studyVar5=1;
        studyVar6=5;
        studyVar7=-1;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 14:
        studyVar1=7;
        studyVar2=1;
        studyVar3=-3;
        studyVar4=-3;
        studyVar5=1;
        studyVar6=5;
        studyVar7=-8;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 15:
        studyVar1=8;
        studyVar2=-5;
        studyVar3=-2;
        studyVar4=6;
        studyVar5=-3;
        studyVar6=5;
        studyVar7=-2;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 16:
        studyVar1=5;
        studyVar2=-4;
        studyVar3=3;
        studyVar4=-3;
        studyVar5=6;
        studyVar6=-2;
        studyVar7=-4;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 17:
        studyVar1=1;
        studyVar2=3;
        studyVar3=5;
        studyVar4=-3;
        studyVar5=-4;
        studyVar6=2;
        studyVar7=-3;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 18:
        studyVar1=3;
        studyVar2=1;
        studyVar3=-3;
        studyVar4=6;
        studyVar5=-4;
        studyVar6=1;
        studyVar7=-4;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 19:
        studyVar1=4;
        studyVar2=5;
        studyVar3=-7;
        studyVar4=5;
        studyVar5=-4;
        studyVar6=1;
        studyVar7=5;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 20:
        studyVar1=2;
        studyVar2=1;
        studyVar3=-3;
        studyVar4=7;
        studyVar5=-4;
        studyVar6=1;
        studyVar7=-3;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 21:
        studyVar1=1;
        studyVar2=3;
        studyVar3=5;
        studyVar4=-1;
        studyVar5=-4;
        studyVar6=-3;
        studyVar7=6;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 22:
        studyVar1=3;
        studyVar2=6;
        studyVar3=-3;
        studyVar4=-4;
        studyVar5=2;
        studyVar6=5;
        studyVar7=-4;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 23:
        studyVar1=5;
        studyVar2=4;
        studyVar3=-7;
        studyVar4=6;
        studyVar5=-4;
        studyVar6=5;
        studyVar7=-9;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 24:
        studyVar1=7;
        studyVar2=2;
        studyVar3=-4;
        studyVar4=-4;
        studyVar5=1;
        studyVar6=2;
        studyVar7=5;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 25:
        studyVar1=9;
        studyVar2=-4;
        studyVar3=-4;
        studyVar4=1;
        studyVar5=-2;
        studyVar6=7;
        studyVar7=-7;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 26:
        studyVar1=6;
        studyVar2=3;
        studyVar3=-3;
        studyVar4=-4;
        studyVar5=1;
        studyVar6=-3;
        studyVar7=8;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 27:
        studyVar1=7;
        studyVar2=1;
        studyVar3=-3;
        studyVar4=-4;
        studyVar5=3;
        studyVar6=5;
        studyVar7=-8;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 28:
        studyVar1=8;
        studyVar2=-4;
        studyVar3=5;
        studyVar4=-4;
        studyVar5=-4;
        studyVar6=3;
        studyVar7=-2;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 29:
        studyVar1=9;
        studyVar2=-5;
        studyVar3=-3;
        studyVar4=5;
        studyVar5=-4;
        studyVar6=2;
        studyVar7=-4;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 30:
        studyVar1=1;
        studyVar2=7;
        studyVar3=-4;
        studyVar4=-3;
        studyVar5=1;
        studyVar6=5;
        studyVar7=-4;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;

      default:
        print('Unknown fruit.');
    }
    emit(ChoseState());
  }

  choseStudyExampleForPlus10Plus1(int x){

    switch (x) {
      case 1:
        studyVar1=8;
        studyVar2=-6;
        studyVar3=2;
        studyVar4=5;
        studyVar5=1;
        studyVar6=4;
        studyVar7=-3;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 2:
        studyVar1=6;
        studyVar2=-6;
        studyVar3=2;
        studyVar4=7;
        studyVar5=1;
        studyVar6=6;
        studyVar7=2;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 3:
        studyVar1=3;
        studyVar2=6;
        studyVar3=-3;
        studyVar4=2;
        studyVar5=1;
        studyVar6=1;
        studyVar7=7;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 4:
        studyVar1=3;
        studyVar2=6;
        studyVar3=1;
        studyVar4=9;
        studyVar5=-8;
        studyVar6=2;
        studyVar7=5;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 5:
        studyVar1=9;
        studyVar2=-7;
        studyVar3=2;
        studyVar4=5;
        studyVar5=1;
        studyVar6=2;
        studyVar7=3;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 6:
        studyVar1=6;
        studyVar2=3;
        studyVar3=1;
        studyVar4=7;
        studyVar5=-4;
        studyVar6=5;
        studyVar7=-2;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 7:
        studyVar1=4;
        studyVar2=3;
        studyVar3=2;
        studyVar4=1;
        studyVar5=5;
        studyVar6=1;
        studyVar7=-5;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 8:
        studyVar1=9;
        studyVar2=1;
        studyVar3=4;
        studyVar4=5;
        studyVar5=1;
        studyVar6=3;
        studyVar7=-2;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 9:
        studyVar1=8;
        studyVar2=-2;
        studyVar3=3;
        studyVar4=1;
        studyVar5=7;
        studyVar6=-6;
        studyVar7=8;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 10:
        studyVar1=9;
        studyVar2=1;
        studyVar3=7;
        studyVar4=-6;
        studyVar5=-1;
        studyVar6=5;
        studyVar7=-5;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 11:
        studyVar1=9;
        studyVar2=-8;
        studyVar3=-1;
        studyVar4=7;
        studyVar5=2;
        studyVar6=1;
        studyVar7=4;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 12:
        studyVar1=3;
        studyVar2=-2;
        studyVar3=5;
        studyVar4=1;
        studyVar5=2;
        studyVar6=1;
        studyVar7=6;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 13:
        studyVar1=4;
        studyVar2=5;
        studyVar3=1;
        studyVar4=2;
        studyVar5=3;
        studyVar6=-4;
        studyVar7=6;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 14:
        studyVar1=8;
        studyVar2=-2;
        studyVar3=2;
        studyVar4=1;
        studyVar5=1;
        studyVar6=8;
        studyVar7=-2;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 15:
        studyVar1=9;
        studyVar2=1;
        studyVar3=2;
        studyVar4=1;
        studyVar5=1;
        studyVar6=-3;
        studyVar7=5;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 16:
        studyVar1=5;
        studyVar2=1;
        studyVar3=3;
        studyVar4=1;
        studyVar5=5;
        studyVar6=-4;
        studyVar7=3;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 17:
        studyVar1=9;
        studyVar2=1;
        studyVar3=4;
        studyVar4=4;
        studyVar5=-7;
        studyVar6=5;
        studyVar7=3;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 18:
        studyVar1=4;
        studyVar2=5;
        studyVar3=1;
        studyVar4=4;
        studyVar5=-4;
        studyVar6=6;
        studyVar7=-5;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 19:
        studyVar1=5;
        studyVar2=-5;
        studyVar3=2;
        studyVar4=-1;
        studyVar5=8;
        studyVar6=1;
        studyVar7=1;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 20:
        studyVar1=2;
        studyVar2=3;
        studyVar3=-2;
        studyVar4=6;
        studyVar5=1;
        studyVar6=4;
        studyVar7=5;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 21:
        studyVar1=9;
        studyVar2=1;
        studyVar3=5;
        studyVar4=4;
        studyVar5=-4;
        studyVar6=2;
        studyVar7=-6;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 22:
        studyVar1=3;
        studyVar2=5;
        studyVar3=1;
        studyVar4=1;
        studyVar5=7;
        studyVar6=2;
        studyVar7=1;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 23:
        studyVar1=8;
        studyVar2=-3;
        studyVar3=-5;
        studyVar4=9;
        studyVar5=1;
        studyVar6=8;
        studyVar7=1;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 24:
        studyVar1=7;
        studyVar2=1;
        studyVar3=-3;
        studyVar4=4;
        studyVar5=1;
        studyVar6=8;
        studyVar7=-5;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 25:
        studyVar1=9;
        studyVar2=1;
        studyVar3=9;
        studyVar4=1;
        studyVar5=4;
        studyVar6=-2;
        studyVar7=-1;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 26:
        studyVar1=9;
        studyVar2=1;
        studyVar3=5;
        studyVar4=-4;
        studyVar5=2;
        studyVar6=-3;
        studyVar7=5;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 27:
        studyVar1=3;
        studyVar2=6;
        studyVar3=1;
        studyVar4=6;
        studyVar5=-1;
        studyVar6=-4;
        studyVar7=7;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 28:
        studyVar1=8;
        studyVar2=1;
        studyVar3=1;
        studyVar4=7;
        studyVar5=-6;
        studyVar6=6;
        studyVar7=2;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 29:
        studyVar1=6;
        studyVar2=3;
        studyVar3=1;
        studyVar4=9;
        studyVar5=1;
        studyVar6=3;
        studyVar7=2;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 30:
        studyVar1=9;
        studyVar2=-7;
        studyVar3=7;
        studyVar4=1;
        studyVar5=3;
        studyVar6=3;
        studyVar7=3;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;

      default:
        print('Unknown fruit.');
    }
    emit(ChoseState());
  }

  choseStudyExampleForPlus10Plus2(int x){

    switch (x) {
      case 1:
        studyVar1=6;
        studyVar2=3;
        studyVar3=1;
        studyVar4=5;
        studyVar5=4;
        studyVar6=1;
        studyVar7=8;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 2:
        studyVar1=9;
        studyVar2=1;
        studyVar3=8;
        studyVar4=1;
        studyVar5=1;
        studyVar6=2;
        studyVar7=-2;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 3:
        studyVar1=7;
        studyVar2=2;
        studyVar3=1;
        studyVar4=9;
        studyVar5=1;
        studyVar6=9;
        studyVar7=1;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 4:
        studyVar1=9;
        studyVar2=1;
        studyVar3=5;
        studyVar4=-5;
        studyVar5=7;
        studyVar6=2;
        studyVar7=1;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 5:
        studyVar1=4;
        studyVar2=-1;
        studyVar3=2;
        studyVar4=4;
        studyVar5=1;
        studyVar6=9;
        studyVar7=-9;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 6:
        studyVar1=3;
        studyVar2=2;
        studyVar3=4;
        studyVar4=2;
        studyVar5=6;
        studyVar6=-7;
        studyVar7=9;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 7:
        studyVar1=9;
        studyVar2=2;
        studyVar3=8;
        studyVar4=2;
        studyVar5=-1;
        studyVar6=9;
        studyVar7=-4;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 8:
        studyVar1=9;
        studyVar2=2;
        studyVar3=7;
        studyVar4=-6;
        studyVar5=7;
        studyVar6=2;
        studyVar7=-1;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 9:
        studyVar1=3;
        studyVar2=-1;
        studyVar3=1;
        studyVar4=6;
        studyVar5=2;
        studyVar6=8;
        studyVar7=2;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 10:
        studyVar1=4;
        studyVar2=5;
        studyVar3=2;
        studyVar4=3;
        studyVar5=-4;
        studyVar6=9;
        studyVar7=2;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 11:
        studyVar1=8;
        studyVar2=1;
        studyVar3=2;
        studyVar4=8;
        studyVar5=1;
        studyVar6=7;
        studyVar7=-5;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 12:
        studyVar1=4;
        studyVar2=3;
        studyVar3=2;
        studyVar4=2;
        studyVar5=8;
        studyVar6=-5;
        studyVar7=3;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 13:
        studyVar1=9;
        studyVar2=2;
        studyVar3=7;
        studyVar4=2;
        studyVar5=3;
        studyVar6=6;
        studyVar7=2;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 14:
        studyVar1=7;
        studyVar2=1;
        studyVar3=2;
        studyVar4=5;
        studyVar5=3;
        studyVar6=2;
        studyVar7=3;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 15:
        studyVar1=5;
        studyVar2=3;
        studyVar3=2;
        studyVar4=9;
        studyVar5=2;
        studyVar6=7;
        studyVar7=2;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 16:
        studyVar1=6;
        studyVar2=-1;
        studyVar3=4;
        studyVar4=2;
        studyVar5=4;
        studyVar6=3;
        studyVar7=2;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 17:
        studyVar1=7;
        studyVar2=2;
        studyVar3=2;
        studyVar4=3;
        studyVar5=-4;
        studyVar6=8;
        studyVar7=2;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 18:
        studyVar1=6;
        studyVar2=3;
        studyVar3=2;
        studyVar4=6;
        studyVar5=-7;
        studyVar6=9;
        studyVar7=2;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 19:
        studyVar1=4;
        studyVar2=4;
        studyVar3=2;
        studyVar4=9;
        studyVar5=2;
        studyVar6=3;
        studyVar7=5;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 20:
        studyVar1=2;
        studyVar2=-2;
        studyVar3=8;
        studyVar4=2;
        studyVar5=9;
        studyVar6=2;
        studyVar7=5;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 21:
        studyVar1=9;
        studyVar2=-5;
        studyVar3=4;
        studyVar4=2;
        studyVar5=8;
        studyVar6=2;
        studyVar7=9;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 22:
        studyVar1=8;
        studyVar2=-5;
        studyVar3=6;
        studyVar4=2;
        studyVar5=8;
        studyVar6=2;
        studyVar7=4;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 23:
        studyVar1=9;
        studyVar2=-8;
        studyVar3=7;
        studyVar4=2;
        studyVar5=9;
        studyVar6=-7;
        studyVar7=2;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 24:
        studyVar1=8;
        studyVar2=2;
        studyVar3=2;
        studyVar4=6;
        studyVar5=2;
        studyVar6=7;
        studyVar7=-1;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 25:
        studyVar1=5;
        studyVar2=-2;
        studyVar3=5;
        studyVar4=2;
        studyVar5=9;
        studyVar6=2;
        studyVar7=3;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 26:
        studyVar1=8;
        studyVar2=2;
        studyVar3=8;
        studyVar4=2;
        studyVar5=7;
        studyVar6=-5;
        studyVar7=7;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 27:
        studyVar1=9;
        studyVar2=2;
        studyVar3=5;
        studyVar4=3;
        studyVar5=2;
        studyVar6=7;
        studyVar7=2;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 28:
        studyVar1=6;
        studyVar2=2;
        studyVar3=2;
        studyVar4=4;
        studyVar5=2;
        studyVar6=2;
        studyVar7=2;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 29:
        studyVar1=5;
        studyVar2=2;
        studyVar3=-7;
        studyVar4=9;
        studyVar5=2;
        studyVar6=6;
        studyVar7=-6;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 30:
        studyVar1=9;
        studyVar2=2;
        studyVar3=6;
        studyVar4=2;
        studyVar5=2;
        studyVar6=8;
        studyVar7=-3;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 31:
        studyVar1=8;
        studyVar2=2;
        studyVar3=4;
        studyVar4=1;
        studyVar5=4;
        studyVar6=2;
        studyVar7=5;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 32:
        studyVar1=5;
        studyVar2=3;
        studyVar3=2;
        studyVar4=4;
        studyVar5=4;
        studyVar6=2;
        studyVar7=4;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 33:
        studyVar1=7;
        studyVar2=1;
        studyVar3=2;
        studyVar4=3;
        studyVar5=5;
        studyVar6=-3;
        studyVar7=1;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 34:
        studyVar1=9;
        studyVar2=2;
        studyVar3=6;
        studyVar4=-4;
        studyVar5=6;
        studyVar6=2;
        studyVar7=8;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 35:
        studyVar1=4;
        studyVar2=-1;
        studyVar3=5;
        studyVar4=2;
        studyVar5=5;
        studyVar6=1;
        studyVar7=2;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 36:
        studyVar1=8;
        studyVar2=2;
        studyVar3=1;
        studyVar4=3;
        studyVar5=5;
        studyVar6=-6;
        studyVar7=5;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 37:
        studyVar1=3;
        studyVar2=6;
        studyVar3=-1;
        studyVar4=2;
        studyVar5=7;
        studyVar6=-7;
        studyVar7=4;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 37:
        studyVar1=8;
        studyVar2=2;
        studyVar3=5;
        studyVar4=2;
        studyVar5=-6;
        studyVar6=1;
        studyVar7=7;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 39:
        studyVar1=7;
        studyVar2=2;
        studyVar3=-4;
        studyVar4=4;
        studyVar5=2;
        studyVar6=3;
        studyVar7=5;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 40:
        studyVar1=9;
        studyVar2=2;
        studyVar3=-1;
        studyVar4=2;
        studyVar5=6;
        studyVar6=2;
        studyVar7=9;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;


      default:
        print('Unknown fruit.');
    }
    emit(ChoseState());
  }

  choseStudyExampleForPlus10Plus3(int x){

    switch (x) {
      case 1:
        studyVar1=7;
        studyVar2=-6;
        studyVar3=2;
        studyVar4=6;
        studyVar5=3;
        studyVar6=3;
        studyVar7=4;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 2:
        studyVar1=5;
        studyVar2=4;
        studyVar3=3;
        studyVar4=7;
        studyVar5=-2;
        studyVar6=-3;
        studyVar7=3;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 3:
        studyVar1=5;
        studyVar2=2;
        studyVar3=3;
        studyVar4=1;
        studyVar5=8;
        studyVar6=3;
        studyVar7=6;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 4:
        studyVar1=6;
        studyVar2=-1;
        studyVar3=-1;
        studyVar4=2;
        studyVar5=3;
        studyVar6=3;
        studyVar7=4;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 5:
        studyVar1=6;
        studyVar2=-6;
        studyVar3=3;
        studyVar4=2;
        studyVar5=3;
        studyVar6=3;
        studyVar7=-4;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 6:
        studyVar1=9;
        studyVar2=3;
        studyVar3=7;
        studyVar4=-8;
        studyVar5=2;
        studyVar6=2;
        studyVar7=-2;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 7:
        studyVar1=7;
        studyVar2=3;
        studyVar3=4;
        studyVar4=-3;
        studyVar5=2;
        studyVar6=-3;
        studyVar7=6;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 8:
        studyVar1=1;
        studyVar2=8;
        studyVar3=3;
        studyVar4=7;
        studyVar5=3;
        studyVar6=-2;
        studyVar7=7;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 9:
        studyVar1=4;
        studyVar2=5;
        studyVar3=-8;
        studyVar4=7;
        studyVar5=3;
        studyVar6=6;
        studyVar7=-2;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 10:
        studyVar1=8;
        studyVar2=3;
        studyVar3=5;
        studyVar4=1;
        studyVar5=-4;
        studyVar6=3;
        studyVar7=-5;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 11:
        studyVar1=1;
        studyVar2=8;
        studyVar3=3;
        studyVar4=6;
        studyVar5=3;
        studyVar6=2;
        studyVar7=-3;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 12:
        studyVar1=8;
        studyVar2=3;
        studyVar3=-1;
        studyVar4=9;
        studyVar5=3;
        studyVar6=8;
        studyVar7=6;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 13:
        studyVar1=9;
        studyVar2=-2;
        studyVar3=3;
        studyVar4=9;
        studyVar5=3;
        studyVar6=7;
        studyVar7=3;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 14:
        studyVar1=9;
        studyVar2=-3;
        studyVar3=2;
        studyVar4=3;
        studyVar5=6;
        studyVar6=3;
        studyVar7=7;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 15:
        studyVar1=1;
        studyVar2=7;
        studyVar3=3;
        studyVar4=7;
        studyVar5=3;
        studyVar6=-1;
        studyVar7=5;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 16:
        studyVar1=4;
        studyVar2=-3;
        studyVar3=5;
        studyVar4=2;
        studyVar5=3;
        studyVar6=8;
        studyVar7=3;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 17:
        studyVar1=8;
        studyVar2=-4;
        studyVar3=3;
        studyVar4=3;
        studyVar5=7;
        studyVar6=3;
        studyVar7=6;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 18:
        studyVar1=9;
        studyVar2=3;
        studyVar3=5;
        studyVar4=-1;
        studyVar5=2;
        studyVar6=3;
        studyVar7=7;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 19:
        studyVar1=7;
        studyVar2=3;
        studyVar3=8;
        studyVar4=3;
        studyVar5=-1;
        studyVar6=4;
        studyVar7=-1;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 20:
        studyVar1=4;
        studyVar2=5;
        studyVar3=3;
        studyVar4=7;
        studyVar5=3;
        studyVar6=-2;
        studyVar7=8;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;



      default:
        print('Unknown fruit.');
    }
    emit(ChoseState());
  }

  choseStudyExampleForPlus10Plus4(int x){

    switch (x) {
      case 1:
        studyVar1=5;
        studyVar2=-1;
        studyVar3=5;
        studyVar4=4;
        studyVar5=-3;
        studyVar6=7;
        studyVar7=4;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 2:
        studyVar1=5;
        studyVar2=4;
        studyVar3=4;
        studyVar4=4;
        studyVar5=4;
        studyVar6=-1;
        studyVar7=3;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 3:
        studyVar1=8;
        studyVar2=4;
        studyVar3=7;
        studyVar4=4;
        studyVar5=5;
        studyVar6=-6;
        studyVar7=-1;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 4:
        studyVar1=7;
        studyVar2=4;
        studyVar3=2;
        studyVar4=5;
        studyVar5=4;
        studyVar6=5;
        studyVar7=-5;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 5:
        studyVar1=8;
        studyVar2=4;
        studyVar3=5;
        studyVar4=4;
        studyVar5=-1;
        studyVar6=6;
        studyVar7=3;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 6:
        studyVar1=6;
        studyVar2=-1;
        studyVar3=4;
        studyVar4=4;
        studyVar5=4;
        studyVar6=1;
        studyVar7=2;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 7:
        studyVar1=9;
        studyVar2=4;
        studyVar3=5;
        studyVar4=-8;
        studyVar5=7;
        studyVar6=4;
        studyVar7=4;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 8:
        studyVar1=6;
        studyVar2=4;
        studyVar3=5;
        studyVar4=1;
        studyVar5=4;
        studyVar6=4;
        studyVar7=5;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 9:
        studyVar1=3;
        studyVar2=6;
        studyVar3=4;
        studyVar4=-3;
        studyVar5=2;
        studyVar6=2;
        studyVar7=-1;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 10:
        studyVar1=3;
        studyVar2=3;
        studyVar3=4;
        studyVar4=6;
        studyVar5=4;
        studyVar6=8;
        studyVar7=4;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 11:
        studyVar1=6;
        studyVar2=4;
        studyVar3=6;
        studyVar4=4;
        studyVar5=8;
        studyVar6=4;
        studyVar7=5;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 12:
        studyVar1=9;
        studyVar2=4;
        studyVar3=-1;
        studyVar4=4;
        studyVar5=4;
        studyVar6=6;
        studyVar7=-4;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 13:
        studyVar1=7;
        studyVar2=4;
        studyVar3=6;
        studyVar4=2;
        studyVar5=4;
        studyVar6=-3;
        studyVar7=6;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 14:
        studyVar1=9;
        studyVar2=-3;
        studyVar3=4;
        studyVar4=3;
        studyVar5=5;
        studyVar6=4;
        studyVar7=-2;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 15:
        studyVar1=9;
        studyVar2=4;
        studyVar3=6;
        studyVar4=4;
        studyVar5=5;
        studyVar6=-5;
        studyVar7=6;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 16:
        studyVar1=9;
        studyVar2=4;
        studyVar3=6;
        studyVar4=4;
        studyVar5=-2;
        studyVar6=-1;
        studyVar7=1;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 17:
        studyVar1=3;
        studyVar2=-3;
        studyVar3=7;
        studyVar4=2;
        studyVar5=4;
        studyVar6=5;
        studyVar7=4;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 18:
        studyVar1=8;
        studyVar2=-8;
        studyVar3=1;
        studyVar4=6;
        studyVar5=4;
        studyVar6=6;
        studyVar7=4;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 19:
        studyVar1=9;
        studyVar2=-2;
        studyVar3=-5;
        studyVar4=5;
        studyVar5=4;
        studyVar6=7;
        studyVar7=4;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 20:
        studyVar1=9;
        studyVar2=4;
        studyVar3=-1;
        studyVar4=7;
        studyVar5=4;
        studyVar6=5;
        studyVar7=-7;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 21:
        studyVar1=2;
        studyVar2=5;
        studyVar3=4;
        studyVar4=7;
        studyVar5=4;
        studyVar6=-2;
        studyVar7=4;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 22:
        studyVar1=4;
        studyVar2=5;
        studyVar3=4;
        studyVar4=-3;
        studyVar5=7;
        studyVar6=4;
        studyVar7=8;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 23:
        studyVar1=9;
        studyVar2=4;
        studyVar3=6;
        studyVar4=4;
        studyVar5=-3;
        studyVar6=9;
        studyVar7=4;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 24:
        studyVar1=3;
        studyVar2=6;
        studyVar3=4;
        studyVar4=-3;
        studyVar5=7;
        studyVar6=4;
        studyVar7=2;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 25:
        studyVar1=8;
        studyVar2=4;
        studyVar3=-2;
        studyVar4=8;
        studyVar5=4;
        studyVar6=5;
        studyVar7=4;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 26:
        studyVar1=1;
        studyVar2=6;
        studyVar3=4;
        studyVar4=8;
        studyVar5=4;
        studyVar6=-3;
        studyVar7=6;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 27:
        studyVar1=6;
        studyVar2=4;
        studyVar3=9;
        studyVar4=4;
        studyVar5=-3;
        studyVar6=8;
        studyVar7=-6;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 28:
        studyVar1=3;
        studyVar2=5;
        studyVar3=4;
        studyVar4=2;
        studyVar5=4;
        studyVar6=4;
        studyVar7=-2;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 29:
        studyVar1=7;
        studyVar2=4;
        studyVar3=-1;
        studyVar4=3;
        studyVar5=1;
        studyVar6=-4;
        studyVar7=5;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 30:
        studyVar1=5;
        studyVar2=3;
        studyVar3=4;
        studyVar4=-2;
        studyVar5=9;
        studyVar6=4;
        studyVar7=-2;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;



      default:
        print('Unknown fruit.');
    }
    emit(ChoseState());
  }

  choseStudyExampleForPlus10Plus5(int x){

    switch (x) {
      case 1:
        studyVar1=9;
        studyVar2=4;
        studyVar3=-3;
        studyVar4=8;
        studyVar5=4;
        studyVar6=-2;
        studyVar7=8;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 2:
        studyVar1=8;
        studyVar2=1;
        studyVar3=4;
        studyVar4=-2;
        studyVar5=6;
        studyVar6=-7;
        studyVar7=4;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 3:
        studyVar1=6;
        studyVar2=3;
        studyVar3=4;
        studyVar4=5;
        studyVar5=4;
        studyVar6=7;
        studyVar7=4;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 4:
        studyVar1=3;
        studyVar2=5;
        studyVar3=4;
        studyVar4=-2;
        studyVar5=9;
        studyVar6=4;
        studyVar7=-1;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 5:
        studyVar1=4;
        studyVar2=4;
        studyVar3=4;
        studyVar4=-2;
        studyVar5=4;
        studyVar6=-3;
        studyVar7=5;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 6:
        studyVar1=9;
        studyVar2=5;
        studyVar3=5;
        studyVar4=-4;
        studyVar5=3;
        studyVar6=5;
        studyVar7=-3;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 7:
        studyVar1=5;
        studyVar2=5;
        studyVar3=4;
        studyVar4=-3;
        studyVar5=6;
        studyVar6=-2;
        studyVar7=5;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 8:
        studyVar1=7;
        studyVar2=2;
        studyVar3=5;
        studyVar4=4;
        studyVar5=-3;
        studyVar6=5;
        studyVar7=7;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 9:
        studyVar1=4;
        studyVar2=5;
        studyVar3=5;
        studyVar4=-3;
        studyVar5=-1;
        studyVar6=6;
        studyVar7=5;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 10:
        studyVar1=3;
        studyVar2=2;
        studyVar3=5;
        studyVar4=6;
        studyVar5=1;
        studyVar6=5;
        studyVar7=9;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 11:
        studyVar1=1;
        studyVar2=4;
        studyVar3=-5;
        studyVar4=9;
        studyVar5=5;
        studyVar6=-3;
        studyVar7=-1;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 12:
        studyVar1=2;
        studyVar2=6;
        studyVar3=5;
        studyVar4=-3;
        studyVar5=7;
        studyVar6=5;
        studyVar7=3;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 13:
        studyVar1=3;
        studyVar2=6;
        studyVar3=5;
        studyVar4=4;
        studyVar5=-8;
        studyVar6=6;
        studyVar7=5;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 14:
        studyVar1=4;
        studyVar2=2;
        studyVar3=5;
        studyVar4=3;
        studyVar5=-3;
        studyVar6=6;
        studyVar7=-5;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 15:
        studyVar1=5;
        studyVar2=5;
        studyVar3=5;
        studyVar4=5;
        studyVar5=6;
        studyVar6=-5;
        studyVar7=3;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 16:
        studyVar1=6;
        studyVar2=-5;
        studyVar3=8;
        studyVar4=5;
        studyVar5=-1;
        studyVar6=-2;
        studyVar7=6;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 17:
        studyVar1=7;
        studyVar2=5;
        studyVar3=3;
        studyVar4=-5;
        studyVar5=5;
        studyVar6=5;
        studyVar7=9;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 18:
        studyVar1=8;
        studyVar2=5;
        studyVar3=6;
        studyVar4=-8;
        studyVar5=7;
        studyVar6=5;
        studyVar7=5;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 19:
        studyVar1=9;
        studyVar2=-7;
        studyVar3=6;
        studyVar4=5;
        studyVar5=1;
        studyVar6=-3;
        studyVar7=8;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 20:
        studyVar1=5;
        studyVar2=4;
        studyVar3=5;
        studyVar4=-1;
        studyVar5=2;
        studyVar6=-4;
        studyVar7=-1;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 21:
        studyVar1=1;
        studyVar2=1;
        studyVar3=5;
        studyVar4=5;
        studyVar5=3;
        studyVar6=-5;
        studyVar7=2;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 22:
        studyVar1=2;
        studyVar2=3;
        studyVar3=4;
        studyVar4=5;
        studyVar5=-3;
        studyVar6=8;
        studyVar7=5;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 23:
        studyVar1=3;
        studyVar2=6;
        studyVar3=-9;
        studyVar4=5;
        studyVar5=5;
        studyVar6=6;
        studyVar7=5;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 24:
        studyVar1=9;
        studyVar2=-1;
        studyVar3=5;
        studyVar4=2;
        studyVar5=5;
        studyVar6=8;
        studyVar7=-1;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 25:
        studyVar1=4;
        studyVar2=4;
        studyVar3=4;
        studyVar4=3;
        studyVar5=5;
        studyVar6=6;
        studyVar7=5;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 26:
        studyVar1=7;
        studyVar2=2;
        studyVar3=5;
        studyVar4=-2;
        studyVar5=5;
        studyVar6=5;
        studyVar7=6;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 27:
        studyVar1=8;
        studyVar2=1;
        studyVar3=5;
        studyVar4=-4;
        studyVar5=7;
        studyVar6=-3;
        studyVar7=2;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 28:
        studyVar1=9;
        studyVar2=5;
        studyVar3=5;
        studyVar4=5;
        studyVar5=5;
        studyVar6=-5;
        studyVar7=-4;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 29:
        studyVar1=1;
        studyVar2=3;
        studyVar3=5;
        studyVar4=5;
        studyVar5=-4;
        studyVar6=8;
        studyVar7=5;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 30:
        studyVar1=2;
        studyVar2=2;
        studyVar3=3;
        studyVar4=5;
        studyVar5=-2;
        studyVar6=4;
        studyVar7=5;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 31:
        studyVar1=9;
        studyVar2=5;
        studyVar3=4;
        studyVar4=5;
        studyVar5=-2;
        studyVar6=6;
        studyVar7=5;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 32:
        studyVar1=8;
        studyVar2=2;
        studyVar3=5;
        studyVar4=5;
        studyVar5=7;
        studyVar6=5;
        studyVar7=6;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 33:
        studyVar1=7;
        studyVar2=1;
        studyVar3=5;
        studyVar4=6;
        studyVar5=5;
        studyVar6=-1;
        studyVar7=-1;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 34:
        studyVar1=6;
        studyVar2=2;
        studyVar3=5;
        studyVar4=5;
        studyVar5=-8;
        studyVar6=4;
        studyVar7=4;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 35:
        studyVar1=5;
        studyVar2=3;
        studyVar3=1;
        studyVar4=5;
        studyVar5=-3;
        studyVar6=7;
        studyVar7=5;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 36:
        studyVar1=4;
        studyVar2=4;
        studyVar3=1;
        studyVar4=1;
        studyVar5=5;
        studyVar6=5;
        studyVar7=6;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 37:
        studyVar1=3;
        studyVar2=4;
        studyVar3=1;
        studyVar4=5;
        studyVar5=5;
        studyVar6=-3;
        studyVar7=5;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 38:
        studyVar1=2;
        studyVar2=5;
        studyVar3=5;
        studyVar4=2;
        studyVar5=5;
        studyVar6=-9;
        studyVar7=3;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 39:
        studyVar1=1;
        studyVar2=4;
        studyVar3=5;
        studyVar4=6;
        studyVar5=3;
        studyVar6=-7;
        studyVar7=5;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 40:
        studyVar1=3;
        studyVar2=3;
        studyVar3=-5;
        studyVar4=6;
        studyVar5=5;
        studyVar6=6;
        studyVar7=1;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;



      default:
        print('Unknown fruit.');
    }
    emit(ChoseState());
  }

  choseStudyExampleForPlus10Plus6(int x){

    switch (x) {
      case 1:
        studyVar1=3;
        studyVar2=3;
        studyVar3=2;
        studyVar4=1;
        studyVar5=6;
        studyVar6=4;
        studyVar7=-3;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 2:
        studyVar1=5;
        studyVar2=3;
        studyVar3=-3;
        studyVar4=4;
        studyVar5=6;
        studyVar6=4;
        studyVar7=-8;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 3:
        studyVar1=7;
        studyVar2=2;
        studyVar3=6;
        studyVar4=3;
        studyVar5=-6;
        studyVar6=2;
        studyVar7=6;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 4:
        studyVar1=9;
        studyVar2=-7;
        studyVar3=2;
        studyVar4=6;
        studyVar5=7;
        studyVar6=-2;
        studyVar7=3;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 5:
        studyVar1=7;
        studyVar2=1;
        studyVar3=1;
        studyVar4=6;
        studyVar5=-5;
        studyVar6=7;
        studyVar7=5;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 6:
        studyVar1=5;
        studyVar2=4;
        studyVar3=6;
        studyVar4=4;
        studyVar5=-2;
        studyVar6=1;
        studyVar7=-8;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 7:
        studyVar1=6;
        studyVar2=3;
        studyVar3=6;
        studyVar4=-5;
        studyVar5=7;
        studyVar6=2;
        studyVar7=6;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 8:
        studyVar1=4;
        studyVar2=4;
        studyVar3=1;
        studyVar4=6;
        studyVar5=5;
        studyVar6=6;
        studyVar7=-5;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 9:
        studyVar1=7;
        studyVar2=2;
        studyVar3=6;
        studyVar4=3;
        studyVar5=1;
        studyVar6=-7;
        studyVar7=5;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 10:
        studyVar1=8;
        studyVar2=-6;
        studyVar3=2;
        studyVar4=6;
        studyVar5=7;
        studyVar6=1;
        studyVar7=-6;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 11:
        studyVar1=5;
        studyVar2=2;
        studyVar3=2;
        studyVar4=6;
        studyVar5=-4;
        studyVar6=3;
        studyVar7=2;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 12:
        studyVar1=7;
        studyVar2=3;
        studyVar3=4;
        studyVar4=6;
        studyVar5=3;
        studyVar6=6;
        studyVar7=6;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 13:
        studyVar1=8;
        studyVar2=1;
        studyVar3=6;
        studyVar4=3;
        studyVar5=1;
        studyVar6=-7;
        studyVar7=-2;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 14:
        studyVar1=1;
        studyVar2=3;
        studyVar3=6;
        studyVar4=4;
        studyVar5=6;
        studyVar6=7;
        studyVar7=2;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 15:
        studyVar1=4;
        studyVar2=3;
        studyVar3=2;
        studyVar4=6;
        studyVar5=1;
        studyVar6=2;
        studyVar7=-3;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 16:
        studyVar1=6;
        studyVar2=2;
        studyVar3=1;
        studyVar4=6;
        studyVar5=4;
        studyVar6=6;
        studyVar7=-5;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 17:
        studyVar1=5;
        studyVar2=5;
        studyVar3=6;
        studyVar4=3;
        studyVar5=6;
        studyVar6=2;
        studyVar7=-2;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 18:
        studyVar1=3;
        studyVar2=3;
        studyVar3=3;
        studyVar4=6;
        studyVar5=-5;
        studyVar6=3;
        studyVar7=-2;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 19:
        studyVar1=7;
        studyVar2=2;
        studyVar3=-9;
        studyVar4=4;
        studyVar5=6;
        studyVar6=5;
        studyVar7=-5;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 20:
        studyVar1=5;
        studyVar2=2;
        studyVar3=1;
        studyVar4=1;
        studyVar5=6;
        studyVar6=4;
        studyVar7=-8;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 21:
        studyVar1=2;
        studyVar2=3;
        studyVar3=4;
        studyVar4=6;
        studyVar5=3;
        studyVar6=1;
        studyVar7=1;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 22:
        studyVar1=3;
        studyVar2=1;
        studyVar3=6;
        studyVar4=6;
        studyVar5=-6;
        studyVar6=3;
        studyVar7=1;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 23:
        studyVar1=9;
        studyVar2=6;
        studyVar3=3;
        studyVar4=-8;
        studyVar5=9;
        studyVar6=-7;
        studyVar7=5;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 24:
        studyVar1=1;
        studyVar2=3;
        studyVar3=6;
        studyVar4=4;
        studyVar5=6;
        studyVar6=8;
        studyVar7=1;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 25:
        studyVar1=6;
        studyVar2=3;
        studyVar3=6;
        studyVar4=3;
        studyVar5=-7;
        studyVar6=6;
        studyVar7=-2;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 26:
        studyVar1=3;
        studyVar2=5;
        studyVar3=1;
        studyVar4=6;
        studyVar5=4;
        studyVar6=-7;
        studyVar7=5;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 27:
        studyVar1=2;
        studyVar2=2;
        studyVar3=6;
        studyVar4=1;
        studyVar5=7;
        studyVar6=-7;
        studyVar7=3;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 28:
        studyVar1=1;
        studyVar2=1;
        studyVar3=2;
        studyVar4=6;
        studyVar5=6;
        studyVar6=-1;
        studyVar7=4;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 29:
        studyVar1=6;
        studyVar2=1;
        studyVar3=2;
        studyVar4=6;
        studyVar5=-5;
        studyVar6=2;
        studyVar7=5;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 30:
        studyVar1=5;
        studyVar2=4;
        studyVar3=6;
        studyVar4=-5;
        studyVar5=3;
        studyVar6=1;
        studyVar7=6;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      default:
        print('Unknown fruit.');
    }
    emit(ChoseState());
  }

  choseStudyExampleForPlus10Plus7(int x){

    switch (x) {
      case 1:
        studyVar1=7;
        studyVar2=2;
        studyVar3=7;
        studyVar4=-1;
        studyVar5=-5;
        studyVar6=6;
        studyVar7=7;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 2:
        studyVar1=4;
        studyVar2=5;
        studyVar3=7;
        studyVar4=-6;
        studyVar5=4;
        studyVar6=7;
        studyVar7=8;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 3:
        studyVar1=5;
        studyVar2=3;
        studyVar3=7;
        studyVar4=4;
        studyVar5=6;
        studyVar6=2;
        studyVar7=-5;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 4:
        studyVar1=3;
        studyVar2=3;
        studyVar3=7;
        studyVar4=1;
        studyVar5=-2;
        studyVar6=-1;
        studyVar7=7;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 5:
        studyVar1=2;
        studyVar2=7;
        studyVar3=7;
        studyVar4=-5;
        studyVar5=3;
        studyVar6=7;
        studyVar7=-1;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 6:
        studyVar1=1;
        studyVar2=6;
        studyVar3=-2;
        studyVar4=3;
        studyVar5=7;
        studyVar6=5;
        studyVar7=9;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 7:
        studyVar1=9;
        studyVar2=7;
        studyVar3=2;
        studyVar4=-3;
        studyVar5=4;
        studyVar6=7;
        studyVar7=3;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 8:
        studyVar1=6;
        studyVar2=3;
        studyVar3=7;
        studyVar4=-6;
        studyVar5=8;
        studyVar6=7;
        studyVar7=4;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 9:
        studyVar1=8;
        studyVar2=7;
        studyVar3=4;
        studyVar4=-3;
        studyVar5=2;
        studyVar6=5;
        studyVar7=1;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 10:
        studyVar1=7;
        studyVar2=2;
        studyVar3=7;
        studyVar4=-5;
        studyVar5=3;
        studyVar6=5;
        studyVar7=-9;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 11:
        studyVar1=7;
        studyVar2=2;
        studyVar3=7;
        studyVar4=-6;
        studyVar5=1;
        studyVar6=3;
        studyVar7=7;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 12:
        studyVar1=8;
        studyVar2=7;
        studyVar3=4;
        studyVar4=1;
        studyVar5=5;
        studyVar6=3;
        studyVar7=7;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 13:
        studyVar1=9;
        studyVar2=7;
        studyVar3=3;
        studyVar4=-7;
        studyVar5=2;
        studyVar6=7;
        studyVar7=-1;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 14:
        studyVar1=1;
        studyVar2=1;
        studyVar3=2;
        studyVar4=7;
        studyVar5=8;
        studyVar6=-7;
        studyVar7=-2;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 15:
        studyVar1=6;
        studyVar2=2;
        studyVar3=7;
        studyVar4=3;
        studyVar5=7;
        studyVar6=2;
        studyVar7=-1;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 16:
        studyVar1=1;
        studyVar2=3;
        studyVar3=7;
        studyVar4=5;
        studyVar5=2;
        studyVar6=7;
        studyVar7=3;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 17:
        studyVar1=2;
        studyVar2=2;
        studyVar3=7;
        studyVar4=7;
        studyVar5=1;
        studyVar6=7;
        studyVar7=3;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 18:
        studyVar1=3;
        studyVar2=3;
        studyVar3=3;
        studyVar4=7;
        studyVar5=-6;
        studyVar6=8;
        studyVar7=1;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 19:
        studyVar1=4;
        studyVar2=7;
        studyVar3=5;
        studyVar4=-1;
        studyVar5=-5;
        studyVar6=3;
        studyVar7=7;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 20:
        studyVar1=5;
        studyVar2=4;
        studyVar3=7;
        studyVar4=3;
        studyVar5=-5;
        studyVar6=7;
        studyVar7=2;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 21:
        studyVar1=2;
        studyVar2=2;
        studyVar3=7;
        studyVar4=-1;
        studyVar5=6;
        studyVar6=3;
        studyVar7=7;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 22:
        studyVar1=4;
        studyVar2=5;
        studyVar3=7;
        studyVar4=-6;
        studyVar5=2;
        studyVar6=1;
        studyVar7=-3;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 23:
        studyVar1=6;
        studyVar2=3;
        studyVar3=7;
        studyVar4=3;
        studyVar5=1;
        studyVar6=8;
        studyVar7=7;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 24:
        studyVar1=8;
        studyVar2=7;
        studyVar3=4;
        studyVar4=7;
        studyVar5=2;
        studyVar6=7;
        studyVar7=2;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 25:
        studyVar1=1;
        studyVar2=3;
        studyVar3=7;
        studyVar4=7;
        studyVar5=7;
        studyVar6=4;
        studyVar7=7;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 26:
        studyVar1=3;
        studyVar2=7;
        studyVar3=3;
        studyVar4=7;
        studyVar5=8;
        studyVar6=7;
        studyVar7=4;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 27:
        studyVar1=5;
        studyVar2=-5;
        studyVar3=8;
        studyVar4=7;
        studyVar5=2;
        studyVar6=-5;
        studyVar7=2;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 28:
        studyVar1=7;
        studyVar2=2;
        studyVar3=7;
        studyVar4=3;
        studyVar5=7;
        studyVar6=2;
        studyVar7=1;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 29:
        studyVar1=9;
        studyVar2=7;
        studyVar3=3;
        studyVar4=7;
        studyVar5=-6;
        studyVar6=3;
        studyVar7=7;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 30:
        studyVar1=3;
        studyVar2=7;
        studyVar3=9;
        studyVar4=7;
        studyVar5=2;
        studyVar6=-3;
        studyVar7=4;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      default:
        print('Unknown fruit.');
    }
    emit(ChoseState());
  }

  choseStudyExampleForPlus10Plus8(int x){

    switch (x) {
      case 1:
        studyVar1=6;
        studyVar2=-6;
        studyVar3=5;
        studyVar4=4;
        studyVar5=7;
        studyVar6=3;
        studyVar7=-8;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 2:
        studyVar1=7;
        studyVar2=2;
        studyVar3=7;
        studyVar4=-6;
        studyVar5=3;
        studyVar6=3;
        studyVar7=2;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 3:
        studyVar1=8;
        studyVar2=7;
        studyVar3=3;
        studyVar4=-6;
        studyVar5=1;
        studyVar6=5;
        studyVar7=1;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 4:
        studyVar1=9;
        studyVar2=7;
        studyVar3=2;
        studyVar4=-8;
        studyVar5=6;
        studyVar6=1;
        studyVar7=-2;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 5:
        studyVar1=5;
        studyVar2=4;
        studyVar3=7;
        studyVar4=2;
        studyVar5=-5;
        studyVar6=1;
        studyVar7=5;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 6:
        studyVar1=1;
        studyVar2=1;
        studyVar3=8;
        studyVar4=3;
        studyVar5=5;
        studyVar6=8;
        studyVar7=2;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 7:
        studyVar1=2;
        studyVar2=8;
        studyVar3=4;
        studyVar4=5;
        studyVar5=8;
        studyVar6=-6;
        studyVar7=3;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 8:
        studyVar1=3;
        studyVar2=8;
        studyVar3=5;
        studyVar4=3;
        studyVar5=8;
        studyVar6=-7;
        studyVar7=1;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 9:
        studyVar1=4;
        studyVar2=8;
        studyVar3=5;
        studyVar4=8;
        studyVar5=3;
        studyVar6=8;
        studyVar7=-5;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 10:
        studyVar1=5;
        studyVar2=4;
        studyVar3=8;
        studyVar4=8;
        studyVar5=1;
        studyVar6=2;
        studyVar7=-8;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 11:
        studyVar1=7;
        studyVar2=8;
        studyVar3=3;
        studyVar4=8;
        studyVar5=3;
        studyVar6=8;
        studyVar7=8;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 12:
        studyVar1=9;
        studyVar2=8;
        studyVar3=8;
        studyVar4=3;
        studyVar5=-7;
        studyVar6=3;
        studyVar7=5;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 13:
        studyVar1=3;
        studyVar2=5;
        studyVar3=8;
        studyVar4=3;
        studyVar5=-8;
        studyVar6=5;
        studyVar7=-1;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 14:
        studyVar1=5;
        studyVar2=4;
        studyVar3=8;
        studyVar4=-7;
        studyVar5=3;
        studyVar6=-2;
        studyVar7=-1;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 15:
        studyVar1=2;
        studyVar2=2;
        studyVar3=-1;
        studyVar4=8;
        studyVar5=5;
        studyVar6=2;
        studyVar7=8;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 16:
        studyVar1=6;
        studyVar2=2;
        studyVar3=8;
        studyVar4=2;
        studyVar5=8;
        studyVar6=3;
        studyVar7=8;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 17:
        studyVar1=1;
        studyVar2=3;
        studyVar3=8;
        studyVar4=5;
        studyVar5=8;
        studyVar6=3;
        studyVar7=8;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 18:
        studyVar1=4;
        studyVar2=8;
        studyVar3=5;
        studyVar4=8;
        studyVar5=4;
        studyVar6=-7;
        studyVar7=-2;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 19:
        studyVar1=6;
        studyVar2=-6;
        studyVar3=8;
        studyVar4=8;
        studyVar5=3;
        studyVar6=-2;
        studyVar7=1;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 20:
        studyVar1=8;
        studyVar2=1;
        studyVar3=-1;
        studyVar4=8;
        studyVar5=2;
        studyVar6=1;
        studyVar7=8;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 21:
        studyVar1=7;
        studyVar2=8;
        studyVar3=3;
        studyVar4=8;
        studyVar5=3;
        studyVar6=8;
        studyVar7=1;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 22:
        studyVar1=7;
        studyVar2=8;
        studyVar3=2;
        studyVar4=-7;
        studyVar5=4;
        studyVar6=8;
        studyVar7=5;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 23:
        studyVar1=1;
        studyVar2=3;
        studyVar3=8;
        studyVar4=2;
        studyVar5=-4;
        studyVar6=5;
        studyVar7=3;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 24:
        studyVar1=3;
        studyVar2=8;
        studyVar3=3;
        studyVar4=-4;
        studyVar5=7;
        studyVar6=1;
        studyVar7=8;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 25:
        studyVar1=9;
        studyVar2=8;
        studyVar3=2;
        studyVar4=8;
        studyVar5=8;
        studyVar6=3;
        studyVar7=8;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 26:
        studyVar1=9;
        studyVar2=8;
        studyVar3=2;
        studyVar4=8;
        studyVar5=8;
        studyVar6=4;
        studyVar7=8;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 27:
        studyVar1=7;
        studyVar2=2;
        studyVar3=8;
        studyVar4=2;
        studyVar5=-7;
        studyVar6=2;
        studyVar7=8;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 28:
        studyVar1=1;
        studyVar2=3;
        studyVar3=8;
        studyVar4=2;
        studyVar5=8;
        studyVar6=5;
        studyVar7=-6;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 29:
        studyVar1=7;
        studyVar2=2;
        studyVar3=8;
        studyVar4=2;
        studyVar5=8;
        studyVar6=-6;
        studyVar7=7;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 30:
        studyVar1=9;
        studyVar2=8;
        studyVar3=2;
        studyVar4=8;
        studyVar5=1;
        studyVar6=8;
        studyVar7=-5;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 31:
        studyVar1=7;
        studyVar2=8;
        studyVar3=4;
        studyVar4=-3;
        studyVar5=2;
        studyVar6=8;
        studyVar7=-1;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 32:
        studyVar1=1;
        studyVar2=3;
        studyVar3=8;
        studyVar4=2;
        studyVar5=-4;
        studyVar6=2;
        studyVar7=8;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 33:
        studyVar1=5;
        studyVar2=3;
        studyVar3=8;
        studyVar4=-6;
        studyVar5=3;
        studyVar6=5;
        studyVar7=8;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 34:
        studyVar1=9;
        studyVar2=8;
        studyVar3=8;
        studyVar4=3;
        studyVar5=1;
        studyVar6=-9;
        studyVar7=1;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 35:
        studyVar1=1;
        studyVar2=3;
        studyVar3=5;
        studyVar4=8;
        studyVar5=-2;
        studyVar6=4;
        studyVar7=8;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 36:
        studyVar1=8;
        studyVar2=8;
        studyVar3=1;
        studyVar4=8;
        studyVar5=3;
        studyVar6=-8;
        studyVar7=3;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 37:
        studyVar1=3;
        studyVar2=5;
        studyVar3=8;
        studyVar4=3;
        studyVar5=8;
        studyVar6=2;
        studyVar7=1;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 38:
        studyVar1=3;
        studyVar2=3;
        studyVar3=2;
        studyVar4=8;
        studyVar5=2;
        studyVar6=8;
        studyVar7=3;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 39:
        studyVar1=6;
        studyVar2=3;
        studyVar3=8;
        studyVar4=-2;
        studyVar5=1;
        studyVar6=1;
        studyVar7=4;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 40:
        studyVar1=8;
        studyVar2=8;
        studyVar3=2;
        studyVar4=1;
        studyVar5=8;
        studyVar6=8;
        studyVar7=4;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      default:
        print('Unknown fruit.');
    }
    emit(ChoseState());
  }

  choseStudyExampleForPlus10Plus9(int x){

    switch (x) {
      case 1:
        studyVar1=6;
        studyVar2=9;
        studyVar3=4;
        studyVar4=1;
        studyVar5=3;
        studyVar6=9;
        studyVar7=6;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 2:
        studyVar1=7;
        studyVar2=9;
        studyVar3=3;
        studyVar4=9;
        studyVar5=-5;
        studyVar6=-3;
        studyVar7=9;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 3:
        studyVar1=8;
        studyVar2=9;
        studyVar3=9;
        studyVar4=-5;
        studyVar5=9;
        studyVar6=2;
        studyVar7=-1;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 4:
        studyVar1=9;
        studyVar2=9;
        studyVar3=-5;
        studyVar4=9;
        studyVar5=5;
        studyVar6=2;
        studyVar7=9;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 5:
        studyVar1=1;
        studyVar2=9;
        studyVar3=3;
        studyVar4=5;
        studyVar5=9;
        studyVar6=2;
        studyVar7=9;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 6:
        studyVar1=1;
        studyVar2=3;
        studyVar3=9;
        studyVar4=9;
        studyVar5=5;
        studyVar6=-7;
        studyVar7=3;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 7:
        studyVar1=2;
        studyVar2=1;
        studyVar3=9;
        studyVar4=5;
        studyVar5=9;
        studyVar6=2;
        studyVar7=9;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 8:
        studyVar1=3;
        studyVar2=9;
        studyVar3=5;
        studyVar4=-2;
        studyVar5=4;
        studyVar6=9;
        studyVar7=9;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 9:
        studyVar1=4;
        studyVar2=5;
        studyVar3=9;
        studyVar4=1;
        studyVar5=9;
        studyVar6=1;
        studyVar7=9;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 10:
        studyVar1=5;
        studyVar2=1;
        studyVar3=9;
        studyVar4=4;
        studyVar5=-7;
        studyVar6=-2;
        studyVar7=1;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 11:
        studyVar1=5;
        studyVar2=4;
        studyVar3=9;
        studyVar4=9;
        studyVar5=2;
        studyVar6=-6;
        studyVar7=3;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 12:
        studyVar1=6;
        studyVar2=9;
        studyVar3=4;
        studyVar4=1;
        studyVar5=7;
        studyVar6=1;
        studyVar7=9;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 13:
        studyVar1=7;
        studyVar2=9;
        studyVar3=2;
        studyVar4=2;
        studyVar5=6;
        studyVar6=9;
        studyVar7=4;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 14:
        studyVar1=8;
        studyVar2=9;
        studyVar3=9;
        studyVar4=3;
        studyVar5=9;
        studyVar6=9;
        studyVar7=2;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 15:
        studyVar1=9;
        studyVar2=9;
        studyVar3=1;
        studyVar4=9;
        studyVar5=-7;
        studyVar6=3;
        studyVar7=-3;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 16:
        studyVar1=1;
        studyVar2=8;
        studyVar3=9;
        studyVar4=1;
        studyVar5=-7;
        studyVar6=5;
        studyVar7=9;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 17:
        studyVar1=2;
        studyVar2=7;
        studyVar3=9;
        studyVar4=-6;
        studyVar5=7;
        studyVar6=9;
        studyVar7=1;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 18:
        studyVar1=3;
        studyVar2=6;
        studyVar3=9;
        studyVar4=-1;
        studyVar5=2;
        studyVar6=9;
        studyVar7=1;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 19:
        studyVar1=4;
        studyVar2=5;
        studyVar3=9;
        studyVar4=-8;
        studyVar5=3;
        studyVar6=9;
        studyVar7=7;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 20:
        studyVar1=6;
        studyVar2=1;
        studyVar3=9;
        studyVar4=3;
        studyVar5=1;
        studyVar6=6;
        studyVar7=1;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 21:
        studyVar1=3;
        studyVar2=5;
        studyVar3=9;
        studyVar4=2;
        studyVar5=-2;
        studyVar6=6;
        studyVar7=2;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 22:
        studyVar1=5;
        studyVar2=4;
        studyVar3=9;
        studyVar4=9;
        studyVar5=-7;
        studyVar6=3;
        studyVar7=1;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 23:
        studyVar1=7;
        studyVar2=2;
        studyVar3=9;
        studyVar4=9;
        studyVar5=2;
        studyVar6=-3;
        studyVar7=-6;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 24:
        studyVar1=9;
        studyVar2=9;
        studyVar3=1;
        studyVar4=9;
        studyVar5=-6;
        studyVar6=-2;
        studyVar7=5;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 25:
        studyVar1=1;
        studyVar2=5;
        studyVar3=9;
        studyVar4=3;
        studyVar5=9;
        studyVar6=1;
        studyVar7=1;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 26:
        studyVar1=1;
        studyVar2=1;
        studyVar3=2;
        studyVar4=9;
        studyVar5=5;
        studyVar6=-3;
        studyVar7=-5;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 27:
        studyVar1=2;
        studyVar2=9;
        studyVar3=3;
        studyVar4=5;
        studyVar5=9;
        studyVar6=-7;
        studyVar7=-1;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 28:
        studyVar1=4;
        studyVar2=5;
        studyVar3=9;
        studyVar4=1;
        studyVar5=9;
        studyVar6=-8;
        studyVar7=6;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 29:
        studyVar1=7;
        studyVar2=9;
        studyVar3=3;
        studyVar4=7;
        studyVar5=-1;
        studyVar6=3;
        studyVar7=-5;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 30:
        studyVar1=9;
        studyVar2=9;
        studyVar3=9;
        studyVar4=1;
        studyVar5=1;
        studyVar6=1;
        studyVar7=9;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;

      default:
        print('Unknown fruit.');
    }
    emit(ChoseState());
  }

  choseStudyExampleForPlus10Minus1(int x){

    switch (x) {
      case 1:
        studyVar1=11;
        studyVar2=-1;
        studyVar3=-1;
        studyVar4=-9;
        studyVar5=2;
        studyVar6=5;
        studyVar7=2;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 2:
        studyVar1=15;
        studyVar2=-5;
        studyVar3=-1;
        studyVar4=-2;
        studyVar5=-6;
        studyVar6=12;
        studyVar7=-2;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 3:
        studyVar1=23;
        studyVar2=-3;
        studyVar3=-1;
        studyVar4=-7;
        studyVar5=-2;
        studyVar6=-1;
        studyVar7=-2;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 4:
        studyVar1=16;
        studyVar2=-6;
        studyVar3=-1;
        studyVar4=9;
        studyVar5=-8;
        studyVar6=-1;
        studyVar7=-7;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 5:
        studyVar1=21;
        studyVar2=-1;
        studyVar3=-1;
        studyVar4=-9;
        studyVar5=10;
        studyVar6=-1;
        studyVar7=-4;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 6:
        studyVar1=36;
        studyVar2=-6;
        studyVar3=-1;
        studyVar4=-7;
        studyVar5=-2;
        studyVar6=-1;
        studyVar7=-8;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 7:
        studyVar1=8;
        studyVar2=1;
        studyVar3=30;
        studyVar4=-7;
        studyVar5=-2;
        studyVar6=-1;
        studyVar7=-2;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 8:
        studyVar1=6;
        studyVar2=-6;
        studyVar3=8;
        studyVar4=-1;
        studyVar5=-7;
        studyVar6=10;
        studyVar7=-1;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 9:
        studyVar1=25;
        studyVar2=-5;
        studyVar3=-1;
        studyVar4=-6;
        studyVar5=-33;
        studyVar6=-1;
        studyVar7=-6;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 10:
        studyVar1=38;
        studyVar2=-7;
        studyVar3=-1;
        studyVar4=-1;
        studyVar5=-8;
        studyVar6=-1;
        studyVar7=-1;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 11:
        studyVar1=9;
        studyVar2=-5;
        studyVar3=5;
        studyVar4=10;
        studyVar5=-9;
        studyVar6=-1;
        studyVar7=-2;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 12:
        studyVar1=8;
        studyVar2=1;
        studyVar3=-3;
        studyVar4=-1;
        studyVar5=24;
        studyVar6=-9;
        studyVar7=-1;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 13:
        studyVar1=2;
        studyVar2=6;
        studyVar3=30;
        studyVar4=-8;
        studyVar5=-1;
        studyVar6=-3;
        studyVar7=3;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 14:
        studyVar1=6;
        studyVar2=3;
        studyVar3=40;
        studyVar4=-5;
        studyVar5=-3;
        studyVar6=-1;
        studyVar7=-1;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 15:
        studyVar1=8;
        studyVar2=1;
        studyVar3=-7;
        studyVar4=72;
        studyVar5=-4;
        studyVar6=-1;
        studyVar7=-7;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 16:
        studyVar1=41;
        studyVar2=-1;
        studyVar3=-1;
        studyVar4=-9;
        studyVar5=4;
        studyVar6=5;
        studyVar7=-2;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 17:
        studyVar1=75;
        studyVar2=-5;
        studyVar3=-1;
        studyVar4=-3;
        studyVar5=-6;
        studyVar6=12;
        studyVar7=-2;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 18:
        studyVar1=3;
        studyVar2=-3;
        studyVar3=11;
        studyVar4=-1;
        studyVar5=-1;
        studyVar6=-1;
        studyVar7=21;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 19:
        studyVar1=56;
        studyVar2=-6;
        studyVar3=-1;
        studyVar4=-9;
        studyVar5=-1;
        studyVar6=-1;
        studyVar7=-7;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 20:
        studyVar1=41;
        studyVar2=-1;
        studyVar3=-1;
        studyVar4=-9;
        studyVar5=51;
        studyVar6=-4;
        studyVar7=-1;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 21:
        studyVar1=7;
        studyVar2=2;
        studyVar3=10;
        studyVar4=-9;
        studyVar5=-1;
        studyVar6=-9;
        studyVar7=43;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 22:
        studyVar1=42;
        studyVar2=5;
        studyVar3=-6;
        studyVar4=-1;
        studyVar5=-1;
        studyVar6=-2;
        studyVar7=-5;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 23:
        studyVar1=9;
        studyVar2=-8;
        studyVar3=22;
        studyVar4=-3;
        studyVar5=-1;
        studyVar6=-7;
        studyVar7=32;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 24:
        studyVar1=9;
        studyVar2=-1;
        studyVar3=11;
        studyVar4=-9;
        studyVar5=-1;
        studyVar6=30;
        studyVar7=-6;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 25:
        studyVar1=7;
        studyVar2=-7;
        studyVar3=4;
        studyVar4=15;
        studyVar5=-9;
        studyVar6=-1;
        studyVar7=60;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 26:
        studyVar1=3;
        studyVar2=5;
        studyVar3=-1;
        studyVar4=20;
        studyVar5=-7;
        studyVar6=-1;
        studyVar7=30;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 27:
        studyVar1=9;
        studyVar2=10;
        studyVar3=-9;
        studyVar4=-1;
        studyVar5=50;
        studyVar6=-9;
        studyVar7=-1;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 28:
        studyVar1=3;
        studyVar2=-1;
        studyVar3=5;
        studyVar4=72;
        studyVar5=-9;
        studyVar6=-1;
        studyVar7=-60;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 29:
        studyVar1=9;
        studyVar2=-7;
        studyVar3=22;
        studyVar4=-4;
        studyVar5=-1;
        studyVar6=-4;
        studyVar7=3;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 30:
        studyVar1=8;
        studyVar2=-7;
        studyVar3=15;
        studyVar4=-6;
        studyVar5=-1;
        studyVar6=-4;
        studyVar7=3;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;

      default:
        print('Unknown fruit.');
    }
    emit(ChoseState());
  }

  choseStudyExampleForPlus10Minus2(int x){

    switch (x) {
      case 1:
        studyVar1=27;
        studyVar2=-5;
        studyVar3=-1;
        studyVar4=-1;
        studyVar5=-1;
        studyVar6=-13;
        studyVar7=53;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 2:
        studyVar1=5;
        studyVar2=-5;
        studyVar3=1;
        studyVar4=-8;
        studyVar5=10;
        studyVar6=-9;
        studyVar7=-1;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 3:
        studyVar1=37;
        studyVar2=-6;
        studyVar3=-1;
        studyVar4=-1;
        studyVar5=-19;
        studyVar6=30;
        studyVar7=-1;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 4:
        studyVar1=7;
        studyVar2=2;
        studyVar3=-9;
        studyVar4=10;
        studyVar5=-1;
        studyVar6=-2;
        studyVar7=-1;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 5:
        studyVar1=31;
        studyVar2=8;
        studyVar3=-8;
        studyVar4=-1;
        studyVar5=-1;
        studyVar6=20;
        studyVar7=-6;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 6:
        studyVar1=25;
        studyVar2=-5;
        studyVar3=-2;
        studyVar4=-8;
        studyVar5=-2;
        studyVar6=21;
        studyVar7=-6;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 7:
        studyVar1=17;
        studyVar2=-2;
        studyVar3=-5;
        studyVar4=-2;
        studyVar5=1;
        studyVar6=10;
        studyVar7=-4;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 8:
        studyVar1=28;
        studyVar2=-8;
        studyVar3=-2;
        studyVar4=1;
        studyVar5=-9;
        studyVar6=-2;
        studyVar7=1;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 9:
        studyVar1=15;
        studyVar2=-5;
        studyVar3=-2;
        studyVar4=-8;
        studyVar5=10;
        studyVar6=-2;
        studyVar7=20;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 10:
        studyVar1=27;
        studyVar2=-7;
        studyVar3=-2;
        studyVar4=-8;
        studyVar5=-2;
        studyVar6=20;
        studyVar7=-8;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 11:
        studyVar1=11;
        studyVar2=-1;
        studyVar3=-2;
        studyVar4=20;
        studyVar5=1;
        studyVar6=-9;
        studyVar7=-2;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 12:
        studyVar1=66;
        studyVar2=-56;
        studyVar3=-2;
        studyVar4=-10;
        studyVar5=-8;
        studyVar6=-2;
        studyVar7=1;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 13:
        studyVar1=13;
        studyVar2=-3;
        studyVar3=-2;
        studyVar4=20;
        studyVar5=-8;
        studyVar6=-2;
        studyVar7=11;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 14:
        studyVar1=44;
        studyVar2=-4;
        studyVar3=-2;
        studyVar4=-8;
        studyVar5=-2;
        studyVar6=-8;
        studyVar7=-2;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 15:
        studyVar1=95;
        studyVar2=-5;
        studyVar3=-2;
        studyVar4=-8;
        studyVar5=-2;
        studyVar6=-22;
        studyVar7=-51;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 16:
        studyVar1=12;
        studyVar2=-2;
        studyVar3=-2;
        studyVar4=20;
        studyVar5=-8;
        studyVar6=-2;
        studyVar7=20;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 17:
        studyVar1=22;
        studyVar2=-2;
        studyVar3=-2;
        studyVar4=-8;
        studyVar5=-2;
        studyVar6=20;
        studyVar7=-6;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 18:
        studyVar1=21;
        studyVar2=-1;
        studyVar3=-2;
        studyVar4=-8;
        studyVar5=-2;
        studyVar6=20;
        studyVar7=10;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 19:
        studyVar1=19;
        studyVar2=-9;
        studyVar3=-2;
        studyVar4=31;
        studyVar5=-9;
        studyVar6=-2;
        studyVar7=1;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 20:
        studyVar1=24;
        studyVar2=-4;
        studyVar3=-2;
        studyVar4=1;
        studyVar5=-9;
        studyVar6=-2;
        studyVar7=51;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 21:
        studyVar1=23;
        studyVar2=-3;
        studyVar3=-2;
        studyVar4=-8;
        studyVar5=-2;
        studyVar6=21;
        studyVar7=-19;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 22:
        studyVar1=29;
        studyVar2=-9;
        studyVar3=-2;
        studyVar4=-8;
        studyVar5=-2;
        studyVar6=-8;
        studyVar7=54;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 23:
        studyVar1=14;
        studyVar2=5;
        studyVar3=-9;
        studyVar4=-2;
        studyVar5=21;
        studyVar6=-9;
        studyVar7=-2;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 24:
        studyVar1=18;
        studyVar2=-8;
        studyVar3=-2;
        studyVar4=20;
        studyVar5=-8;
        studyVar6=-2;
        studyVar7=20;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 25:
        studyVar1=99;
        studyVar2=-9;
        studyVar3=-2;
        studyVar4=-8;
        studyVar5=-2;
        studyVar6=-8;
        studyVar7=-2;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 26:
        studyVar1=12;
        studyVar2=-2;
        studyVar3=-2;
        studyVar4=20;
        studyVar5=-8;
        studyVar6=-2;
        studyVar7=11;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 27:
        studyVar1=28;
        studyVar2=-8;
        studyVar3=-2;
        studyVar4=-8;
        studyVar5=-2;
        studyVar6=21;
        studyVar7=-14;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 28:
        studyVar1=23;
        studyVar2=-3;
        studyVar3=-2;
        studyVar4=11;
        studyVar5=-9;
        studyVar6=-2;
        studyVar7=1;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 29:
        studyVar1=19;
        studyVar2=-9;
        studyVar3=-2;
        studyVar4=21;
        studyVar5=-9;
        studyVar6=-2;
        studyVar7=-7;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 30:
        studyVar1=11;
        studyVar2=-1;
        studyVar3=-2;
        studyVar4=31;
        studyVar5=-9;
        studyVar6=-2;
        studyVar7=-5;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 31:
        studyVar1=11;
        studyVar2=-1;
        studyVar3=-2;
        studyVar4=21;
        studyVar5=-9;
        studyVar6=-2;
        studyVar7=31;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 32:
        studyVar1=24;
        studyVar2=-4;
        studyVar3=-2;
        studyVar4=-8;
        studyVar5=-2;
        studyVar6=1;
        studyVar7=-7;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 33:
        studyVar1=41;
        studyVar2=-1;
        studyVar3=-2;
        studyVar4=-8;
        studyVar5=-2;
        studyVar6=-23;
        studyVar7=-5;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 34:
        studyVar1=66;
        studyVar2=-6;
        studyVar3=-2;
        studyVar4=21;
        studyVar5=-9;
        studyVar6=-2;
        studyVar7=11;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 35:
        studyVar1=79;
        studyVar2=-9;
        studyVar3=-2;
        studyVar4=-7;
        studyVar5=-11;
        studyVar6=27;
        studyVar7=-7;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 36:
        studyVar1=71;
        studyVar2=-1;
        studyVar3=-2;
        studyVar4=-8;
        studyVar5=-2;
        studyVar6=20;
        studyVar7=-5;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 37:
        studyVar1=14;
        studyVar2=-4;
        studyVar3=-2;
        studyVar4=30;
        studyVar5=-8;
        studyVar6=-2;
        studyVar7=1;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 38:
        studyVar1=27;
        studyVar2=-7;
        studyVar3=-2;
        studyVar4=-8;
        studyVar5=-2;
        studyVar6=70;
        studyVar7=-1;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 39:
        studyVar1=61;
        studyVar2=-1;
        studyVar3=-2;
        studyVar4=-8;
        studyVar5=21;
        studyVar6=-1;
        studyVar7=-2;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 40:
        studyVar1=68;
        studyVar2=-8;
        studyVar3=-2;
        studyVar4=1;
        studyVar5=20;
        studyVar6=-9;
        studyVar7=1;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      default:
        print('Unknown fruit.');
    }
    emit(ChoseState());
  }

  choseStudyExampleForPlus10Minus3(int x){

    switch (x) {
      case 1:
        studyVar1=19;
        studyVar2=-4;
        studyVar3=-5;
        studyVar4=-3;
        studyVar5=-22;
        studyVar6=-9;
        studyVar7=-3;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 2:
        studyVar1=34;
        studyVar2=-4;
        studyVar3=-3;
        studyVar4=51;
        studyVar5=-8;
        studyVar6=-3;
        studyVar7=2;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 3:
        studyVar1=66;
        studyVar2=-6;
        studyVar3=-3;
        studyVar4=2;
        studyVar5=-4;
        studyVar6=10;
        studyVar7=-5;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 4:
        studyVar1=65;
        studyVar2=2;
        studyVar3=-7;
        studyVar4=-3;
        studyVar5=12;
        studyVar6=-9;
        studyVar7=-3;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 5:
        studyVar1=41;
        studyVar2=-1;
        studyVar3=-3;
        studyVar4=-7;
        studyVar5=-3;
        studyVar6=2;
        studyVar7=-23;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 6:
        studyVar1=23;
        studyVar2=-3;
        studyVar3=-3;
        studyVar4=11;
        studyVar5=-8;
        studyVar6=-3;
        studyVar7=2;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 7:
        studyVar1=14;
        studyVar2=-4;
        studyVar3=-3;
        studyVar4=20;
        studyVar5=-7;
        studyVar6=-3;
        studyVar7=-10;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 8:
        studyVar1=6;
        studyVar2=3;
        studyVar3=20;
        studyVar4=-9;
        studyVar5=-3;
        studyVar6=1;
        studyVar7=-8;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 9:
        studyVar1=5;
        studyVar2=12;
        studyVar3=-7;
        studyVar4=-3;
        studyVar5=12;
        studyVar6=-9;
        studyVar7=-3;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 10:
        studyVar1=16;
        studyVar2=2;
        studyVar3=-8;
        studyVar4=-3;
        studyVar5=2;
        studyVar6=60;
        studyVar7=9;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 11:
        studyVar1=60;
        studyVar2=-3;
        studyVar3=21;
        studyVar4=-8;
        studyVar5=-3;
        studyVar6=-7;
        studyVar7=-3;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 12:
        studyVar1=57;
        studyVar2=21;
        studyVar3=-8;
        studyVar4=-3;
        studyVar5=-7;
        studyVar6=-3;
        studyVar7=32;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 13:
        studyVar1=89;
        studyVar2=-9;
        studyVar3=-3;
        studyVar4=11;
        studyVar5=-8;
        studyVar6=-3;
        studyVar7=-15;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 14:
        studyVar1=62;
        studyVar2=-2;
        studyVar3=-3;
        studyVar4=20;
        studyVar5=-7;
        studyVar6=-3;
        studyVar7=12;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 15:
        studyVar1=79;
        studyVar2=-9;
        studyVar3=-3;
        studyVar4=11;
        studyVar5=-8;
        studyVar6=-3;
        studyVar7=1;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 16:
        studyVar1=68;
        studyVar2=-8;
        studyVar3=-3;
        studyVar4=21;
        studyVar5=-8;
        studyVar6=-3;
        studyVar7=11;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 17:
        studyVar1=78;
        studyVar2=-8;
        studyVar3=-3;
        studyVar4=11;
        studyVar5=-8;
        studyVar6=-3;
        studyVar7=-7;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 18:
        studyVar1=60;
        studyVar2=25;
        studyVar3=-5;
        studyVar4=-3;
        studyVar5=-7;
        studyVar6=-3;
        studyVar7=32;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 19:
        studyVar1=99;
        studyVar2=-9;
        studyVar3=-3;
        studyVar4=-7;
        studyVar5=-3;
        studyVar6=11;
        studyVar7=-8;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 20:
        studyVar1=80;
        studyVar2=2;
        studyVar3=-3;
        studyVar4=-8;
        studyVar5=-3;
        studyVar6=10;
        studyVar7=10;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 21:
        studyVar1=7;
        studyVar2=72;
        studyVar3=-8;
        studyVar4=-3;
        studyVar5=10;
        studyVar6=-8;
        studyVar7=-3;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 22:
        studyVar1=67;
        studyVar2=-5;
        studyVar3=-3;
        studyVar4=30;
        studyVar5=-9;
        studyVar6=-3;
        studyVar7=2;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 23:
        studyVar1=79;
        studyVar2=-7;
        studyVar3=-3;
        studyVar4=-8;
        studyVar5=-3;
        studyVar6=31;
        studyVar7=-65;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 24:
        studyVar1=24;
        studyVar2=-4;
        studyVar3=-3;
        studyVar4=11;
        studyVar5=-8;
        studyVar6=-3;
        studyVar7=12;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 25:
        studyVar1=29;
        studyVar2=-7;
        studyVar3=-3;
        studyVar4=-8;
        studyVar5=-3;
        studyVar6=61;
        studyVar7=-64;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 26:
        studyVar1=5;
        studyVar2=13;
        studyVar3=-7;
        studyVar4=-3;
        studyVar5=71;
        studyVar6=-9;
        studyVar7=-3;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 27:
        studyVar1=67;
        studyVar2=-6;
        studyVar3=-3;
        studyVar4=21;
        studyVar5=-9;
        studyVar6=-3;
        studyVar7=1;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 28:
        studyVar1=68;
        studyVar2=-7;
        studyVar3=-3;
        studyVar4=20;
        studyVar5=-8;
        studyVar6=-3;
        studyVar7=1;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 29:
        studyVar1=79;
        studyVar2=-8;
        studyVar3=-3;
        studyVar4=11;
        studyVar5=-6;
        studyVar6=-3;
        studyVar7=4;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 30:
        studyVar1=74;
        studyVar2=-4;
        studyVar3=-3;
        studyVar4=12;
        studyVar5=10;
        studyVar6=-9;
        studyVar7=-3;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;

      default:
        print('Unknown fruit.');
    }
    emit(ChoseState());
  }

  choseStudyExampleForPlus10Minus4(int x){

    switch (x) {
      case 1:
        studyVar1=68;
        studyVar2=-5;
        studyVar3=-4;
        studyVar4=-8;
        studyVar5=21;
        studyVar6=-4;
        studyVar7=11;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 2:
        studyVar1=25;
        studyVar2=-5;
        studyVar3=-4;
        studyVar4=-5;
        studyVar5=-4;
        studyVar6=21;
        studyVar7=-8;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 3:
        studyVar1=20;
        studyVar2=-4;
        studyVar3=2;
        studyVar4=-8;
        studyVar5=-4;
        studyVar6=22;
        studyVar7=-12;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 4:
        studyVar1=2;
        studyVar2=11;
        studyVar3=-5;
        studyVar4=-4;
        studyVar5=20;
        studyVar6=-7;
        studyVar7=-4;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 5:
        studyVar1=16;
        studyVar2=-5;
        studyVar3=-4;
        studyVar4=22;
        studyVar5=-9;
        studyVar6=-4;
        studyVar7=23;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 6:
        studyVar1=39;
        studyVar2=-7;
        studyVar3=-4;
        studyVar4=-5;
        studyVar5=-4;
        studyVar6=20;
        studyVar7=-19;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 7:
        studyVar1=20;
        studyVar2=-4;
        studyVar3=11;
        studyVar4=-5;
        studyVar5=-4;
        studyVar6=20;
        studyVar7=-33;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 8:
        studyVar1=5;
        studyVar2=9;
        studyVar3=10;
        studyVar4=-9;
        studyVar5=-4;
        studyVar6=21;
        studyVar7=-6;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 9:
        studyVar1=21;
        studyVar2=-4;
        studyVar3=-5;
        studyVar4=-4;
        studyVar5=21;
        studyVar6=-9;
        studyVar7=-4;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 10:
        studyVar1=16;
        studyVar2=-6;
        studyVar3=-4;
        studyVar4=21;
        studyVar5=-21;
        studyVar6=-6;
        studyVar7=25;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 11:
        studyVar1=7;
        studyVar2=21;
        studyVar3=-5;
        studyVar4=-4;
        studyVar5=-9;
        studyVar6=-4;
        studyVar7=21;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 12:
        studyVar1=27;
        studyVar2=-5;
        studyVar3=-4;
        studyVar4=-5;
        studyVar5=-4;
        studyVar6=-7;
        studyVar7=21;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 13:
        studyVar1=23;
        studyVar2=-4;
        studyVar3=-7;
        studyVar4=-4;
        studyVar5=60;
        studyVar6=-8;
        studyVar7=-4;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 14:
        studyVar1=56;
        studyVar2=11;
        studyVar3=-5;
        studyVar4=-4;
        studyVar5=21;
        studyVar6=-9;
        studyVar7=-4;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 15:
        studyVar1=66;
        studyVar2=-5;
        studyVar3=-4;
        studyVar4=11;
        studyVar5=-6;
        studyVar6=-4;
        studyVar7=11;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 16:
        studyVar1=69;
        studyVar2=-6;
        studyVar3=-4;
        studyVar4=-9;
        studyVar5=11;
        studyVar6=15;
        studyVar7=-5;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 17:
        studyVar1=71;
        studyVar2=-4;
        studyVar3=-5;
        studyVar4=-4;
        studyVar5=11;
        studyVar6=-9;
        studyVar7=-4;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 18:
        studyVar1=56;
        studyVar2=-5;
        studyVar3=21;
        studyVar4=-4;
        studyVar5=10;
        studyVar6=-8;
        studyVar7=-4;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 19:
        studyVar1=66;
        studyVar2=-6;
        studyVar3=-4;
        studyVar4=21;
        studyVar5=-6;
        studyVar6=-4;
        studyVar7=1;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 20:
        studyVar1=68;
        studyVar2=-55;
        studyVar3=-4;
        studyVar4=20;
        studyVar5=-9;
        studyVar6=-4;
        studyVar7=-5;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 21:
        studyVar1=56;
        studyVar2=20;
        studyVar3=-5;
        studyVar4=-4;
        studyVar5=11;
        studyVar6=-5;
        studyVar7=-4;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 22:
        studyVar1=69;
        studyVar2=-9;
        studyVar3=-4;
        studyVar4=10;
        studyVar5=-5;
        studyVar6=-4;
        studyVar7=12;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 23:
        studyVar1=69;
        studyVar2=-4;
        studyVar3=-5;
        studyVar4=-4;
        studyVar5=21;
        studyVar6=-5;
        studyVar7=-4;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 24:
        studyVar1=68;
        studyVar2=-5;
        studyVar3=-4;
        studyVar4=20;
        studyVar5=-72;
        studyVar6=11;
        studyVar7=-8;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 25:
        studyVar1=10;
        studyVar2=-4;
        studyVar3=11;
        studyVar4=-5;
        studyVar5=-4;
        studyVar6=71;
        studyVar7=-9;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 26:
        studyVar1=70;
        studyVar2=-4;
        studyVar3=1;
        studyVar4=-51;
        studyVar5=-5;
        studyVar6=-4;
        studyVar7=21;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 27:
        studyVar1=28;
        studyVar2=-10;
        studyVar3=-5;
        studyVar4=-4;
        studyVar5=20;
        studyVar6=-7;
        studyVar7=-4;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 28:
        studyVar1=18;
        studyVar2=-6;
        studyVar3=-4;
        studyVar4=61;
        studyVar5=-8;
        studyVar6=-4;
        studyVar7=12;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 29:
        studyVar1=69;
        studyVar2=-8;
        studyVar3=-4;
        studyVar4=21;
        studyVar5=-5;
        studyVar6=-4;
        studyVar7=-5;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 30:
        studyVar1=64;
        studyVar2=-4;
        studyVar3=-4;
        studyVar4=-5;
        studyVar5=20;
        studyVar6=-10;
        studyVar7=-4;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;

      default:
        print('Unknown fruit.');
    }
    emit(ChoseState());
  }

  choseStudyExampleForPlus10Minus5(int x){

    switch (x) {
      case 1:
        studyVar1=35;
        studyVar2=4;
        studyVar3=-9;
        studyVar4=-4;
        studyVar5=-5;
        studyVar6=-4;
        studyVar7=2;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 2:
        studyVar1=19;
        studyVar2=-5;
        studyVar3=-1;
        studyVar4=-4;
        studyVar5=20;
        studyVar6=-10;
        studyVar7=60;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 3:
        studyVar1=79;
        studyVar2=-5;
        studyVar3=-2;
        studyVar4=-4;
        studyVar5=-7;
        studyVar6=-4;
        studyVar7=21;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 4:
        studyVar1=78;
        studyVar2=-5;
        studyVar3=-1;
        studyVar4=-4;
        studyVar5=11;
        studyVar6=-9;
        studyVar7=-4;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 5:
        studyVar1=66;
        studyVar2=-6;
        studyVar3=1;
        studyVar4=1;
        studyVar5=-4;
        studyVar6=21;
        studyVar7=20;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 6:
        studyVar1=99;
        studyVar2=-5;
        studyVar3=-5;
        studyVar4=-9;
        studyVar5=-5;
        studyVar6=4;
        studyVar7=-66;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 7:
        studyVar1=13;
        studyVar2=-5;
        studyVar3=21;
        studyVar4=-6;
        studyVar5=-5;
        studyVar6=-8;
        studyVar7=-5;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 8:
        studyVar1=5;
        studyVar2=4;
        studyVar3=20;
        studyVar4=-7;
        studyVar5=-5;
        studyVar6=-6;
        studyVar7=-5;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 9:
        studyVar1=6;
        studyVar2=21;
        studyVar3=-6;
        studyVar4=-5;
        studyVar5=21;
        studyVar6=-7;
        studyVar7=-5;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 10:
        studyVar1=25;
        studyVar2=-5;
        studyVar3=-5;
        studyVar4=24;
        studyVar5=-9;
        studyVar6=-5;
        studyVar7=4;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 11:
        studyVar1=17;
        studyVar2=-7;
        studyVar3=-5;
        studyVar4=63;
        studyVar5=-7;
        studyVar6=-5;
        studyVar7=43;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 12:
        studyVar1=99;
        studyVar2=-15;
        studyVar3=-5;
        studyVar4=-8;
        studyVar5=-5;
        studyVar6=13;
        studyVar7=-14;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 13:
        studyVar1=65;
        studyVar2=-5;
        studyVar3=-5;
        studyVar4=22;
        studyVar5=-7;
        studyVar6=-5;
        studyVar7=14;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 14:
        studyVar1=79;
        studyVar2=-9;
        studyVar3=-5;
        studyVar4=11;
        studyVar5=-16;
        studyVar6=-5;
        studyVar7=24;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 15:
        studyVar1=79;
        studyVar2=-5;
        studyVar3=-5;
        studyVar4=10;
        studyVar5=-54;
        studyVar6=-5;
        studyVar7=-5;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 16:
        studyVar1=15;
        studyVar2=-5;
        studyVar3=-5;
        studyVar4=91;
        studyVar5=-15;
        studyVar6=-5;
        studyVar7=22;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 17:
        studyVar1=98;
        studyVar2=-8;
        studyVar3=-5;
        studyVar4=4;
        studyVar5=-19;
        studyVar6=-5;
        studyVar7=33;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 18:
        studyVar1=89;
        studyVar2=-16;
        studyVar3=-5;
        studyVar4=11;
        studyVar5=-9;
        studyVar6=-5;
        studyVar7=23;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 19:
        studyVar1=88;
        studyVar2=-55;
        studyVar3=-5;
        studyVar4=11;
        studyVar5=-32;
        studyVar6=-5;
        studyVar7=10;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 20:
        studyVar1=12;
        studyVar2=-5;
        studyVar3=42;
        studyVar4=50;
        studyVar5=-91;
        studyVar6=-6;
        studyVar7=11;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 21:
        studyVar1=69;
        studyVar2=-9;
        studyVar3=-5;
        studyVar4=4;
        studyVar5=-8;
        studyVar6=-5;
        studyVar7=21;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 22:
        studyVar1=77;
        studyVar2=-6;
        studyVar3=-5;
        studyVar4=-16;
        studyVar5=24;
        studyVar6=-5;
        studyVar7=10;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 23:
        studyVar1=78;
        studyVar2=-7;
        studyVar3=-5;
        studyVar4=1;
        studyVar5=-11;
        studyVar6=41;
        studyVar7=-7;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 24:
        studyVar1=90;
        studyVar2=-5;
        studyVar3=-5;
        studyVar4=-5;
        studyVar5=22;
        studyVar6=-12;
        studyVar7=-5;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 25:
        studyVar1=80;
        studyVar2=-5;
        studyVar3=2;
        studyVar4=-7;
        studyVar5=-5;
        studyVar6=11;
        studyVar7=-6;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 26:
        studyVar1=70;
        studyVar2=-5;
        studyVar3=-5;
        studyVar4=-5;
        studyVar5=42;
        studyVar6=-15;
        studyVar7=-5;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 27:
        studyVar1=77;
        studyVar2=-7;
        studyVar3=-5;
        studyVar4=4;
        studyVar5=-7;
        studyVar6=-5;
        studyVar7=41;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 28:
        studyVar1=98;
        studyVar2=-18;
        studyVar3=5;
        studyVar4=14;
        studyVar5=-19;
        studyVar6=-5;
        studyVar7=10;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 29:
        studyVar1=75;
        studyVar2=-5;
        studyVar3=-5;
        studyVar4=11;
        studyVar5=-16;
        studyVar6=-5;
        studyVar7=4;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 30:
        studyVar1=95;
        studyVar2=-9;
        studyVar3=14;
        studyVar4=-5;
        studyVar5=20;
        studyVar6=-9;
        studyVar7=-5;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 31:
        studyVar1=85;
        studyVar2=-15;
        studyVar3=-5;
        studyVar4=11;
        studyVar5=-16;
        studyVar6=-5;
        studyVar7=32;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 32:
        studyVar1=87;
        studyVar2=-27;
        studyVar3=-5;
        studyVar4=11;
        studyVar5=-65;
        studyVar6=21;
        studyVar7=-5;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 33:
        studyVar1=17;
        studyVar2=-6;
        studyVar3=-5;
        studyVar4=21;
        studyVar5=-17;
        studyVar6=-5;
        studyVar7=24;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 34:
        studyVar1=29;
        studyVar2=-9;
        studyVar3=-5;
        studyVar4=11;
        studyVar5=-6;
        studyVar6=-5;
        studyVar7=14;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 35:
        studyVar1=29;
        studyVar2=-9;
        studyVar3=-5;
        studyVar4=-5;
        studyVar5=-5;
        studyVar6=32;
        studyVar7=11;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 36:
        studyVar1=48;
        studyVar2=-8;
        studyVar3=-5;
        studyVar4=-15;
        studyVar5=-5;
        studyVar6=-13;
        studyVar7=11;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 37:
        studyVar1=39;
        studyVar2=-17;
        studyVar3=-5;
        studyVar4=-17;
        studyVar5=42;
        studyVar6=-5;
        studyVar7=11;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 38:
        studyVar1=48;
        studyVar2=-27;
        studyVar3=-5;
        studyVar4=31;
        studyVar5=-35;
        studyVar6=-5;
        studyVar7=41;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 39:
        studyVar1=49;
        studyVar2=-17;
        studyVar3=-5;
        studyVar4=-7;
        studyVar5=-5;
        studyVar6=12;
        studyVar7=-16;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 40:
        studyVar1=11;
        studyVar2=-5;
        studyVar3=41;
        studyVar4=-6;
        studyVar5=-5;
        studyVar6=12;
        studyVar7=-43;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;

      default:
        print('Unknown fruit.');
    }
    emit(ChoseState());
  }

  choseStudyExampleForPlus10Minus6(int x){

    switch (x) {
      case 1:
        studyVar1=14;
        studyVar2=20;
        studyVar3=-14;
        studyVar4=-6;
        studyVar5=5;
        studyVar6=10;
        studyVar7=-19;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 2:
        studyVar1=10;
        studyVar2=-6;
        studyVar3=25;
        studyVar4=-7;
        studyVar5=-6;
        studyVar6=11;
        studyVar7=-2;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 3:
        studyVar1=25;
        studyVar2=-6;
        studyVar3=-9;
        studyVar4=-6;
        studyVar5=25;
        studyVar6=-19;
        studyVar7=-6;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 4:
        studyVar1=44;
        studyVar2=-4;
        studyVar3=-6;
        studyVar4=15;
        studyVar5=-29;
        studyVar6=-6;
        studyVar7=15;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 5:
        studyVar1=29;
        studyVar2=-4;
        studyVar3=-6;
        studyVar4=-8;
        studyVar5=-6;
        studyVar6=22;
        studyVar7=11;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 6:
        studyVar1=45;
        studyVar2=-6;
        studyVar3=10;
        studyVar4=-23;
        studyVar5=-1;
        studyVar6=-6;
        studyVar7=20;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 7:
        studyVar1=39;
        studyVar2=-9;
        studyVar3=-6;
        studyVar4=15;
        studyVar5=-19;
        studyVar6=-6;
        studyVar7=15;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 8:
        studyVar1=29;
        studyVar2=-9;
        studyVar3=-6;
        studyVar4=15;
        studyVar5=-14;
        studyVar6=-6;
        studyVar7=20;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 9:
        studyVar1=42;
        studyVar2=-2;
        studyVar3=-6;
        studyVar4=15;
        studyVar5=-34;
        studyVar6=-6;
        studyVar7=30;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 10:
        studyVar1=21;
        studyVar2=-1;
        studyVar3=-6;
        studyVar4=15;
        studyVar5=-19;
        studyVar6=-6;
        studyVar7=25;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 11:
        studyVar1=60;
        studyVar2=-6;
        studyVar3=25;
        studyVar4=-9;
        studyVar5=-6;
        studyVar6=15;
        studyVar7=10;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 12:
        studyVar1=89;
        studyVar2=-19;
        studyVar3=-6;
        studyVar4=-4;
        studyVar5=-6;
        studyVar6=15;
        studyVar7=-17;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 13:
        studyVar1=52;
        studyVar2=21;
        studyVar3=-3;
        studyVar4=-6;
        studyVar5=15;
        studyVar6=-9;
        studyVar7=-6;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 14:
        studyVar1=64;
        studyVar2=-4;
        studyVar3=-6;
        studyVar4=10;
        studyVar5=5;
        studyVar6=-9;
        studyVar7=-6;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 15:
        studyVar1=54;
        studyVar2=35;
        studyVar3=-9;
        studyVar4=-6;
        studyVar5=10;
        studyVar6=-4;
        studyVar7=-6;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 16:
        studyVar1=74;
        studyVar2=-4;
        studyVar3=-6;
        studyVar4=5;
        studyVar5=20;
        studyVar6=-9;
        studyVar7=-6;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 17:
        studyVar1=82;
        studyVar2=-2;
        studyVar3=-6;
        studyVar4=5;
        studyVar5=10;
        studyVar6=-73;
        studyVar7=-15;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 18:
        studyVar1=1;
        studyVar2=21;
        studyVar3=-2;
        studyVar4=-6;
        studyVar5=25;
        studyVar6=60;
        studyVar7=-44;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 19:
        studyVar1=55;
        studyVar2=21;
        studyVar3=-6;
        studyVar4=-6;
        studyVar5=-4;
        studyVar6=-6;
        studyVar7=20;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 20:
        studyVar1=74;
        studyVar2=-4;
        studyVar3=-6;
        studyVar4=20;
        studyVar5=-24;
        studyVar6=-6;
        studyVar7=15;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 21:
        studyVar1=59;
        studyVar2=-9;
        studyVar3=22;
        studyVar4=-2;
        studyVar5=-6;
        studyVar6=-4;
        studyVar7=-6;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 22:
        studyVar1=54;
        studyVar2=10;
        studyVar3=-54;
        studyVar4=-6;
        studyVar5=25;
        studyVar6=-9;
        studyVar7=-6;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 23:
        studyVar1=14;
        studyVar2=-4;
        studyVar3=-6;
        studyVar4=30;
        studyVar5=-24;
        studyVar6=-6;
        studyVar7=55;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 24:
        studyVar1=79;
        studyVar2=-9;
        studyVar3=-6;
        studyVar4=15;
        studyVar5=10;
        studyVar6=-34;
        studyVar7=21;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 25:
        studyVar1=76;
        studyVar2=-6;
        studyVar3=-6;
        studyVar4=-4;
        studyVar5=-6;
        studyVar6=25;
        studyVar7=10;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 26:
        studyVar1=89;
        studyVar2=-9;
        studyVar3=-6;
        studyVar4=5;
        studyVar5=-9;
        studyVar6=-6;
        studyVar7=20;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 27:
        studyVar1=84;
        studyVar2=-4;
        studyVar3=-6;
        studyVar4=15;
        studyVar5=-34;
        studyVar6=11;
        studyVar7=-6;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 28:
        studyVar1=60;
        studyVar2=-6;
        studyVar3=25;
        studyVar4=-9;
        studyVar5=-6;
        studyVar6=10;
        studyVar7=-71;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 29:
        studyVar1=3;
        studyVar2=26;
        studyVar3=-9;
        studyVar4=-6;
        studyVar5=-4;
        studyVar6=-6;
        studyVar7=10;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 30:
        studyVar1=14;
        studyVar2=15;
        studyVar3=-9;
        studyVar4=-6;
        studyVar5=15;
        studyVar6=-14;
        studyVar7=-6;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;


      default:
        print('Unknown fruit.');
    }
    emit(ChoseState());
  }

  choseStudyExampleForPlus10Minus7(int x){

    switch (x) {
      case 1:
        studyVar1=4;
        studyVar2=15;
        studyVar3=-4;
        studyVar4=-7;
        studyVar5=21;
        studyVar6=-4;
        studyVar7=-7;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 2:
        studyVar1=18;
        studyVar2=-8;
        studyVar3=-7;
        studyVar4=5;
        studyVar5=21;
        studyVar6=-4;
        studyVar7=-7;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 3:
        studyVar1=32;
        studyVar2=-2;
        studyVar3=-7;
        studyVar4=-3;
        studyVar5=-7;
        studyVar6=11;
        studyVar7=55;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 4:
        studyVar1=79;
        studyVar2=-9;
        studyVar3=-7;
        studyVar4=-3;
        studyVar5=-7;
        studyVar6=35;
        studyVar7=-35;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 5:
        studyVar1=53;
        studyVar2=21;
        studyVar3=-4;
        studyVar4=-7;
        studyVar5=-3;
        studyVar6=-7;
        studyVar7=15;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 6:
        studyVar1=68;
        studyVar2=-3;
        studyVar3=-7;
        studyVar4=21;
        studyVar5=-4;
        studyVar6=-7;
        studyVar7=11;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 7:
        studyVar1=79;
        studyVar2=-9;
        studyVar3=-7;
        studyVar4=11;
        studyVar5=-4;
        studyVar6=-7;
        studyVar7=35;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 8:
        studyVar1=98;
        studyVar2=-3;
        studyVar3=-7;
        studyVar4=11;
        studyVar5=-44;
        studyVar6=10;
        studyVar7=-7;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 9:
        studyVar1=58;
        studyVar2=11;
        studyVar3=-4;
        studyVar4=-7;
        studyVar5=31;
        studyVar6=-4;
        studyVar7=-7;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 10:
        studyVar1=78;
        studyVar2=-8;
        studyVar3=-7;
        studyVar4=15;
        studyVar5=-8;
        studyVar6=-7;
        studyVar7=15;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 11:
        studyVar1=53;
        studyVar2=11;
        studyVar3=-4;
        studyVar4=-7;
        studyVar5=25;
        studyVar6=-75;
        studyVar7=10;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 12:
        studyVar1=13;
        studyVar2=-3;
        studyVar3=-7;
        studyVar4=55;
        studyVar5=11;
        studyVar6=-4;
        studyVar7=-7;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 13:
        studyVar1=58;
        studyVar2=21;
        studyVar3=-4;
        studyVar4=-5;
        studyVar5=-7;
        studyVar6=11;
        studyVar7=15;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 14:
        studyVar1=89;
        studyVar2=-4;
        studyVar3=-7;
        studyVar4=-8;
        studyVar5=-7;
        studyVar6=15;
        studyVar7=-2;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 15:
        studyVar1=76;
        studyVar2=-6;
        studyVar3=-7;
        studyVar4=10;
        studyVar5=-3;
        studyVar6=-7;
        studyVar7=25;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 16:
        studyVar1=88;
        studyVar2=-8;
        studyVar3=-7;
        studyVar4=15;
        studyVar5=-21;
        studyVar6=-2;
        studyVar7=-7;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 17:
        studyVar1=18;
        studyVar2=-5;
        studyVar3=-3;
        studyVar4=10;
        studyVar5=-7;
        studyVar6=-53;
        studyVar7=33;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 18:
        studyVar1=33;
        studyVar2=-3;
        studyVar3=-7;
        studyVar4=15;
        studyVar5=51;
        studyVar6=-4;
        studyVar7=-7;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 19:
        studyVar1=78;
        studyVar2=-3;
        studyVar3=-7;
        studyVar4=11;
        studyVar5=-75;
        studyVar6=15;
        studyVar7=-7;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 20:
        studyVar1=12;
        studyVar2=-2;
        studyVar3=-7;
        studyVar4=35;
        studyVar5=-21;
        studyVar6=-2;
        studyVar7=-7;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 21:
        studyVar1=79;
        studyVar2=-9;
        studyVar3=-7;
        studyVar4=-3;
        studyVar5=-7;
        studyVar6=11;
        studyVar7=-4;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 22:
        studyVar1=60;
        studyVar2=-7;
        studyVar3=6;
        studyVar4=10;
        studyVar5=-4;
        studyVar6=-7;
        studyVar7=21;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 23:
        studyVar1=79;
        studyVar2=-4;
        studyVar3=-7;
        studyVar4=11;
        studyVar5=-14;
        studyVar6=-7;
        studyVar7=11;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 24:
        studyVar1=69;
        studyVar2=-9;
        studyVar3=-7;
        studyVar4=15;
        studyVar5=-8;
        studyVar6=-7;
        studyVar7=25;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 25:
        studyVar1=78;
        studyVar2=-3;
        studyVar3=-7;
        studyVar4=1;
        studyVar5=10;
        studyVar6=-9;
        studyVar7=-7;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 26:
        studyVar1=63;
        studyVar2=-3;
        studyVar3=-7;
        studyVar4=25;
        studyVar5=-13;
        studyVar6=-7;
        studyVar7=31;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 27:
        studyVar1=89;
        studyVar2=-9;
        studyVar3=-7;
        studyVar4=15;
        studyVar5=-31;
        studyVar6=11;
        studyVar7=11;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 28:
        studyVar1=77;
        studyVar2=-7;
        studyVar3=-7;
        studyVar4=-3;
        studyVar5=-7;
        studyVar6=15;
        studyVar7=-63;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 29:
        studyVar1=5;
        studyVar2=14;
        studyVar3=-9;
        studyVar4=-7;
        studyVar5=26;
        studyVar6=-9;
        studyVar7=-7;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 30:
        studyVar1=13;
        studyVar2=-3;
        studyVar3=-7;
        studyVar4=5;
        studyVar5=60;
        studyVar6=-8;
        studyVar7=-7;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;


      default:
        print('Unknown fruit.');
    }
    emit(ChoseState());
  }

  choseStudyExampleForPlus10Minus8(int x){

    switch (x) {
      case 1:
        studyVar1=69;
        studyVar2=-4;
        studyVar3=-7;
        studyVar4=1;
        studyVar5=30;
        studyVar6=-9;
        studyVar7=-7;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 2:
        studyVar1=73;
        studyVar2=-3;
        studyVar3=-7;
        studyVar4=-3;
        studyVar5=-7;
        studyVar6=35;
        studyVar7=11;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 3:
        studyVar1=99;
        studyVar2=-34;
        studyVar3=-7;
        studyVar4=21;
        studyVar5=-9;
        studyVar6=-7;
        studyVar7=15;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 4:
        studyVar1=78;
        studyVar2=-3;
        studyVar3=-7;
        studyVar4=11;
        studyVar5=-4;
        studyVar6=-7;
        studyVar7=1;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 5:
        studyVar1=69;
        studyVar2=-4;
        studyVar3=-7;
        studyVar4=10;
        studyVar5=-13;
        studyVar6=33;
        studyVar7=10;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 6:
        studyVar1=55;
        studyVar2=21;
        studyVar3=-8;
        studyVar4=-8;
        studyVar5=-8;
        studyVar6=15;
        studyVar7=-6;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 7:
        studyVar1=61;
        studyVar2=-8;
        studyVar3=31;
        studyVar4=-3;
        studyVar5=-8;
        studyVar6=15;
        studyVar7=-88;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 8:
        studyVar1=10;
        studyVar2=-8;
        studyVar3=66;
        studyVar4=-7;
        studyVar5=-8;
        studyVar6=11;
        studyVar7=15;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 9:
        studyVar1=79;
        studyVar2=-6;
        studyVar3=-3;
        studyVar4=-8;
        studyVar5=-8;
        studyVar6=20;
        studyVar7=-24;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 10:
        studyVar1=50;
        studyVar2=27;
        studyVar3=-8;
        studyVar4=-3;
        studyVar5=-6;
        studyVar6=8;
        studyVar7=12;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 11:
        studyVar1=79;
        studyVar2=-9;
        studyVar3=-8;
        studyVar4=16;
        studyVar5=11;
        studyVar6=-9;
        studyVar7=-8;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 12:
        studyVar1=72;
        studyVar2=-8;
        studyVar3=25;
        studyVar4=-9;
        studyVar5=-8;
        studyVar6=-8;
        studyVar7=10;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 13:
        studyVar1=74;
        studyVar2=-4;
        studyVar3=-8;
        studyVar4=12;
        studyVar5=-74;
        studyVar6=14;
        studyVar7=15;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 14:
        studyVar1=29;
        studyVar2=-19;
        studyVar3=-8;
        studyVar4=25;
        studyVar5=-8;
        studyVar6=60;
        studyVar7=10;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 15:
        studyVar1=89;
        studyVar2=-18;
        studyVar3=-8;
        studyVar4=-3;
        studyVar5=-8;
        studyVar6=2;
        studyVar7=35;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 16:
        studyVar1=89;
        studyVar2=-85;
        studyVar3=-4;
        studyVar4=12;
        studyVar5=8;
        studyVar6=25;
        studyVar7=-14;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 17:
        studyVar1=15;
        studyVar2=-8;
        studyVar3=61;
        studyVar4=-7;
        studyVar5=8;
        studyVar6=21;
        studyVar7=-70;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 18:
        studyVar1=4;
        studyVar2=20;
        studyVar3=-3;
        studyVar4=-8;
        studyVar5=11;
        studyVar6=5;
        studyVar7=60;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 19:
        studyVar1=98;
        studyVar2=-2;
        studyVar3=-8;
        studyVar4=-7;
        studyVar5=8;
        studyVar6=5;
        studyVar7=-1;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 20:
        studyVar1=77;
        studyVar2=-8;
        studyVar3=10;
        studyVar4=-13;
        studyVar5=8;
        studyVar6=-50;
        studyVar7=-21;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 21:
        studyVar1=69;
        studyVar2=-4;
        studyVar3=-8;
        studyVar4=22;
        studyVar5=-7;
        studyVar6=-8;
        studyVar7=15;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 22:
        studyVar1=79;
        studyVar2=-3;
        studyVar3=-8;
        studyVar4=-10;
        studyVar5=21;
        studyVar6=-4;
        studyVar7=-8;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 23:
        studyVar1=67;
        studyVar2=-8;
        studyVar3=-52;
        studyVar4=32;
        studyVar5=-4;
        studyVar6=-8;
        studyVar7=-8;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 24:
        studyVar1=67;
        studyVar2=-8;
        studyVar3=-4;
        studyVar4=11;
        studyVar5=-8;
        studyVar6=21;
        studyVar7=10;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 25:
        studyVar1=89;
        studyVar2=-4;
        studyVar3=-8;
        studyVar4=-8;
        studyVar5=-9;
        studyVar6=-8;
        studyVar7=17;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 26:
        studyVar1=69;
        studyVar2=-9;
        studyVar3=-8;
        studyVar4=12;
        studyVar5=-4;
        studyVar6=-8;
        studyVar7=27;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 27:
        studyVar1=79;
        studyVar2=-9;
        studyVar3=-8;
        studyVar4=-8;
        studyVar5=45;
        studyVar6=-45;
        studyVar7=-51;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 28:
        studyVar1=3;
        studyVar2=25;
        studyVar3=-2;
        studyVar4=-8;
        studyVar5=-7;
        studyVar6=-8;
        studyVar7=21;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 29:
        studyVar1=24;
        studyVar2=-4;
        studyVar3=-8;
        studyVar4=-8;
        studyVar5=30;
        studyVar6=55;
        studyVar7=10;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 30:
        studyVar1=99;
        studyVar2=-9;
        studyVar3=-8;
        studyVar4=-8;
        studyVar5=5;
        studyVar6=-24;
        studyVar7=12;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 31:
        studyVar1=2;
        studyVar2=20;
        studyVar3=-8;
        studyVar4=-4;
        studyVar5=-8;
        studyVar6=55;
        studyVar7=21;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 32:
        studyVar1=78;
        studyVar2=-3;
        studyVar3=-8;
        studyVar4=-8;
        studyVar5=20;
        studyVar6=-65;
        studyVar7=80;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 33:
        studyVar1=94;
        studyVar2=-4;
        studyVar3=-8;
        studyVar4=-8;
        studyVar5=15;
        studyVar6=-22;
        studyVar7=-8;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 34:
        studyVar1=59;
        studyVar2=20;
        studyVar3=-65;
        studyVar4=-3;
        studyVar5=-8;
        studyVar6=10;
        studyVar7=6;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 35:
        studyVar1=19;
        studyVar2=-4;
        studyVar3=-5;
        studyVar4=-8;
        studyVar5=25;
        studyVar6=-7;
        studyVar7=-8;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 36:
        studyVar1=12;
        studyVar2=-8;
        studyVar3=35;
        studyVar4=-3;
        studyVar5=-8;
        studyVar6=-7;
        studyVar7=-8;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 37:
        studyVar1=13;
        studyVar2=-3;
        studyVar3=-8;
        studyVar4=25;
        studyVar5=-7;
        studyVar6=-8;
        studyVar7=-8;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 38:
        studyVar1=4;
        studyVar2=20;
        studyVar3=55;
        studyVar4=-9;
        studyVar5=-8;
        studyVar6=-8;
        studyVar7=15;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 39:
        studyVar1=69;
        studyVar2=-9;
        studyVar3=-8;
        studyVar4=25;
        studyVar5=-2;
        studyVar6=-8;
        studyVar7=-8;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 40:
        studyVar1=59;
        studyVar2=20;
        studyVar3=-4;
        studyVar4=-8;
        studyVar5=-8;
        studyVar6=20;
        studyVar7=-20;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;

      default:
        print('Unknown fruit.');
    }
    emit(ChoseState());
  }

  choseStudyExampleForPlus10Minus9(int x){

    switch (x) {
      case 1:
        studyVar1=10;
        studyVar2=-9;
        studyVar3=65;
        studyVar4=-61;
        studyVar5=82;
        studyVar6=-9;
        studyVar7=-9;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 2:
        studyVar1=69;
        studyVar2=-4;
        studyVar3=-9;
        studyVar4=33;
        studyVar5=-4;
        studyVar6=-9;
        studyVar7=-9;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 3:
        studyVar1=67;
        studyVar2=-9;
        studyVar3=41;
        studyVar4=-4;
        studyVar5=-9;
        studyVar6=-9;
        studyVar7=10;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 4:
        studyVar1=87;
        studyVar2=-9;
        studyVar3=-9;
        studyVar4=20;
        studyVar5=-30;
        studyVar6=20;
        studyVar7=-9;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 5:
        studyVar1=67;
        studyVar2=-2;
        studyVar3=-9;
        studyVar4=21;
        studyVar5=-9;
        studyVar6=-9;
        studyVar7=40;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 6:
        studyVar1=99;
        studyVar2=-9;
        studyVar3=-9;
        studyVar4=-9;
        studyVar5=-9;
        studyVar6=-9;
        studyVar7=40;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 7:
        studyVar1=94;
        studyVar2=-4;
        studyVar3=-9;
        studyVar4=-9;
        studyVar5=22;
        studyVar6=5;
        studyVar7=-45;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 8:
        studyVar1=54;
        studyVar2=20;
        studyVar3=-3;
        studyVar4=-1;
        studyVar5=-9;
        studyVar6=21;
        studyVar7=-9;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 9:
        studyVar1=73;
        studyVar2=-3;
        studyVar3=-9;
        studyVar4=-9;
        studyVar5=31;
        studyVar6=-3;
        studyVar7=-9;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 10:
        studyVar1=71;
        studyVar2=-9;
        studyVar3=-9;
        studyVar4=21;
        studyVar5=25;
        studyVar6=-45;
        studyVar7=10;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 11:
        studyVar1=99;
        studyVar2=-4;
        studyVar3=-5;
        studyVar4=-9;
        studyVar5=11;
        studyVar6=-9;
        studyVar7=-9;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 12:
        studyVar1=74;
        studyVar2=-4;
        studyVar3=-9;
        studyVar4=-9;
        studyVar5=-52;
        studyVar6=47;
        studyVar7=51;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 13:
        studyVar1=98;
        studyVar2=-9;
        studyVar3=-6;
        studyVar4=-9;
        studyVar5=15;
        studyVar6=-81;
        studyVar7=11;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 14:
        studyVar1=19;
        studyVar2=-4;
        studyVar3=-9;
        studyVar4=23;
        studyVar5=-2;
        studyVar6=-9;
        studyVar7=10;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 15:
        studyVar1=28;
        studyVar2=-3;
        studyVar3=-9;
        studyVar4=1;
        studyVar5=-9;
        studyVar6=31;
        studyVar7=10;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 16:
        studyVar1=49;
        studyVar2=-3;
        studyVar3=-5;
        studyVar4=-9;
        studyVar5=9;
        studyVar6=11;
        studyVar7=-32;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 17:
        studyVar1=2;
        studyVar2=21;
        studyVar3=-9;
        studyVar4=5;
        studyVar5=70;
        studyVar6=-64;
        studyVar7=-9;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 18:
        studyVar1=61;
        studyVar2=-9;
        studyVar3=41;
        studyVar4=-9;
        studyVar5=2;
        studyVar6=-9;
        studyVar7=-9;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 19:
        studyVar1=91;
        studyVar2=-8;
        studyVar3=-9;
        studyVar4=31;
        studyVar5=21;
        studyVar6=-9;
        studyVar7=55;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 20:
        studyVar1=58;
        studyVar2=11;
        studyVar3=-51;
        studyVar4=-9;
        studyVar5=30;
        studyVar6=-10;
        studyVar7=-3;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 21:
        studyVar1=28;
        studyVar2=-3;
        studyVar3=-9;
        studyVar4=-9;
        studyVar5=61;
        studyVar6=11;
        studyVar7=-4;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 22:
        studyVar1=75;
        studyVar2=-9;
        studyVar3=-9;
        studyVar4=20;
        studyVar5=1;
        studyVar6=-11;
        studyVar7=-9;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 23:
        studyVar1=58;
        studyVar2=11;
        studyVar3=-3;
        studyVar4=-9;
        studyVar5=-51;
        studyVar6=31;
        studyVar7=-9;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 24:
        studyVar1=28;
        studyVar2=-9;
        studyVar3=-4;
        studyVar4=-9;
        studyVar5=22;
        studyVar6=-10;
        studyVar7=-9;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 25:
        studyVar1=9;
        studyVar2=70;
        studyVar3=-3;
        studyVar4=-6;
        studyVar5=-9;
        studyVar6=21;
        studyVar7=-9;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 26:
        studyVar1=73;
        studyVar2=-3;
        studyVar3=6;
        studyVar4=-9;
        studyVar5=-9;
        studyVar6=21;
        studyVar7=-22;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 27:
        studyVar1=57;
        studyVar2=30;
        studyVar3=-9;
        studyVar4=-9;
        studyVar5=-52;
        studyVar6=12;
        studyVar7=50;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 28:
        studyVar1=79;
        studyVar2=-9;
        studyVar3=-9;
        studyVar4=-9;
        studyVar5=21;
        studyVar6=-9;
        studyVar7=5;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 29:
        studyVar1=69;
        studyVar2=-9;
        studyVar3=10;
        studyVar4=-9;
        studyVar5=-9;
        studyVar6=-52;
        studyVar7=5;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;
      case 30:
        studyVar1=5;
        studyVar2=21;
        studyVar3=-9;
        studyVar4=-9;
        studyVar5=71;
        studyVar6=-63;
        studyVar7=-9;
        answer=studyVar1+studyVar2+studyVar3+studyVar4+studyVar5+studyVar6+studyVar7;
        print('$answer');
        break;


      default:
        print('Unknown fruit.');
    }
    emit(ChoseState());
  }




}
