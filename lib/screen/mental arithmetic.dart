import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mental_arithmetic/cubit/mental%20cubit.dart';
import 'package:mental_arithmetic/cubit/state.dart';
import 'package:mental_arithmetic/screen/game.dart';

class MentalArithmetic extends StatelessWidget {
  const MentalArithmetic({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppState>(
      listener: (context, state) {},
      builder: (context, state) {
        AppCubit cubit = AppCubit.get(context);
        var mediaQuery = MediaQuery.of(context);
        return Scaffold(
          appBar: AppBar(
            title: Text(
              'Smart Abacus',
              style: TextStyle(color: Colors.white),
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(4),
                    child: Container(
                      height: mediaQuery.size.height,
                      width: mediaQuery.size.width,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 214, 225, 237),
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            'عدد الأرقام',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Center(
                            child: Text(
                              '${AppCubit.get(context).numberOfDigit}',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 25),
                            ),
                          ),
                          //Spacer(),
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Material(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  elevation: 25,
                                  clipBehavior: Clip.antiAlias,
                                  child: MaterialButton(
                                    minWidth: 150,
                                    onPressed: () {
                                      AppCubit.get(context)
                                          .decrementNumOfDigit();
                                    },
                                    color: Color.fromARGB(255, 26, 114, 201),
                                    height: 50,
                                    child: Text(
                                      '-'.toUpperCase(),
                                      style: TextStyle(
                                          fontSize: 25, color: Colors.white),
                                    ),
                                  ),
                                ),
                                /*SizedBox(
                                  width: 40,
                                ),*/
                                Spacer(),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Material(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(30),
                                      ),
                                      elevation: 25,
                                      clipBehavior: Clip.antiAlias,
                                      child: MaterialButton(
                                        minWidth: 150,
                                        onPressed: () {
                                          AppCubit.get(context)
                                              .incrementNumOfDigit();
                                        },
                                        color:
                                            Color.fromARGB(255, 26, 114, 201),
                                        height: 50,
                                        child: Text(
                                          '+'.toUpperCase(),
                                          style: TextStyle(
                                              fontSize: 25,
                                              color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                /*SizedBox(
                  height: 15,
                ),*/
                Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'Time :',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                        Text(
                          ' ${cubit.time}',
                          style: TextStyle(fontSize: 25, color: Colors.white),
                        ),
                        SliderTheme(
                          data: SliderTheme.of(context).copyWith(
                            thumbColor: Colors.green,
                            activeTrackColor: Colors.white,
                            inactiveTrackColor: Colors.grey,
                            thumbShape:
                                RoundSliderThumbShape(enabledThumbRadius: 15),
                          ),
                          child: Slider(
                              max: 15,
                              min: 1,
                              value: cubit.time.toDouble(),
                              onChanged: (newLevel) {
                                cubit.changeSliderTime(newLevel.toInt());
                              }),
                        ),
                      ],
                    ),
                    //////
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: (MediaQuery.of(context).size.height-(kBottomNavigationBarHeight+kToolbarHeight))*0.09,
                      child: Row(
                        children: [
                          Text(
                            ' Level : ',
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                          Text(
                            '${cubit.level}',
                            style: TextStyle(fontSize: 25, color: Colors.white),
                          ),
                          SliderTheme(
                            data: SliderTheme.of(context).copyWith(
                              thumbColor: Colors.green,
                              activeTrackColor: Colors.white,
                              inactiveTrackColor: Colors.grey,
                              thumbShape:
                                  RoundSliderThumbShape(enabledThumbRadius: 15),
                            ),
                            child: Slider(
                                max: 3,
                                min: 1,
                                value: cubit.level.toDouble(),
                                onChanged: (newLevel) {
                                  cubit.changeSlider(newLevel.toInt());
                                }),
                          ),
                          Spacer(),
                          Checkbox(
                            value: cubit.sub,
                            onChanged: (x) {
                              cubit.changeSub(x);
                            },
                            activeColor: Colors.green,
                          ),
                          Text(
                            'الطرح',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                (AppCubit.get(context).level == 1)
                    ? (cubit.sub == true)
                        ? Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(4),
                              child: Container(
                                height: mediaQuery.size.height,
                                width: mediaQuery.size.width,
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 214, 225, 237),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(15.0),
                                      child: Text(
                                        'عدد العمليات',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Center(
                                      child: Text(
                                        '${AppCubit.get(context).numberOfOperation}',
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 25),
                                      ),
                                    ),
                                    //Spacer(),
                                    SizedBox(height: 15,),
                                    Padding(
                                      padding: const EdgeInsets.all(20.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Material(
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                            ),
                                            elevation: 25,
                                            clipBehavior: Clip.antiAlias,
                                            child: MaterialButton(
                                              minWidth: 150,
                                              onPressed: () {
                                                AppCubit.get(context)
                                                    .decrementNumOfOperation();
                                                print(
                                                    'nnnn is ${AppCubit.get(context).numberOfOperation}');
                                              },
                                              color: Color.fromARGB(
                                                  255, 26, 114, 201),
                                              height: 50,
                                              child: Text(
                                                '-'.toUpperCase(),
                                                style: TextStyle(
                                                    fontSize: 25,
                                                    color: Colors.white),
                                              ),
                                            ),
                                          ),
                                          /*SizedBox(
                                  width: 40,
                                ),*/
                                          Spacer(),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              Material(
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(30),
                                                ),
                                                elevation: 25,
                                                clipBehavior: Clip.antiAlias,
                                                child: MaterialButton(
                                                  minWidth: 150,
                                                  onPressed: () {
                                                    AppCubit.get(context)
                                                        .incrementNumOfOperation();
                                                  },
                                                  color: Color.fromARGB(
                                                      255, 26, 114, 201),
                                                  height: 50,
                                                  child: Text(
                                                    '+'.toUpperCase(),
                                                    style: TextStyle(
                                                        fontSize: 25,
                                                        color: Colors.white),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          )
                        : Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(4),
                              child: Container(
                                height: mediaQuery.size.height,
                                width: mediaQuery.size.width,
                                decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(15.0),
                                      child: Text(
                                        'عدد العمليات',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Center(
                                      child: Text(
                                        '${AppCubit.get(context).numberOfOperation = 1}',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 25,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    //Spacer(),
                                    SizedBox(height: 15,),
                                    Padding(
                                      padding: const EdgeInsets.all(20.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Material(
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                            ),
                                            elevation: 25,
                                            clipBehavior: Clip.antiAlias,
                                            child: MaterialButton(
                                              minWidth: 150,
                                              onPressed: () {
                                                AppCubit.get(context)
                                                    .decrementNumOfOperation();
                                                print(
                                                    'nnnn is ${AppCubit.get(context).numberOfOperation}');
                                              },
                                              color: Color.fromARGB(
                                                  255, 26, 114, 201),
                                              height: 50,
                                              child: Text(
                                                '-'.toUpperCase(),
                                                style: TextStyle(
                                                    fontSize: 25,
                                                    color: Colors.white),
                                              ),
                                            ),
                                          ),
                                          /*SizedBox(
                                  width: 40,
                                ),*/
                                          Spacer(),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              Material(
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(30),
                                                ),
                                                elevation: 25,
                                                clipBehavior: Clip.antiAlias,
                                                child: MaterialButton(
                                                  minWidth: 150,
                                                  onPressed: () {
                                                    AppCubit.get(context)
                                                        .incrementNumOfOperation();
                                                  },
                                                  color: Color.fromARGB(
                                                      255, 26, 114, 201),
                                                  height: 50,
                                                  child: Text(
                                                    '+'.toUpperCase(),
                                                    style: TextStyle(
                                                        fontSize: 25,
                                                        color: Colors.white),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          )
                    : Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(4),
                    child: Container(
                      height: mediaQuery.size.height,
                      width: mediaQuery.size.width,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 214, 225, 237),
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Text(
                              'عدد العمليات',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Center(
                            child: Text(
                              '${AppCubit.get(context).numberOfOperation}',
                              style: TextStyle(
                                  color: Colors.black, fontSize: 25),
                            ),
                          ),
                          //Spacer(),
                          SizedBox(height: 15,),
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Row(
                              mainAxisAlignment:
                              MainAxisAlignment.center,
                              children: [
                                Material(
                                  shape: RoundedRectangleBorder(
                                    borderRadius:
                                    BorderRadius.circular(30),
                                  ),
                                  elevation: 25,
                                  clipBehavior: Clip.antiAlias,
                                  child: MaterialButton(
                                    minWidth: 150,
                                    onPressed: () {
                                      AppCubit.get(context)
                                          .decrementNumOfOperation();
                                      print(
                                          'nnnn is ${AppCubit.get(context).numberOfOperation}');
                                    },
                                    color: Color.fromARGB(
                                        255, 26, 114, 201),
                                    height: 50,
                                    child: Text(
                                      '-'.toUpperCase(),
                                      style: TextStyle(
                                          fontSize: 25,
                                          color: Colors.white),
                                    ),
                                  ),
                                ),
                                /*SizedBox(
                                  width: 40,
                                ),*/
                                Spacer(),
                                Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.end,
                                  children: [
                                    Material(
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                        BorderRadius.circular(30),
                                      ),
                                      elevation: 25,
                                      clipBehavior: Clip.antiAlias,
                                      child: MaterialButton(
                                        minWidth: 150,
                                        onPressed: () {
                                          AppCubit.get(context)
                                              .incrementNumOfOperation();
                                        },
                                        color: Color.fromARGB(
                                            255, 26, 114, 201),
                                        height: 50,
                                        child: Text(
                                          '+'.toUpperCase(),
                                          style: TextStyle(
                                              fontSize: 25,
                                              color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Material(
                  elevation: 25,
                  child: MaterialButton(
                    onPressed: () {
                      AppCubit(hazem: AppCubit.get(context).numberOfOperation);

                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return Game(
                            numOfDigit: AppCubit.get(context).numberOfDigit,
                            numOfOperation:
                                AppCubit.get(context).numberOfOperation,
                            level: cubit.level,
                            sub: cubit.sub,
                            time: cubit.time,
                          );
                        },
                      ));
                    },
                    color: Colors.green,
                    height: 50,
                    child: Text(
                      'start'.toUpperCase(),
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
