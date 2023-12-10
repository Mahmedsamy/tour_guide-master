import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:tour_guide/layout/start_screen/start_screen.dart';
import '../../../styles/colors.dart';


  final FirebaseAuth _auth= FirebaseAuth.instance;

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}
class _SignUpState extends State<SignUp> {

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _register() async {
    final User? user = (
        await _auth.createUserWithEmailAndPassword(email: _emailController.text, password: _passwordController.text)
    ).user;

    if(user != null) {
      setState(() {
      });
    } else {
      setState(() {
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown,
      body: SafeArea(
        child: Container(
          color: colorPrimary,
        ),
      ),
      bottomSheet: BottomSheet(
        backgroundColor: Colors.brown,
        enableDrag: false,
        builder: (BuildContext context) => Container(
          height: MediaQuery.of(context).size.height / 1.1,
          margin: const EdgeInsets.symmetric(horizontal: 8),
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(
                  48,
                ),
                topRight: Radius.circular(48),
              )),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                  vertical: 24, horizontal: 24),
              child: Form(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('انشاء حساب',
                            style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Colors.brown)),
                      ],
                    ),
                    const SizedBox(
                      height: 48,
                    ),
                    Image.asset(
                      'assets/projlogo.jpeg',
                      height: 100.0,
                      width: 100.0,
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    TextFormField(
                      controller: _emailController,
                      cursorColor: colorPrimaryDark,
                      maxLength: 20,
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                        helperText: 'enter a valid user name',
                        prefixIcon: const Icon(
                          Icons.person,
                          color: Colors.grey,
                        ),
                        suffixIcon: Icon(
                          Icons.check_circle,
                          color: _emailController.text.length >= 20
                              ? Colors.green
                              : Colors.grey,
                        ),
                        enabledBorder: const OutlineInputBorder(
                          borderSide:
                          BorderSide(color: Color(0xFF6200EE)),
                        ),
                      ),
                    ),
                    TextFormField(
                      controller: _passwordController,
                      cursorColor: colorPrimaryDark,
                      maxLength: 20,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        helperText: 'enter a valid mail',
                        prefixIcon: const Icon(
                          Icons.mail_outline_rounded,
                          color: Colors.grey,
                        ),
                        suffixIcon: Icon(
                          Icons.check_circle,
                          color: _passwordController.text.length >= 20
                              ? Colors.green
                              : Colors.grey,
                        ),
                        enabledBorder: const OutlineInputBorder(
                          borderSide:
                          BorderSide(color: Color(0xFF6200EE)),
                        ),
                      ),
                    ),
                    // TextFormField(
                    //   controller: phoneNumberController,
                    //   cursorColor: colorPrimaryDark,
                    //   maxLength: 20,
                    //   keyboardType: TextInputType.number,
                    //   decoration: InputDecoration(
                    //     helperText: 'enter a valid phone number',
                    //     prefixIcon: const Icon(
                    //       Icons.phone_android,
                    //       color: Colors.grey,
                    //     ),
                    //     suffixIcon: Icon(
                    //       Icons.check_circle,
                    //       color: phoneNumberController.text.length >= 20
                    //           ? Colors.green
                    //           : Colors.grey,
                    //     ),
                    //     enabledBorder: const OutlineInputBorder(
                    //       borderSide:
                    //       BorderSide(color: Color(0xFF6200EE)),
                    //     ),
                    //   ),
                    // ),
                    // TextFormField(
                    //   controller: _passwordController,
                    //   cursorColor: colorPrimaryDark,
                    //   maxLength: 20,
                    //   obscureText: true,
                    //   keyboardType: TextInputType.visiblePassword,
                    //   decoration: InputDecoration(
                    //     helperText: 'enter a valid password',
                    //     prefixIcon: const Icon(
                    //       Icons.lock,
                    //       color: Colors.grey,
                    //     ),
                    //     suffixIcon: Icon(
                    //       Icons.check_circle,
                    //       color: _passwordController.text.length >= 20
                    //           ? Colors.green
                    //           : Colors.grey,
                    //     ),
                    //     enabledBorder: const OutlineInputBorder(
                    //       borderSide:
                    //       BorderSide(color: Color(0xFF6200EE)),
                    //     ),
                    //   ),
                    // ),
                    const SizedBox(
                      height: 24,
                    ),
                    // state is RegisterLoadingState? CircularProgressIndicator():MaterialButton(
                    //   onPressed: () {
                    //     if (formKey.currentState!.validate()) {
                    //       cubit.register(
                    //           urName: usernameController.text,
                    //           password: passwordController.text,
                    //           phone: phoneNumberController.text,
                    //           email: emailController.text);
                    //     }
                    //     else{
                    //
                    //       showToast(message: "please entre your data", states: ToastStates.error);
                    //     }
                    //   },
                    //   shape: RoundedRectangleBorder(
                    //       borderRadius: BorderRadius.circular(22.0)),
                    //   minWidth: double.infinity,
                    //   height: 48,
                    //
                    //   color: Colors.green,
                    //   textColor: darkColorText,
                    //   child: Text(language!.register),
                    // ),
                    // SizedBox(
                    //   height: 24,
                    // ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          child: InkWell(
                            onTap: ()
                            async{
                          _register();


                          },
                            child: const Text(
                              'سجل',
                              style: TextStyle(color: Colors.brown,
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
        onClosing: () {}
      ),
    );

