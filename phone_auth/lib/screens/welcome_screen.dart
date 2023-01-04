import 'package:flutter/material.dart';
import 'package:phone_auth/widget/custom_button.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea( 
        child: Center(
          child: Padding(  
            padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 35),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Image.asset(
                  "assets/1.webp",
                  height: 300,
                ),

                const SizedBox(height: 20,),

                const Text(
                  "Let's get started",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold
                  ),
                ),

                const SizedBox(height: 10,),

                Text(
                  "Never a better time then now to start...",
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.grey.shade800,
                    fontWeight: FontWeight.bold
                  ),
                ),

                const SizedBox(height: 20,),

                SizedBox(
                  width: double.infinity,
                  height: 40.0,
                  child: CustomButton(
                    text: "Get Started", 
                    onPressed: (){},
                    ),
                )

              ],
            ),
          ),
        ),
      )
    );
  }
}