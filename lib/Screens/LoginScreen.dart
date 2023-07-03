import 'package:flutter/material.dart';
import 'package:loginapp/Colors.dart';
import 'package:loginapp/Widgets/MyTextFiled.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool showtext = false;
  bool CheckCheck = false;
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
                  'Log In',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 50),
                //email textfield section-----------------
                MyTextField(
                  HelperText: 'Email',
                  HintText: 'Enter your Email',
                  PrefixIcon: Icons.email,
                  KeyBoardType: TextInputType.emailAddress,
                ),
                const SizedBox(height: 20),
                //password textfield section-----------------
                MyTextField(
                  HelperText: 'Password',
                  HintText: 'Enter your Password',
                  PrefixIcon: Icons.lock,
                  KeyBoardType: TextInputType.visiblePassword,
                  SufixIcon: Icons.visibility,
                  ShowText: showtext,
                  SufixClick: () {
                    setState(() {
                      showtext = !showtext;
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
                        });
                      },
                    ),
                    const Text(
                      'Remember me',
                      style: TextStyle(color: Colors.white),
                    ),
                    const Spacer(),
                    GestureDetector(
                      onTap: () {},
                      child: const Text(
                        'Forgot Password !',
                        style: TextStyle(color: Colors.white),
                      ),
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
                      'Log In',
                      style: TextStyle(color: MyTextFlieldBlue, fontSize: 16),
                    ),
                    onPressed: () {},
                  ),
                ),
                const SizedBox(height: 20),
                //OR section-----------------
                const Text('- OR -',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    )),
                const SizedBox(height: 20),
                //'sign in with' text section -----------------
                const Text(
                  'Sign In with',
                  style: TextStyle(color: Colors.white),
                ),
                const SizedBox(height: 20),
                //google & facebook Icons Section--------------
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      height: 50,
                      width: 50,
                      child: Image.asset('images/google.png'),
                    ),
                    SizedBox(
                      height: 50,
                      width: 50,
                      child: Image.asset('images/facebook.png'),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                //don't have an account section ------------
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'don\'t have an account?',
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(width: 5),
                    Text(
                      'Sign Up',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
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
