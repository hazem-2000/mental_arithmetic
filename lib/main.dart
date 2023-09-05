import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mental_arithmetic/cubit/mental%20cubit.dart';
import 'package:mental_arithmetic/cubit/state.dart';
import 'package:mental_arithmetic/screen/homePage.dart';
import 'package:mental_arithmetic/screen/mental%20arithmetic.dart';

Future main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialization(null);
  runApp(MyApp());
}

Future initialization(context) async {


  await Future.delayed( Duration(seconds: 1));


}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown
    ]);
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context)=>AppCubit())
      ],
      child: BlocConsumer<AppCubit,AppState>(
        listener: (context,state){},
        builder: (context,state){
          return  MaterialApp(
            theme: ThemeData.light().copyWith(
              primaryColor: Colors.green,
              appBarTheme: AppBarTheme(
                color: Colors.green
              ),
              scaffoldBackgroundColor: Color.fromARGB(255, 26, 114, 201),
            ),

            debugShowCheckedModeBanner: false,
            home: Homepage(),
          );
        },
      ),
    );
  }
}


