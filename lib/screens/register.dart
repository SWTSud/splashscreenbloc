import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Registration Screen",style: TextStyle(color: Colors.white),),
        centerTitle: true,
        elevation: 100.0,
        backgroundColor: Colors.blue.shade900,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 120,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 450,
                width: 500,
                // color: Colors.blue.shade900,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.blue.shade900,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 15,),
                    Image.asset('assets/images/ic_amc.jpg',scale: 6.0,),
                    const SizedBox(height: 5,),
                    const Text("Smart Nagar",style: TextStyle(fontSize: 20,color: Colors.white),),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0), // Set your desired radius
                          color: Colors.white, // Background color
                        ),
                        child: TextFormField(
                          controller: firstNameController,
                          decoration: const InputDecoration(
                            labelText: 'First Name',
                            prefixIcon: Icon(Icons.person_outlined),
                            filled: true,
                            fillColor: Colors.transparent, // Set to transparent to let the container handle the background color
                            border: InputBorder.none, // Remove the default border
                          ),
                        ),
                      ),
                    )
                    ,
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0), // Set your desired radius
                          color: Colors.white, // Background color
                        ),
                        child: TextFormField(
                          controller: lastNameController,
                          decoration: const InputDecoration(
                            labelText: 'Last Name',
                            prefixIcon: Icon(Icons.person_outlined),
                            filled: true,
                            fillColor: Colors.transparent, // Set to transparent to let the container handle the background color
                            border: InputBorder.none, // Remove the default border
                          ),
                        ),
                      ),
                    )
                    ,
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0), // Set your desired radius
                          color: Colors.white, // Background color
                        ),
                        child: TextFormField(
                          controller: emailController,
                          decoration: const InputDecoration(
                            labelText: 'Email',
                            prefixIcon: Icon(Icons.email_outlined),
                            filled: true,
                            fillColor: Colors.transparent, // Set to transparent to let the container handle the background color
                            border: InputBorder.none, // Remove the default border
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10,),
                    ElevatedButton(onPressed:(){}, child: const Text("Register",style: TextStyle(fontSize: 20),),),
                  ],
                ),
              ),
            ),
          ],
        ),
      )
    );
  }
}
