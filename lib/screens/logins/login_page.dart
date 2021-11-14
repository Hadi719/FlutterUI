import 'package:flutter/material.dart';
import 'package:hadi_mahmoudi/screens/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);
  static const String routeName = '/';

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String? email;
  String? password;

  double formBorderRadiusEnable = 20;
  double formBorderRadius = 20;
  double formLabelFontSize = 12;
  Color? formLabelColor = Colors.grey;
  Color? formFloatingLabelColor = Colors.blue;
  Color formBorderColorEnable = Colors.grey;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color(0xff15182e),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: size.height * 0.1,
            ),
            Center(
              child: Column(
                children: [
                  Image(
                    height: size.height * 0.2,
                    width: size.width * 0.4,
                    color: Colors.teal,
                    image: const AssetImage('logo.png'),
                  ),
                  SizedBox(height: size.height * 0.15),
                  SizedBox(
                    width: size.width * 0.75,
                    child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      textAlign: TextAlign.start,
                      textInputAction: TextInputAction.next,
                      maxLines: 1,
                      onChanged: (value) {
                        email = value;
                      },
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                      decoration: InputDecoration(
                        prefixIcon: const Icon(
                          Icons.account_box,
                          color: Colors.grey,
                        ),
                        label: Text(
                          'Username',
                          style: TextStyle(
                            fontSize: formLabelFontSize,
                          ),
                        ),
                        labelStyle: TextStyle(color: formLabelColor),
                        floatingLabelStyle:
                            TextStyle(color: formFloatingLabelColor),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(formBorderRadiusEnable),
                          ),
                          borderSide: BorderSide(
                            color: formBorderColorEnable,
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(formBorderRadius),
                          ),
                          // borderSide: BorderSide(color: Colors.white, width: 5),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: size.height * 0.03),
                  SizedBox(
                    width: size.width * 0.75,
                    child: TextField(
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: true,
                      // obscuringCharacter: ,
                      textAlign: TextAlign.start,
                      textInputAction: TextInputAction.done,
                      maxLines: 1,
                      onChanged: (value) {
                        password = value;
                      },
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                      decoration: InputDecoration(
                        prefixIcon: const Icon(
                          Icons.lock_outline,
                          color: Colors.grey,
                        ),
                        label: Text(
                          'Password',
                          style: TextStyle(
                            fontSize: formLabelFontSize,
                          ),
                        ),
                        labelStyle: TextStyle(color: formLabelColor),
                        floatingLabelStyle:
                            TextStyle(color: formFloatingLabelColor),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(formBorderRadiusEnable),
                          ),
                          borderSide: BorderSide(
                            color: formBorderColorEnable,
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(formBorderRadius),
                          ),
                          // borderSide: BorderSide(color: Colors.white, width: 5),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: size.height * 0.05),
                  SizedBox(
                    width: size.width * 0.4,
                    height: 40,
                    child: TextButton(
                      clipBehavior: Clip.antiAlias,
                      onPressed: () {
                        ScaffoldMessenger.of(context).clearSnackBars();
                        Navigator.popAndPushNamed(context, HomePage.routeName);
                      },
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              const Color(0xff009688)),
                          overlayColor: MaterialStateProperty.all<Color>(
                              const Color(0xffd177ef)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                            ),
                          )),
                      child: const Text(
                        'LOG IN',
                        textScaleFactor: 1.1,
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 16),
                    child: TextButton(
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: const Text(
                              'We send an email to change your password.',
                              softWrap: true,
                              textAlign: TextAlign.center,
                            ),
                            width: size.width * 0.7,
                            behavior: SnackBarBehavior.floating,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        );
                      },
                      child: const Text(
                        'Forgot password?',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
