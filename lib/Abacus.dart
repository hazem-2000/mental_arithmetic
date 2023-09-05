import 'package:flutter/material.dart';
import 'package:mental_arithmetic/cubit/mental%20cubit.dart';

class MyCon extends StatefulWidget {
  const MyCon({Key? key}) : super(key: key);

  @override
  State<MyCon> createState() => _MyConState();
}

class _MyConState extends State<MyCon> {

  @override
  Widget build(BuildContext context) {
    AppCubit cubit=AppCubit.get(context);
    myBox(Color x){
      return BoxDecoration(
        color: x,
        border: Border.all(
            color: x,
            width: 8.0
        ),
        borderRadius: BorderRadius.all(
            Radius.circular(15.0) //
        ),
      );
    }
    return MediaQuery(
      data: MediaQuery.of(context),
      child: Container(

        //width: MediaQuery.of(context).size.width,
        //height: (MediaQuery.of(context).size.height - (kBottomNavigationBarHeight + kToolbarHeight))*0.4,


        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          color: Colors.white,
           /* image: DecorationImage(
                image: AssetImage("assets/images.jpg"),
                fit: BoxFit.cover
            )*/
        ),
        //  color:  Color.fromARGB(255,255, 232, 238),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              color: Colors.brown,
              height: 20,
              width: double.infinity,
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Column(
                  //crossAxisAlignment: CrossAxisAlignment.start,
                  //  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [

                    //SizedBox(height: 30,),
                    GestureDetector(
                      onTap: (){
                        print('hazem1');
                        cubit.gestChange(Colors.white,Color.fromARGB(255, 1, 248, 133));
                        cubit.changeValueOfColumn1( 5);
                        print('${cubit.column1}');
                      },
                      child: Container(
                        decoration: myBox(cubit.color),
                        height: 40,
                        width: 40,

                      ),
                    ),
                    SizedBox(height: 30,),
                    GestureDetector(
                      onTap: (){
                        print('hazem2');
                        cubit.gestChange(Color.fromARGB(255, 1, 248, 133),Colors.white);
                        cubit.changeValueOfAbacusSubColumn1(5);
                      },
                      child: Container(
                        decoration: myBox(cubit.color1),
                        height: 40,
                        width: 40,

                      ),
                    ),
                  ],
                ),


                SizedBox(width: 25,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  //  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                   // SizedBox(height: 30,),
                    GestureDetector(
                      onTap: (){
                        print('hazem3');
                        cubit.gestChange1(Colors.white,Color.fromARGB(255, 1, 248, 133));
                        cubit.changeValueOfColumn2(5);
                      },
                      child: Container(
                        decoration:  myBox(cubit.color2),

                        height: 40,
                        width: 40,

                      ),
                    ),
                    SizedBox(height: 30,),
                    GestureDetector(
                      onTap: (){
                        print('hazem');
                        cubit.gestChange1(Color.fromARGB(255, 1, 248, 133),Colors.white);
                        cubit.changeValueOfAbacusSubColumn2(5);
                      },
                      child: Container(
                        decoration: myBox(cubit.color3),
                        height: 40,
                        width: 40,

                      ),
                    ),
                  ],
                ),
                SizedBox(width: 20,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  //  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                   // SizedBox(height: 30,),
                    GestureDetector(
                      onTap: (){
                        print('hazem4');
                        cubit.gestChange2(Colors.white,Color.fromARGB(255, 1, 248, 133));
                        cubit.changeValueOfColumn3(5);
                      },
                      child: Container(
                        decoration: myBox( cubit.color4),
                        height: 40,
                        width: 40,

                      ),
                    ),
                    SizedBox(height: 30,),
                    GestureDetector(
                      onTap: (){
                        print('hazem');
                        cubit.gestChange2(Color.fromARGB(255, 1, 248, 133),Colors.white);
                        cubit.changeValueOfAbacusSubColumn3(5);
                      },
                      child: Container(
                        decoration: myBox( cubit.color5),
                        height: 40,
                        width: 40,

                      ),
                    ),
                  ],
                ),
                SizedBox(width: 23,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  //  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    //SizedBox(height: 30,),
                    GestureDetector(
                      onTap: (){
                        print('hazem');
                        cubit.gestChange3(Colors.white,Color.fromARGB(255, 1, 248, 133));
                        cubit.changeValueOfColumn4(5);
                      },
                      child: Container(
                        decoration: myBox( cubit.color6,),
                        height: 40,
                        width: 40,

                      ),
                    ),
                    SizedBox(height: 30,),
                    GestureDetector(
                      onTap: (){
                        print('hazem');
                        cubit.gestChange3(Color.fromARGB(255, 1, 248, 133),Colors.white);
                        cubit.changeValueOfAbacusSubColumn4(5);
                      },
                      child: Container(
                        decoration: myBox( cubit.color7,),
                        height: 40,
                        width: 40,

                      ),
                    ),
                  ],
                ),
                SizedBox(width: 23,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  //  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    //SizedBox(height: 30,),
                    GestureDetector(
                      onTap: (){
                        print('hazem6');
                        cubit.gestChange4(Colors.white,Color.fromARGB(255, 1, 248, 133));
                        cubit.changeValueOfColumn5(5);
                      },
                      child: Container(
                        decoration: myBox( cubit.color8,),
                        height: 40,
                        width: 40,

                      ),
                    ),
                    SizedBox(height: 30,),
                    GestureDetector(
                      onTap: (){
                        print('hazem');
                        cubit.gestChange4(Color.fromARGB(255, 1, 248, 133),Colors.white);
                        cubit.changeValueOfAbacusSubColumn5(5);
                      },
                      child: Container(
                        decoration: myBox( cubit.color9,),
                        height: 40,
                        width: 40,

                      ),
                    ),
                  ],
                ),
                SizedBox(width: 20,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  //  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    //SizedBox(height: 30,),
                    GestureDetector(
                      onTap: (){
                        print('hazem');
                        cubit.gestChange5(Colors.white,Color.fromARGB(255, 1, 248, 133));
                        cubit.changeValueOfColumn6(5);
                      },
                      child: Container(
                        decoration: myBox( cubit.color10,),
                        height: 40,
                        width: 40,

                      ),
                    ),
                    SizedBox(height: 30,),
                    GestureDetector(
                      onTap: (){
                        print('hazem');
                        cubit.gestChange5(Color.fromARGB(255, 1, 248, 133),Colors.white);
                        cubit.changeValueOfAbacusSubColumn6(5);
                      },
                      child: Container(
                        decoration: myBox( cubit.color11,),
                        height: 40,
                        width: 40,

                      ),
                    ),
                  ],
                ),
                SizedBox(width: 15,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  //  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    //SizedBox(height: 30,),
                    GestureDetector(
                      onTap: (){
                        print('hazem');
                        cubit.gestChange6(Colors.white,Color.fromARGB(255, 1, 248, 133));
                        cubit.changeValueOfColumn7(5);
                      },
                      child: Container(
                        decoration: myBox( cubit.color12,),
                        height: 40,
                        width: 40,

                      ),
                    ),
                    SizedBox(height: 30,),
                    GestureDetector(
                      onTap: (){
                        print('hazem');
                        cubit.gestChange6(Color.fromARGB(255, 1, 248, 133),Colors.white);
                        cubit.changeValueOfAbacusSubColumn7(5);
                      },
                      child: Container(
                        decoration: myBox( cubit.color13,),
                        height: 40,
                        width: 40,

                      ),
                    ),
                  ],
                ),
              ],
            ),
            Divider(thickness: 10,color: Colors.grey,),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: (){
                        print("hazem1");
                        cubit.gestChange7(Colors.white,Color.fromARGB(255, 1, 248, 133));
                        cubit.changeValueColumn1Part1Sub();
                      },
                      child: Container(
                        decoration: myBox( cubit.color14,),
                        height: MediaQuery.of(context).size.height * 0.03,
                        width: 35,

                      ),
                    ),
                    SizedBox(height: 1,),
                    GestureDetector(
                      onTap: (){
                        print("hazem2");
                        cubit.gestChange9(Colors.white, Color.fromARGB(255, 1, 248, 133));
                        cubit.changeValueColumn1Part2Sub();
                      },
                      child: Container(
                        decoration: myBox( cubit.color15,),
                        height: MediaQuery.of(context).size.height * 0.03,
                        width: 35,

                      ),
                    ),
                    SizedBox(height: 1,),
                    GestureDetector(
                      onTap: (){
                        cubit.gestChange12(Colors.white, Color.fromARGB(255, 1, 248, 133));
                        cubit.changeValueColumn1Part3Sub();
                      },
                      child: Container(
                        decoration: myBox( cubit.color16,),
                        height: MediaQuery.of(context).size.height * 0.03,
                        width: 35,

                      ),
                    ),
                    SizedBox(height: 1,),
                    GestureDetector(
                      onTap: (){
                        cubit.gestChange14(Colors.white, Color.fromARGB(255, 1, 248, 133));
                        cubit.changeValueColumn1Part4Sub();
                      },
                      child: Container(
                        decoration: myBox( cubit.color17,),
                        height: MediaQuery.of(context).size.height * 0.03,
                        width: 35,

                      ),
                    ),

                    SizedBox(
                      height: 10,
                    ),
                    GestureDetector(
                      onTap: (){
                        print("hazem15");
                        cubit.gestChange10(Colors.white,Color.fromARGB(255, 1, 248, 133));
                        cubit.changeValueColumn1();
                      },
                      child: Container(
                        decoration: myBox( cubit.color18,),
                        height: MediaQuery.of(context).size.height * 0.03,
                        width: 35,

                      ),
                    ),
                    SizedBox(height: 1,),
                    GestureDetector(
                      onTap: (){
                        print('hazem66');
                        cubit.gestChange8(Color.fromARGB(255, 1, 248, 133), Colors.white);
                        cubit.changeValueColumn1Part2();
                      },
                      child: Container(
                        decoration: myBox( cubit.color19,),
                        height: MediaQuery.of(context).size.height * 0.03,
                        width: 35,

                      ),
                    ),
                    SizedBox(height: 1,),
                    GestureDetector(
                      onTap: (){
                        cubit.gestChange11(Color.fromARGB(255, 1, 248, 133), Colors.white);
                        cubit.changeValueColumn1Part3();
                      },
                      child: Container(
                        decoration: myBox( cubit.color20,),
                        height: MediaQuery.of(context).size.height * 0.03,
                        width: 35,

                      ),
                    ),
                    SizedBox(height: 1,),
                    GestureDetector(
                      onTap: (){
                        cubit.gestChange13(Color.fromARGB(255, 1, 248, 133), Colors.white);
                        cubit.changeValueColumn1Part4();
                      },
                      child: Container(
                        decoration: myBox( cubit.color21,),
                        height: MediaQuery.of(context).size.height * 0.03,
                        width: 35,

                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 30,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: (){
                        cubit.gestChange19(Colors.white,Color.fromARGB(255, 1, 248, 133));
                        cubit.changeValueColumn2Part1Sub();
                      },
                      child: Container(
                        decoration: myBox( cubit.color22,),
                        height:MediaQuery.of(context).size.height * 0.03,
                        width: 35,

                      ),
                    ),
                    SizedBox(height: 1,),
                    GestureDetector(
                      onTap: (){
                        cubit.gestChange20(Colors.white, Color.fromARGB(255, 1, 248, 133));
                        cubit.changeValueColumn2Part2Sub();
                      },
                      child: Container(
                        decoration: myBox( cubit.color23,),
                        height: MediaQuery.of(context).size.height * 0.03,
                        width: 35,

                      ),
                    ),
                    SizedBox(height: 1,),
                    GestureDetector(
                      onTap: (){
                        cubit.gestChange21(Colors.white, Color.fromARGB(255, 1, 248, 133));
                        cubit.changeValueColumn2Part3Sub();
                      },
                      child: Container(
                        decoration: myBox( cubit.color24,),
                        height: MediaQuery.of(context).size.height * 0.03,
                        width: 35,

                      ),
                    ),
                    SizedBox(height: 1,),
                    GestureDetector(
                      onTap: (){
                        cubit.gestChange22(Colors.white, Color.fromARGB(255, 1, 248, 133));
                        cubit.changeValueColumn2Part4Sub();
                      },
                      child: Container(
                        decoration: myBox( cubit.color25,),
                        height: MediaQuery.of(context).size.height * 0.03,
                        width: 35,

                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    GestureDetector(
                      onTap: (){
                        cubit.gestChange18(Color.fromARGB(255, 1, 248, 133),Colors.white);
                        cubit.changeValueColumn2Part1();
                      },
                      child: Container(
                        decoration: myBox(  cubit.color26,),
                        height: MediaQuery.of(context).size.height * 0.03,
                        width: 35,

                      ),
                    ),
                    SizedBox(height: 1,),
                    GestureDetector(
                      onTap: (){
                        cubit.gestChange17(Color.fromARGB(255, 1, 248, 133), Colors.white);
                        cubit.changeValueColumn2Part2();
                      },
                      child: Container(
                        decoration: myBox( cubit.color27,),
                        height: MediaQuery.of(context).size.height * 0.03,
                        width: 35,

                      ),
                    ),
                    SizedBox(height: 1,),
                    GestureDetector(
                      onTap: (){
                        cubit.gestChange16(Color.fromARGB(255, 1, 248, 133), Colors.white);
                        cubit.changeValueColumn2Part3();
                      },
                      child: Container(
                        decoration: myBox( cubit.color28,),
                        height: MediaQuery.of(context).size.height * 0.03,
                        width: 35,

                      ),
                    ),
                    SizedBox(height: 1,),
                    GestureDetector(
                      onTap: (){
                        cubit.gestChange15(Color.fromARGB(255, 1, 248, 133), Colors.white);
                        cubit.changeValueColumn2Part4();
                      },
                      child: Container(
                        decoration: myBox( cubit.color29,),
                        height: MediaQuery.of(context).size.height * 0.03,
                        width: 35,

                      ),
                    ),
                  ],
                ),

                SizedBox(
                  width: 25,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: (){
                        cubit.gestChange27(Colors.white,Color.fromARGB(255, 1, 248, 133));
                        cubit.changeValueColumn3Part1Sub();
                      },
                      child: Container(
                        decoration: myBox( cubit.color30,),
                        height: MediaQuery.of(context).size.height * 0.03,
                        width: 35,

                      ),
                    ),
                    SizedBox(height: 1,),
                    GestureDetector(
                      onTap: (){
                        cubit.gestChange28(Colors.white, Color.fromARGB(255, 1, 248, 133));
                        cubit.changeValueColumn3Part2Sub();
                      },
                      child: Container(
                        decoration: myBox( cubit.color31,),
                        height: MediaQuery.of(context).size.height * 0.03,
                        width: 35,

                      ),
                    ),
                    SizedBox(height: 1,),
                    GestureDetector(
                      onTap: (){
                        cubit.gestChange29(Colors.white, Color.fromARGB(255, 1, 248, 133));
                        cubit.changeValueColumn3Part3Sub();
                      },
                      child: Container(
                        decoration: myBox( cubit.color32,),
                        height: MediaQuery.of(context).size.height * 0.03,
                        width: 35,

                      ),
                    ),
                    SizedBox(height: 1,),
                    GestureDetector(
                      onTap: (){
                        cubit.gestChange30(Colors.white, Color.fromARGB(255, 1, 248, 133));
                        cubit.changeValueColumn3Part4Sub();
                      },
                      child: Container(
                        decoration: myBox( cubit.color33,),
                        height: MediaQuery.of(context).size.height * 0.03,
                        width: 35,

                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    GestureDetector(
                      onTap: (){
                        cubit.gestChange26(Color.fromARGB(255, 1, 248, 133),Colors.white);
                        cubit.changeValueColumn3Part1();
                      },
                      child: Container(
                        decoration: myBox( cubit.color34,),
                        height: MediaQuery.of(context).size.height * 0.03,
                        width: 35,

                      ),
                    ),
                    SizedBox(height: 1,),
                    GestureDetector(
                      onTap: (){
                        cubit.gestChange25(Color.fromARGB(255, 1, 248, 133), Colors.white);
                        cubit.changeValueColumn3Part2();
                      },
                      child: Container(
                        decoration: myBox( cubit.color35,),
                        height: MediaQuery.of(context).size.height * 0.03,
                        width: 35,

                      ),
                    ),
                    SizedBox(height: 1,),
                    GestureDetector(
                      onTap: (){
                        cubit.gestChange24(Color.fromARGB(255, 1, 248, 133), Colors.white);
                        cubit.changeValueColumn3Part3();
                      },
                      child: Container(
                        decoration: myBox(  cubit.color36,),
                        height: MediaQuery.of(context).size.height * 0.03,
                        width: 35,

                      ),
                    ),
                    SizedBox(height: 1,),
                    GestureDetector(
                      onTap: (){
                        cubit.gestChange23(Color.fromARGB(255, 1, 248, 133), Colors.white);
                        cubit.changeValueColumn3Part4();
                      },
                      child: Container(
                        decoration: myBox(  cubit.color37,),
                        height: MediaQuery.of(context).size.height * 0.03,
                        width: 35,

                      ),
                    ),
                  ],
                ),
                SizedBox(width: 30,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: (){
                        cubit.gestChange35(Colors.white,Color.fromARGB(255, 1, 248, 133));
                        cubit.changeValueColumn4Part1Sub();
                      },
                      child: Container(
                        decoration: myBox(  cubit.color38,),
                        height: MediaQuery.of(context).size.height * 0.03,
                        width: 35,

                      ),
                    ),
                    SizedBox(height: 1,),
                    GestureDetector(
                      onTap: (){
                        cubit.gestChange36(Colors.white, Color.fromARGB(255, 1, 248, 133));
                        cubit.changeValueColumn4Part2Sub();
                      },
                      child: Container(
                        decoration: myBox( cubit.color39,),
                        height: MediaQuery.of(context).size.height * 0.03,
                        width: 35,

                      ),
                    ),
                    SizedBox(height: 1,),
                    GestureDetector(
                      onTap: (){
                        cubit.gestChange37(Colors.white, Color.fromARGB(255, 1, 248, 133));
                        cubit.changeValueColumn4Part3Sub();
                      },
                      child: Container(
                        decoration: myBox( cubit.color40,),
                        height: MediaQuery.of(context).size.height * 0.03,
                        width: 35,

                      ),
                    ),
                    SizedBox(height: 1,),
                    GestureDetector(
                      onTap: (){
                        cubit.gestChange38(Colors.white, Color.fromARGB(255, 1, 248, 133));
                        cubit.changeValueColumn4Part4Sub();
                      },
                      child: Container(
                        decoration: myBox( cubit.color41,),
                        height: MediaQuery.of(context).size.height * 0.03,
                        width: 35,

                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    GestureDetector(
                      onTap: (){
                        cubit.gestChange34(Color.fromARGB(255, 1, 248, 133),Colors.white);
                        cubit.changeValueColumn4Part1();
                      },
                      child: Container(
                        decoration: myBox( cubit.color42,),
                        height: MediaQuery.of(context).size.height * 0.03,
                        width: 35,

                      ),
                    ),
                    SizedBox(height: 1,),
                    GestureDetector(
                      onTap: (){
                        cubit.gestChange33(Color.fromARGB(255, 1, 248, 133), Colors.white);
                        cubit.changeValueColumn4Part2();
                      },
                      child: Container(
                        decoration: myBox( cubit.color43,),
                        height: MediaQuery.of(context).size.height * 0.03,
                        width: 35,

                      ),
                    ),
                    SizedBox(height: 1,),
                    GestureDetector(
                      onTap: (){
                        cubit.gestChange32(Color.fromARGB(255, 1, 248, 133), Colors.white);
                        cubit.changeValueColumn4Part3();
                      },
                      child: Container(
                        decoration: myBox( cubit.color44,),
                        height: MediaQuery.of(context).size.height * 0.03,
                        width: 35,

                      ),
                    ),
                    SizedBox(height: 1,),
                    GestureDetector(
                      onTap: (){
                        cubit.gestChange31(Color.fromARGB(255, 1, 248, 133), Colors.white);
                        cubit.changeValueColumn4Part4();
                      },
                      child: Container(
                        decoration: myBox( cubit.color45,),
                        height: MediaQuery.of(context).size.height * 0.03,
                        width: 35,

                      ),
                    ),
                  ],
                ),
                SizedBox(width: 25,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: (){
                        cubit.gestChange43(Colors.white,Color.fromARGB(255, 1, 248, 133));
                        cubit.changeValueColumn5Part1Sub();
                      },
                      child: Container(
                        decoration: myBox( cubit.color46,),
                        height: MediaQuery.of(context).size.height * 0.03,
                        width: 35,

                      ),
                    ),
                    SizedBox(height: 1,),
                    GestureDetector(
                      onTap: (){
                        cubit.gestChange44(Colors.white, Color.fromARGB(255, 1, 248, 133));
                        cubit.changeValueColumn5Part2Sub();
                      },
                      child: Container(
                        decoration: myBox( cubit.color47,),
                        height: MediaQuery.of(context).size.height * 0.03,
                        width: 35,

                      ),
                    ),
                    SizedBox(height: 1,),
                    GestureDetector(
                      onTap: (){
                        cubit.gestChange45(Colors.white, Color.fromARGB(255, 1, 248, 133));
                        cubit.changeValueColumn5Part3Sub();
                      },
                      child: Container(
                        decoration: myBox( cubit.color48,),
                        height: MediaQuery.of(context).size.height * 0.03,
                        width: 35,

                      ),
                    ),
                    SizedBox(height: 1,),
                    GestureDetector(
                      onTap: (){
                        cubit.gestChange46(Colors.white, Color.fromARGB(255, 1, 248, 133));
                        cubit.changeValueColumn5Part4Sub();
                      },
                      child: Container(
                        decoration: myBox( cubit.color49,),
                        height: MediaQuery.of(context).size.height * 0.03,
                        width: 35,

                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    GestureDetector(
                      onTap: (){
                        cubit.gestChange42(Color.fromARGB(255, 1, 248, 133),Colors.white);
                        cubit.changeValueColumn5Part1();
                      },
                      child: Container(
                        decoration: myBox(  cubit.color50,),
                        height: MediaQuery.of(context).size.height * 0.03,
                        width: 35,

                      ),
                    ),
                    SizedBox(height: 1,),
                    GestureDetector(
                      onTap: (){
                        cubit.gestChange41(Color.fromARGB(255, 1, 248, 133), Colors.white);
                        cubit.changeValueColumn5Part2();
                      },
                      child: Container(
                        decoration: myBox( cubit.color51,),
                        height: MediaQuery.of(context).size.height * 0.03,
                        width: 35,

                      ),
                    ),
                    SizedBox(height: 1,),
                    GestureDetector(
                      onTap: (){
                        cubit.gestChange40(Color.fromARGB(255, 1, 248, 133), Colors.white);
                        cubit.changeValueColumn5Part3();
                      },
                      child: Container(
                        decoration: myBox( cubit.color52,),
                        height: MediaQuery.of(context).size.height * 0.03,
                        width: 35,

                      ),
                    ),
                    SizedBox(height: 1,),
                    GestureDetector(
                      onTap: (){
                        cubit.gestChange39(Color.fromARGB(255, 1, 248, 133), Colors.white);
                        cubit.changeValueColumn5Part4();
                      },
                      child: Container(
                        decoration: myBox(  cubit.color53,),
                        height: MediaQuery.of(context).size.height * 0.03,
                        width: 35,

                      ),
                    ),
                  ],
                ),
                SizedBox(width: 25,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: (){
                        cubit.gestChange51(Colors.white,Color.fromARGB(255, 1, 248, 133));
                        cubit.changeValueColumn6Part1Sub();
                      },
                      child: Container(
                        decoration: myBox( cubit.color54,),
                        height: MediaQuery.of(context).size.height * 0.03,
                        width: 35,

                      ),
                    ),
                    SizedBox(height: 1,),
                    GestureDetector(
                      onTap: (){
                        cubit.gestChange52(Colors.white, Color.fromARGB(255, 1, 248, 133));
                        cubit.changeValueColumn6Part2Sub();
                      },
                      child: Container(
                        decoration: myBox( cubit.color55,),
                        height: MediaQuery.of(context).size.height * 0.03,
                        width: 35,

                      ),
                    ),
                    SizedBox(height: 1,),
                    GestureDetector(
                      onTap: (){
                        cubit.gestChange53(Colors.white, Color.fromARGB(255, 1, 248, 133));
                        cubit.changeValueColumn6Part3Sub();
                      },
                      child: Container(
                        decoration: myBox( cubit.color56,),
                        height: MediaQuery.of(context).size.height * 0.03,
                        width: 35,

                      ),
                    ),
                    SizedBox(height: 1,),
                    GestureDetector(
                      onTap: (){
                        cubit.gestChange54(Colors.white, Color.fromARGB(255, 1, 248, 133));
                        cubit.changeValueColumn6Part4Sub();
                      },
                      child: Container(
                        decoration: myBox( cubit.color57,),
                        height: MediaQuery.of(context).size.height * 0.03,
                        width: 35,

                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    GestureDetector(
                      onTap: (){
                        cubit.gestChange50(Color.fromARGB(255, 1, 248, 133),Colors.white);
                        cubit.changeValueColumn6Part1();
                      },
                      child: Container(
                        decoration: myBox( cubit.color58,),
                        height: MediaQuery.of(context).size.height * 0.03,
                        width: 35,

                      ),
                    ),
                    SizedBox(height: 1,),
                    GestureDetector(
                      onTap: (){
                        cubit.gestChange49(Color.fromARGB(255, 1, 248, 133), Colors.white);
                        cubit.changeValueColumn6Part2();
                      },
                      child: Container(
                        decoration: myBox( cubit.color59,),
                        height: MediaQuery.of(context).size.height * 0.03,
                        width: 35,

                      ),
                    ),
                    SizedBox(height: 1,),
                    GestureDetector(
                      onTap: (){
                        cubit.gestChange48(Color.fromARGB(255, 1, 248, 133), Colors.white);
                        cubit.changeValueColumn6Part3();
                      },
                      child: Container(
                        decoration: myBox( cubit.color60,),
                        height: MediaQuery.of(context).size.height * 0.03,
                        width: 35,

                      ),
                    ),
                    SizedBox(height: 1,),
                    GestureDetector(
                      onTap: (){
                        cubit.gestChange47(Color.fromARGB(255, 1, 248, 133), Colors.white);
                        cubit.changeValueColumn6Part4();
                      },
                      child: Container(
                        decoration: myBox( cubit.color61,),
                        height: MediaQuery.of(context).size.height * 0.03,
                        width: 35,

                      ),
                    ),
                  ],
                ),
                SizedBox(width: 25,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: (){
                        cubit.gestChange59(Colors.white,Color.fromARGB(255, 1, 248, 133));
                        cubit.changeValueColumn7Part1Sub();
                      },
                      child: Container(
                        decoration: myBox( cubit.color62,),
                        height: MediaQuery.of(context).size.height * 0.03,
                        width: 35,

                      ),
                    ),
                    SizedBox(height: 1,),
                    GestureDetector(
                      onTap: (){
                        cubit.gestChange60(Colors.white,Color.fromARGB(255, 1, 248, 133));
                        cubit.changeValueColumn7Part2Sub();
                      },
                      child: Container(
                        decoration: myBox( cubit.color63,),
                        height: MediaQuery.of(context).size.height * 0.03,
                        width: 35,

                      ),
                    ),
                    SizedBox(height: 1,),
                    GestureDetector(
                      onTap: (){
                        cubit.gestChange61(Colors.white, Color.fromARGB(255, 1, 248, 133));
                        cubit.changeValueColumn7Part3Sub();
                      },
                      child: Container(
                        decoration: myBox( cubit.color64,),
                        height: MediaQuery.of(context).size.height * 0.03,
                        width: 35,

                      ),
                    ),
                    SizedBox(height: 1,),
                    GestureDetector(
                      onTap: (){
                        cubit.gestChange62(Colors.white, Color.fromARGB(255, 1, 248, 133));
                        cubit.changeValueColumn7Part4Sub();
                      },
                      child: Container(
                        decoration: myBox( cubit.color65,),
                        height: MediaQuery.of(context).size.height * 0.03,
                        width: 35,

                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),

                    GestureDetector(
                      onTap: (){
                        cubit.gestChange58(Color.fromARGB(255, 1, 248, 133),Colors.white);
                        cubit.changeValueColumn7Part1();
                      },
                      child: Container(
                        decoration: myBox(  cubit.color66,),
                        height: MediaQuery.of(context).size.height * 0.03,
                        width: 35,

                      ),
                    ),
                    SizedBox(height: 1,),
                    GestureDetector(
                      onTap: (){
                        cubit.gestChange57(Color.fromARGB(255, 1, 248, 133), Colors.white);
                        cubit.changeValueColumn7Part2();
                      },
                      child: Container(
                        decoration: myBox( cubit.color67,),
                        height: MediaQuery.of(context).size.height * 0.03,
                        width: 35,

                      ),
                    ),
                    SizedBox(height: 1,),
                    GestureDetector(
                      onTap: (){
                        cubit.gestChange56(Color.fromARGB(255, 1, 248, 133), Colors.white);
                        cubit.changeValueColumn7Part3();
                      },
                      child: Container(
                        decoration: myBox( cubit.color68,),
                        height: MediaQuery.of(context).size.height * 0.03,
                        width: 35,

                      ),
                    ),
                    SizedBox(height: 1,),
                    GestureDetector(
                      onTap: (){
                        cubit.gestChange55(Color.fromARGB(255, 1, 248, 133), Colors.white);
                        cubit.changeValueColumn7Part4();
                      },
                      child: Container(
                        decoration: myBox(  cubit.color69,),
                        height: MediaQuery.of(context).size.height * 0.03,
                        width: 35,

                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),


            Stack(
              children: [

                Container(
                  color: Colors.brown,
                  height: 20,
                  width: double.infinity,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 214, 225, 237),
                            borderRadius: BorderRadius.circular(10)),
                        height:25,
                        width: 25,
                        //color: Colors.grey,
                        child: Center(
                          child: Text(
                            '${AppCubit.get(context).column1}',
                            style: TextStyle(fontSize: 20),
                          ),
                        )),
                    SizedBox(
                      width: 40,
                    ),
                    Container(
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 214, 225, 237),
                            borderRadius: BorderRadius.circular(10)),
                        height:25,
                        width: 25,
                        //color: Colors.grey,
                        child: Center(
                          child: Text(
                            '${AppCubit.get(context).column2}',
                            style: TextStyle(fontSize: 20),
                          ),
                        )),
                    SizedBox(
                      width: 35,
                    ),
                    Container(
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 214, 225, 237),
                            borderRadius: BorderRadius.circular(10)),
                        height:25,
                        width: 25,
                        //color: Colors.grey,
                        child: Center(
                          child: Text(
                            '${AppCubit.get(context).column3}',
                            style: TextStyle(fontSize: 20),
                          ),
                        )),
                    SizedBox(width: 40,),
                    Container(
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 214, 225, 237),
                            borderRadius: BorderRadius.circular(10)),
                        height:25,
                        width: 25,
                        //color: Colors.grey,
                        child: Center(
                          child: Text(
                            '${AppCubit.get(context).column4}',
                            style: TextStyle(fontSize: 20),
                          ),
                        )),
                    SizedBox(width: 35,),
                    Container(
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 214, 225, 237),
                            borderRadius: BorderRadius.circular(10)),
                        height:25,
                        width: 25,
                        //color: Colors.grey,
                        child: Center(
                          child: Text(
                            '${AppCubit.get(context).column5}',
                            style: TextStyle(fontSize: 20),
                          ),
                        )),
                    SizedBox(width: 35,),
                    Container(
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 214, 225, 237),
                            borderRadius: BorderRadius.circular(10)),
                        height:25,
                        width: 25,
                        //color: Colors.grey,
                        child: Center(
                          child: Text(
                            '${AppCubit.get(context).column6}',
                            style: TextStyle(fontSize: 20),
                          ),
                        )),
                    SizedBox(width: 35,),
                    Container(
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 214, 225, 237),
                            borderRadius: BorderRadius.circular(10)),
                        height:25,
                        width: 25,
                        //color: Colors.grey,
                        child: Center(
                          child: Text(
                            '${AppCubit.get(context).column7}',
                            style: TextStyle(fontSize: 20),
                          ),
                        )),

                  ],
                ),
              ],
            )

          ],
        ),
      ),
    );
  }
}