    // return Scaffold(
    //   backgroundColor: Colors.deepPurple,
    //   body: Center(
    //     child: SingleChildScrollView(
    //       child: Column(
    //         children: [
    //           const SizedBox(height: 100),
    //           Container(
    //             height: MediaQuery.of(context).size.height / 1.1,
    //             margin: EdgeInsets.symmetric(horizontal: 8),
    //             decoration: const BoxDecoration(
    //               borderRadius: BorderRadius.only(
    //                   topLeft: Radius.circular(40),
    //                   topRight: Radius.circular(40),
    //                   bottomLeft: Radius.circular(40),
    //                   bottomRight: Radius.circular(40)),
    //               color: Colors.white,
    //             ),
    //             child: Padding(
    //               padding: const EdgeInsets.all(10.0),
    //               child: Column(
    //                 children: [
    //                   const Text(
    //                     'Sign Up ',
    //                     style: TextStyle(
    //                       color: Colors.black,
    //                       fontSize: 20.0,
    //                       fontWeight: FontWeight.bold,
    //                     ),
    //                   ),
    //                   const SizedBox(
    //                     height: 40.0,
    //                   ),
    //                   TextFormField(
    //                     keyboardType: TextInputType.name,
    //                     decoration: InputDecoration(
    //                       labelText: "Name",
    //                       enabledBorder: OutlineInputBorder(
    //                         borderRadius: BorderRadius.circular(50),
    //                       ),
    //                     ),
    //                   ),
    //                   const SizedBox(
    //                     height: 20.0,
    //                   ),
    //                   TextFormField(
    //                     keyboardType: TextInputType.name,
    //                     decoration: InputDecoration(
    //                       labelText: "Email",
    //                       enabledBorder: OutlineInputBorder(
    //                         borderRadius: BorderRadius.circular(50),
    //                       ),
    //                     ),
    //                   ),
    //                   const SizedBox(
    //                     height: 20.0,
    //                   ),
    //                   TextFormField(
    //                     keyboardType: TextInputType.name,
    //                     decoration: InputDecoration(
    //                       labelText: "mobile Number",
    //                       enabledBorder: OutlineInputBorder(
    //                         borderRadius: BorderRadius.circular(50),
    //                       ),
    //                     ),
    //                   ),
    //                   const SizedBox(
    //                     height: 20.0,
    //                   ),
    //                   TextFormField(
    //                     keyboardType: TextInputType.name,
    //                     decoration: InputDecoration(
    //                       labelText: "Password",
    //                       enabledBorder: OutlineInputBorder(
    //                         borderRadius: BorderRadius.circular(50),
    //                       ),
    //                     ),
    //                   ),
    //                   const SizedBox(
    //                     height: 30.0,
    //                   ),
    //                   TextFormField(
    //                     keyboardType: TextInputType.name,
    //                     decoration: InputDecoration(
    //                       labelText: "Drop ID Image",
    //                       enabledBorder: OutlineInputBorder(
    //                         borderRadius: BorderRadius.circular(50),
    //                       ),
    //                       contentPadding: const EdgeInsets.symmetric(vertical: 90),
    //                     ),
    //                   ),
    //                   Spacer(),
    //                   GestureDetector(
    //                     onTap: (){
    //                       Navigator.push(
    //                           context,
    //                           MaterialPageRoute(
    //                               builder: (BuildContext context) => const RoleScreen() ));
    //                     },
    //                     child: Container(
    //                       padding: const EdgeInsets.all(25),
    //                       margin: const EdgeInsets.symmetric(horizontal: 25),
    //                       decoration: BoxDecoration(
    //                         color: Colors.green,
    //                         borderRadius: BorderRadius.circular(30),
    //                       ),
    //                       child: const Center(
    //                         child: Text('Sign In',
    //                           style: TextStyle(color: Colors.black,
    //                             fontSize: 15,
    //                             fontWeight: FontWeight.normal,
    //                           ),
    //
    //                         ),
    //                       ),
    //                     ),
    //                   ),
    //                 ],
    //               ),
    //             ),
    //           ),
    //         ],
    //       ),
    //     ),
    //   ),
    // );
  }
}
