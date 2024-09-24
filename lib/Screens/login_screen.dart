import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'navbar.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        fit: StackFit.expand, // This makes the image cover the entire screen
        children: [
          Image.asset(
            'assets/images/login-background.png', // Replace with your image path
            fit: BoxFit
                .cover, // This makes the image fill the screen while maintaining its aspect ratio
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 30, left: 15, right: 15, bottom: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text("BEEP",
                    style: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
                SvgPicture.asset('assets/images/login.svg'),
                const Align(
                  alignment: Alignment.topLeft,
                  child: Text("Stay connected\nwith your friends\nand family",
                      style: TextStyle(
                          fontSize: 36,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.085,
                    width: MediaQuery.of(context).size.width * 0.85,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: const Color.fromARGB(255, 219, 217, 217)),
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white),
                    child: const Row(
                      children: [
                        CountryCodePicker(
                          textStyle:
                              TextStyle(color: Colors.black, fontSize: 16),
                          onChanged: print,
                          boxDecoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          padding: EdgeInsets.only(left: 8),
                          flagWidth: 28,
                          // Initial selection and favorite can be one of code ('IT') OR dial_code('+39')
                          initialSelection: 'PK',
                          dialogSize: Size(70, 400),
                          favorite: ['+92', 'PAK'],
                          textOverflow: TextOverflow.clip,
                          // optional. Shows only country name and flag
                          showCountryOnly: false,
                          // optional. Shows only country name and flag when popup is closed.
                          showOnlyCountryWhenClosed: false,
                          // optional. aligns the flag and the Text left
                          alignLeft: false,
                        ),
                        Expanded(
                            child: TextField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              border:
                                  InputBorder.none, // Removes the bottom line
                              hintText: 'Enter your number',
                              hintStyle:
                                  TextStyle(color: Colors.black, fontSize: 16)),
                        ))
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.085,
                  width: MediaQuery.of(context).size.width * 0.85,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const MyNavBar()));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            30), // Adjust radius as needed
                      ),
                    ),
                    child: const Text(
                      "Sign Up",
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                  ),
                )
                // Container(
                //   height: MediaQuery.of(context).size.height * 0.08,
                //   width: MediaQuery.of(context).size.width * 0.85,
                //   padding: const EdgeInsets.only(left: 20, top: 5),
                //   decoration: BoxDecoration(
                //       border: Border.all(
                //           color: const Color.fromARGB(255, 219, 217, 217)),
                //       borderRadius: BorderRadius.circular(30),
                //       color: Colors.white),
                //   child: const TextField(
                //     decoration: InputDecoration(
                //         border: InputBorder.none, // Removes the bottom line
                //         hintText: 'Enter email',
                //         hintStyle: TextStyle(color: Colors.black)),
                //   ),
                // ),
              ],
            ),
          ),
        ],
      ),

//
    );
  }
}
