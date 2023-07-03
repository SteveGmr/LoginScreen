import 'package:flutter/material.dart';
import 'package:loginapp/Colors.dart';
import 'package:loginapp/Screens/SignInScreen.dart';
import 'package:loginapp/Widgets/MyNewTextField.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool showtext = false;
  bool CheckCheck = false;

  var emailcontroler = TextEditingController();
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
                  'Log In',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 50),
                //email textfield section-----------------
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
                    const Spacer(),
                    GestureDetector(
                      onTap: () {
                        print('You forgot password');
                      },
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
                    onPressed: () {
                      print(emailcontroler.text);
                      print(passwordcontroler.text);
                      print('You Loged In successfully');
                    },
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
                    GestureDetector(
                      onTap: () {
                        print('Sign in with google');
                      },
                      child: SizedBox(
                        height: 50,
                        width: 50,
                        child: Image.asset('images/google.png'),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        print('Sign in with facebook');
                      },
                      child: SizedBox(
                        height: 50,
                        width: 50,
                        child: Image.asset('images/facebook.png'),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                //don't have an account section ------------
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'don\'t have an account?',
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(width: 5),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignInScreen()));
                        print('Go to Sign up page');
                      },
                      child: Text(
                        'Sign Up',
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
