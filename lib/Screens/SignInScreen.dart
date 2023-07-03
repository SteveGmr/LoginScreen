import 'package:flutter/material.dart';
import 'package:loginapp/Colors.dart';
import 'package:loginapp/Screens/LoginScreen.dart';
import 'package:loginapp/Widgets/MyNewTextField.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  bool showtext = false;
  bool CheckCheck = false;

  var namecontroler = TextEditingController();
  var emailcontroler = TextEditingController();
  var numbercontroler = TextEditingController();
  var passwordcontroler = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyBlue,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                //title section
                const Text(
                  'Sign In',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 50),
                //Name textfield section-----------------
                MyNewTextField(
                  textfieldcontroller: namecontroler,
                  HelperText: 'Name',
                  HintText: 'Enter your Name',
                  PrefixIcon: Icons.email,
                  KeyBoardType: TextInputType.name,
                  ShowText: false,
                ),
                const SizedBox(height: 20),
                //num textfield section-----------------
                MyNewTextField(
                  textfieldcontroller: numbercontroler,
                  HelperText: 'Number',
                  HintText: 'Enter your Number',
                  PrefixIcon: Icons.email,
                  KeyBoardType: TextInputType.phone,
                  ShowText: false,
                ),
                const SizedBox(height: 20),
                MyNewTextField(
                  textfieldcontroller: emailcontroler,
                  HelperText: 'Email',
                  HintText: 'Enter your Email',
                  PrefixIcon: Icons.email,
                  KeyBoardType: TextInputType.emailAddress,
                  ShowText: false,
                ),
                const SizedBox(height: 20),
                //password textfield section-----------------
                MyNewTextField(
                  textfieldcontroller: passwordcontroler,
                  HelperText: 'Password',
                  HintText: 'Enter your Password',
                  PrefixIcon: Icons.lock,
                  KeyBoardType: TextInputType.visiblePassword,
                  SufixIcon:
                      !showtext ? Icons.visibility : Icons.visibility_off,
                  ShowText: showtext,
                  SufixClick: () {
                    setState(() {
                      showtext = !showtext;
                      !showtext
                          ? print('password is visible')
                          : print('password is not visible');
                    });
                  },
                ),
                const SizedBox(height: 7),
                //remember me & forgot pass section-----------------
                Row(
                  children: [
                    Checkbox(
                      value: CheckCheck,
                      onChanged: (val) {
                        setState(() {
                          CheckCheck = !CheckCheck;
                          CheckCheck
                              ? print('You remembered passwoes')
                              : print('You don\'t remember password');
                        });
                      },
                    ),
                    const Text(
                      'Remember me',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                //login button section-----------------
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white,
                  ),
                  child: MaterialButton(
                    child: Text(
                      'Sign Up',
                      style: TextStyle(color: MyTextFlieldBlue, fontSize: 16),
                    ),
                    onPressed: () {
                      print(namecontroler.text);
                      print(numbercontroler.text);
                      print(emailcontroler.text);
                      print(passwordcontroler.text);
                      print('You Signed In successfully');
                    },
                  ),
                ),

                const SizedBox(height: 30),
                //don't have an account section ------------
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Allredy have an account?',
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(width: 5),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginScreen()));
                        print('Go to Log In page');
                      },
                      child: Text(
                        'Log In',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
