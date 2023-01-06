import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:phone_auth/widget/custom_button.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {

  final TextEditingController phoneController = TextEditingController();

  Country Selectedcountry = Country(
    phoneCode: "216", 
    countryCode: "TN",
    e164Sc: 0, 
    geographic: true, 
    level: 1, 
    name: "Tunisia", 
    example: "Tunisia", 
    displayName: "Tunisia", 
    displayNameNoCountryCode: "TN", 
    e164Key: ""
    );

  @override
  Widget build(BuildContext context) {

    phoneController.selection = TextSelection.fromPosition(
      TextPosition(offset: phoneController.text.length)
    );

    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea( 
          child: Center(
            child: Padding(  
              padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 35),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
      
                  const SizedBox(height: 8.0,),
      
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
      
                  const SizedBox(height: 15.0,),
      
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
      
                  const SizedBox(height: 20,),
      
                  TextFormField(
                    cursorColor: Colors.green,
                    controller: phoneController,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                    onChanged: (value) {
                      phoneController.text = value;
                    },
                    decoration: InputDecoration(
                      hintText: "Enter your phone number",
                      hintStyle: const TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 15
                      ),
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
                        padding: const EdgeInsets.all(18.0),
                        child: InkWell(
                          onTap: (){
                            showCountryPicker(
                              context: context, 
                              countryListTheme: const CountryListThemeData(
                                bottomSheetHeight: 700,
                              ),
                              onSelect: (value) {
                                setState(() {
                                  Selectedcountry = value;
                                });
                              },
                              );
                          },
                          child: Text(
                            "${Selectedcountry.flagEmoji}  +${Selectedcountry.phoneCode}",
                            style: const TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
      
                  const SizedBox(height: 16.0,),
      
                  SizedBox(
                    width: double.infinity,
                    height: 40,
                    child: CustomButton(
                      text: "Login",
                      onPressed: () {
                        
                      },
                      ),
                  )
                ]
              )
            )
          )
        ),
      )  
    );
  }
}