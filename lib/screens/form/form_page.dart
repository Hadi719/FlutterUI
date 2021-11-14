import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

class FormPage extends StatefulWidget {
  const FormPage({Key? key}) : super(key: key);

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final GlobalKey<FormState> _genderKey = GlobalKey<FormState>();

  late String name;
  late String lastName;
  late String birthday;
  Gender gender = Gender.male;

  /// settings.
  double? fromTextFontSize = 13;
  double? formTextAndInputSpace = 8;
  double? formItemSpace = 16;
  double? formInputFontSize = 14;
  double formBorderRadiusEnable = 20;
  double formBorderRadius = 20;
  double formLabelFontSize = 12;
  Color? formTextColor = Colors.red;
  Color? formInputColor = Colors.white;
  Color? formLabelColor = Colors.grey;
  Color? formFloatingLabelColor = Colors.blue;
  Color formBorderColorEnable = Colors.grey;

  /// Gender
  Object? _genderValue = 'Male';
  List<String> listOfValue = ['Male', 'Female'];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xff15182e),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 32, right: 32, top: 32),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    children: const [
                      Text(
                        'Sign Up',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 32,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                        softWrap: true,
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          /// First Name
                          Text(
                            'First Name',
                            style: TextStyle(
                              color: formTextColor,
                              fontSize: fromTextFontSize,
                            ),
                          ),
                          SizedBox(
                            height: formTextAndInputSpace,
                          ),
                          TextFormField(
                            onChanged: (newValue) {},
                            maxLines: 1,
                            keyboardType: TextInputType.name,
                            textInputAction: TextInputAction.next,
                            validator: RequiredValidator(
                              errorText: 'The First Name cannot be empty',
                            ),
                            style: TextStyle(
                              color: formInputColor,
                              fontSize: formInputFontSize,
                            ),
                            decoration: InputDecoration(
                              label: Text(
                                'Enter your First Name',
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
                              ),
                            ),
                          ),
                          SizedBox(
                            height: formItemSpace,
                          ),

                          /// Last Name
                          Text(
                            'Last Name',
                            style: TextStyle(
                              color: formTextColor,
                              fontSize: fromTextFontSize,
                            ),
                          ),
                          SizedBox(
                            height: formTextAndInputSpace,
                          ),
                          TextFormField(
                            onChanged: (newValue) {},
                            maxLines: 1,
                            keyboardType: TextInputType.name,
                            textInputAction: TextInputAction.next,
                            validator: RequiredValidator(
                              errorText: 'The Last Name cannot be empty',
                            ),
                            style: TextStyle(
                              color: formInputColor,
                              fontSize: formInputFontSize,
                            ),
                            decoration: InputDecoration(
                              label: Text(
                                'Enter your Last Name',
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
                              ),
                            ),
                          ),
                          SizedBox(
                            height: formItemSpace,
                          ),

                          /// Email
                          Text(
                            'Email',
                            style: TextStyle(
                              color: formTextColor,
                              fontSize: fromTextFontSize,
                            ),
                          ),
                          SizedBox(
                            height: formTextAndInputSpace,
                          ),
                          TextFormField(
                            onChanged: (newValue) {},
                            maxLines: 1,
                            keyboardType: TextInputType.emailAddress,
                            textInputAction: TextInputAction.next,
                            validator: MultiValidator([
                              RequiredValidator(
                                  errorText: "Email cannot be empty"),
                              EmailValidator(
                                  errorText:
                                      "Please enter a valid email address"),
                            ]),
                            style: TextStyle(
                              color: formInputColor,
                              fontSize: formInputFontSize,
                            ),
                            decoration: InputDecoration(
                              label: Text(
                                'Enter your Email',
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
                              ),
                            ),
                          ),
                          SizedBox(
                            height: formItemSpace,
                          ),

                          /// Mobile
                          Text(
                            'Mobile',
                            style: TextStyle(
                              color: formTextColor,
                              fontSize: fromTextFontSize,
                            ),
                          ),
                          SizedBox(
                            height: formTextAndInputSpace,
                          ),
                          TextFormField(
                            onChanged: (newValue) {},
                            maxLines: 1,
                            keyboardType: TextInputType.number,
                            textInputAction: TextInputAction.next,
                            validator: RequiredValidator(
                              errorText: 'The Mobile cannot be empty',
                            ),
                            style: TextStyle(
                              color: formInputColor,
                              fontSize: formInputFontSize,
                            ),
                            decoration: InputDecoration(
                              label: Text(
                                'Enter your Mobile Number',
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
                              ),
                            ),
                          ),
                          SizedBox(
                            height: formItemSpace,
                          ),

                          /// Gender
                          Text(
                            'Gender',
                            style: TextStyle(
                              color: formTextColor,
                              fontSize: fromTextFontSize,
                            ),
                          ),
                          SizedBox(
                            height: formTextAndInputSpace,
                          ),
                          DropdownButtonFormField(
                            key: _genderKey,
                            style: TextStyle(
                              color: formLabelColor,
                              fontSize: formLabelFontSize,
                            ),
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                gapPadding: 0,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(formBorderRadiusEnable),
                                ),
                                borderSide: BorderSide(
                                  color: formBorderColorEnable,
                                ),
                              ),
                            ),
                            value: _genderValue,
                            hint: Text(
                              'Choose gender',
                              style: TextStyle(color: formLabelColor),
                            ),
                            isExpanded: true,
                            onChanged: (value) {
                              setState(() {
                                _genderValue = value;
                              });
                            },
                            onSaved: (value) {
                              setState(() {
                                _genderValue = value;
                              });
                            },
                            items: listOfValue.map((String val) {
                              return DropdownMenuItem(
                                value: val,
                                child: Text(
                                  val,
                                ),
                              );
                            }).toList(),
                          ),
                          SizedBox(height: size.height * 0.05),
                          Center(
                            child: SizedBox(
                              width: size.width * 0.4,
                              height: 45,
                              child: TextButton(
                                clipBehavior: Clip.antiAlias,
                                onPressed: () {
                                  if (_formKey.currentState!.validate()) {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(
                                        backgroundColor: Colors.white,
                                        content: Text(
                                          'Valid form, submitted successfully',
                                          style: TextStyle(
                                            color: Colors.black,
                                          ),
                                        ),
                                      ),
                                    );
                                  }
                                },
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                    const Color(0xff4f46a5),
                                  ),
                                  overlayColor:
                                      MaterialStateProperty.all<Color>(
                                    const Color(0xffd177ef),
                                  ),
                                  shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18.0),
                                    ),
                                  ),
                                ),
                                child: const Text(
                                  'Submit',
                                  textScaleFactor: 1.1,
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 32,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

enum Gender { male, female }
