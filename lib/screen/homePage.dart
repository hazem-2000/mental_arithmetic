import 'package:flutter/material.dart';
import 'package:mental_arithmetic/screen/mental%20arithmetic.dart';
import 'package:mental_arithmetic/screen/study.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
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
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return Study();
                  }));
                },
                color:
                Colors.green,
                height: 50,
                child: Text(
                  'دراسة',
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.white),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Material(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              elevation: 25,
              clipBehavior: Clip.antiAlias,
              child: MaterialButton(
                minWidth: 150,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return MentalArithmetic();
                  }));
                },
                color:
                Colors.green,
                height: 50,
                child: Text(
                  'إختبار',
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
