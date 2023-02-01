import 'package:flutter/material.dart';
import 'package:lastpaymentapp/core/network/dio.dart';
import 'package:lastpaymentapp/modules/screens/register_screen.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await DioHelperPayment.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.deepOrange,
      ),
      home: RegisterScreen(),
    );
  }
}
