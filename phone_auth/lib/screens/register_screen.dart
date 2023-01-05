import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {

  final TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea( 
        child: Center(
          child: Padding(  
            padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 35),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [

                const SizedBox(height: 20.0,),

                Container(
                  width: 200,
                  height: 200,
                  padding: const EdgeInsets.all(20.0),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white
                  ),
                  child: Image.asset(
                    "assets/3.png",
                    ),
                ),

                const SizedBox(height: 20.0,),

                const Text(
                  "Register",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold
                  ),
                ),

                const SizedBox(height: 10,),

                Text(
                  "Add your phone number. We'll send you verification code ",
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.grey.shade600,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),

                const SizedBox(height: 40,),

                TextFormField(
                  cursorColor: Colors.green,
                  controller: phoneController,
                  decoration: InputDecoration(
                    hintText: "Enter your phone number",
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      borderSide: BorderSide(
                        color: Colors.grey.shade700
                      ),
                    ) ,
                     focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      borderSide: BorderSide(
                        color: Colors.green.shade900
                      ),
                    ) ,
                    prefixIcon: Container(
                      padding: const EdgeInsets.all(8.0),
                      
                    )
                  ),
                )

              ]
            )
          )
        )
      )  
    );
  }
}