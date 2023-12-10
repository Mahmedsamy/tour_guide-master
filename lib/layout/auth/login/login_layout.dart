import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:tour_guide/layout/auth/register/register_layout.dart';
import 'package:tour_guide/layout/start_screen/start_screen.dart';
import '../../../shared/components.dart';
import '../../../styles/colors.dart';

final FirebaseAuth _auth= FirebaseAuth.instance;

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key, required this.title});

  final String title;

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}
class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    int success = 1;
    String userEmail = "";

    void _singIn() async {
      final User? user = (await _auth.signInWithEmailAndPassword(email: emailController.text, password: passwordController.text)).user;

      if(user != null) {
        setState(() {
          success = 2;
          userEmail = user.email!;
        });
      } else {
        setState(() {
          success = 3;
        });
      }
    }

    var formKey = GlobalKey<FormState>();

    return Scaffold(
      backgroundColor: colorPrimary,
      body: Container(
        color: Colors.brown[400],
      ),
      bottomSheet: SingleChildScrollView(
        child: BottomSheet(
          backgroundColor: Colors.brown[400],
          enableDrag: false,
          builder: (BuildContext context) => Container(
            height: MediaQuery.of(context).size.height / 1.1,
            margin: const EdgeInsets.symmetric(horizontal: 20),
            decoration: const BoxDecoration(
                color: Color(0xFFFFFFFF),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(
                    48,
                  ),
                  topRight: Radius.circular(48),
                )),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 24),
              child: Form(
                key: formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                            'تسجيل الدخول',
                            style: TextStyle(
                                fontSize: 35,
                                fontWeight: FontWeight.bold,
                                color: colorPrimaryDark)),
                      ],
                    ),
                    // const SizedBox(
                    //   height: 2,
                    // ),
                    Image.asset(
                      'assets/projlogo.jpeg',
                      height: 100.0,
                      width: 100.0,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: emailController,
                      cursorColor: colorPrimaryDark,
                      maxLength: 50,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        helperText: 'enter a valid mail',
                        prefixIcon: const Icon(
                          Icons.mail_outline_rounded,
                          color: Colors.grey,
                        ),
                        suffixIcon: Icon(
                          Icons.check_circle,
                          color: emailController.text.length >= 20
                              ? Colors.green
                              : Colors.grey,
                        ),
                        enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                      ),
                    ),
                    TextFormField(
                      controller: passwordController,
                      cursorColor: colorPrimaryDark,
                      obscureText: true,
                      keyboardType: TextInputType.visiblePassword,
                      maxLength: 20,
                      decoration: InputDecoration(
                        helperText: 'enter a valid password',
                        prefixIcon: const Icon(
                          Icons.lock_outline_rounded,
                          color: Colors.grey,
                        ),
                        suffixIcon: Icon(
                          Icons.visibility,
                          color: passwordController.text.length >= 20
                              ? Colors.green
                              : Colors.grey,
                        ),
                        enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Checkbox(
                          value: true,
                          onChanged: (value) {},
                        ),
                        const Text('RememberMe',
                          style: TextStyle(
                            color: Colors.brown),

                        ),
                        const Spacer(flex: 2),
                        const InkWell(
                          child: Text(
                            ' هل نسيت كلمه المرور',
                            style: TextStyle(color: Colors.brown),
                          ),
                        ),
                        const Spacer()
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          child: const Text(
                            'انشاء حساب',
                            style: TextStyle(color: Colors.brown,
                              fontSize: 20.0,
                            ),
                          ),
                          onTap: () {
                            navigateTo(context, const SignUp());
                          },
                        )
                      ],
                    ),
                    const Spacer(),
                    Column(
                      children: [
                        GestureDetector(
                          onTap: ()
                          // async{
                          //   _singIn();
                          // },
                  {Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) =>
                          const StartScreen(),
                          ));},
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            margin: const EdgeInsets.symmetric(horizontal: 20),
                            decoration: BoxDecoration(
                              color: Colors.brown[400],
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: const Center(
                              child: Text(
                                'تسجيل الدخول',
                                // language!.orders,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          onClosing: () {}
        ),
      ),
    );
  }
}
