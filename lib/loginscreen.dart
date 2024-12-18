import 'package:flutter/material.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {

var emailTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Login",
          style: TextStyle(color: Colors.white),

        ),
        backgroundColor: Colors.blueAccent,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 32,
            ),
            const Center(
              child: Text(
                "Login",
                style: TextStyle(fontSize: 42.0, fontWeight: FontWeight.bold),
              ) ),
              const SizedBox (
                height : 24,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:20),
              child: Form(
                child: Column(
                  children: [
                    TextFormField(controller: emailTextController,
                    keyboardType: TextInputType.emailAddress,
                    decoration:const InputDecoration(
                      hintText: "Enter Your Email",
                      prefix: Icon(Icons.email,
                      color: Colors.blueAccent
                      ),
                      border: OutlineInputBorder(),
                      contentPadding: EdgeInsets.all(20),
                    ), 
                    ),
                    const SizedBox(height: 16),
                  ],
                ),
              ),
              ),

             
          ],
        ),
      ),
      
    );
  }
}