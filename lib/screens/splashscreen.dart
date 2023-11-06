import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smartnagarbloc/bloc/splashscreen_bloc.dart';
import 'package:smartnagarbloc/screens/register.dart';

class Splashscreen extends StatelessWidget {
  const Splashscreen({Key? key});

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<SplashscreenBloc>(context).add(SetSplashEvent());
    return Scaffold(
      body: BlocConsumer<SplashscreenBloc, SplashscreenState>(
        listener: (context, state) {
          if (state is SplashScreenLoadedState) {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => RegisterScreen()));
          }
        },
        builder: (context, state) {
          if (state is SplashscreenLoadingState) {
            return Scaffold(
              backgroundColor: Colors.blue.shade900,
              appBar: AppBar(
                title: const Text(
                  "Smart Nagar",
                  style: TextStyle(
                      fontSize: 35,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                centerTitle: true,
                backgroundColor: Colors.blue.shade900,
              ),
              body: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                      child: Image.asset(
                    'assets/images/ic_amc.jpg',
                    scale: 5,
                  )),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Smart Nagar",
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            );
          }
          return Container();
        },
      ),
    );
  }
}
