import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smartnagarbloc/bloc/splashscreen_bloc.dart';
import 'package:smartnagarbloc/screens/splashscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: BlocProvider(
       create: (_) => SplashscreenBloc(), child: Splashscreen(),
      ),
    );
  }
}
