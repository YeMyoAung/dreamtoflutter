import 'package:flutter/material.dart';

class A extends StatefulWidget {
  const A({super.key});

  @override
  State<A> createState() => _AState();
}

class _AState extends State<A> {
  void callMe() {
    print("hello");
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class LoginUi extends StatefulWidget {
  const LoginUi({super.key});

  @override
  State<LoginUi> createState() => _LoginUiState();
}

class _LoginUiState extends State<LoginUi> {
  final GlobalKey<FormState> globalKey = GlobalKey();

  void hello() {
    print("hi");
  }

  ///Form => Key
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          color: const Color.fromRGBO(87, 108, 214, 1),
          child: Form(
            key: globalKey,
            child: Column(
              children: [
                const A(
                    // key: globalKey,
                    ),
                Container(
                  margin: const EdgeInsets.only(
                    bottom: 40,
                  ),
                  height: 200,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://img.freepik.com/free-vector/hand-painted-watercolor-pastel-sky-background_23-2148902771.jpg?w=2000'),
                      fit: BoxFit.cover,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, 0.3),
                        offset: Offset(0.5, 3),
                      )
                    ],
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40),
                    ),
                  ),
                ),
                const Text(
                  "Welcome Back",
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 10, bottom: 30),
                  child: Text(
                    "login your account",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white60,
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    gradient: const LinearGradient(
                      colors: [
                        Color.fromRGBO(197, 204, 241, 1),
                        Color.fromRGBO(142, 158, 228, 1),
                      ],
                    ),
                  ),
                  margin: const EdgeInsets.symmetric(horizontal: 30),
                  child: TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (value) => value?.isNotEmpty == true
                        ? null
                        : "Username is requried",
                    cursorColor: Colors.black54,
                    decoration: InputDecoration(
                      prefixIcon: const Icon(
                        Icons.person,
                        color: Colors.black54,
                      ),
                      hintText: "username",
                      // filled: true,
                      // fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    gradient: const LinearGradient(
                      colors: [
                        Color.fromRGBO(197, 204, 241, 1),
                        Color.fromRGBO(142, 158, 228, 1),
                      ],
                    ),
                  ),
                  margin: const EdgeInsets.only(
                      left: 30, right: 30, top: 20, bottom: 5),
                  child: TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (value) => value?.isNotEmpty == true
                        ? null
                        : "Password is requried",
                    cursorColor: Colors.black54,
                    decoration: InputDecoration(
                      prefixIcon: const Icon(
                        Icons.lock,
                        color: Colors.black54,
                      ),
                      hintText: "password",
                      // filled: true,
                      // fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        Checkbox(
                          fillColor: MaterialStateProperty.all(Colors.white),
                          checkColor: const Color.fromRGBO(87, 108, 214, 1),
                          value: true,
                          onChanged: (_) {},
                        ),
                        const Text(
                          "Remember me",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    InkWell(
                      onTap: () {},
                      child: const Text(
                        "Forgot Password?",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 80, bottom: 20, left: 30, right: 30),
                  child: ElevatedButton(
                      style: ButtonStyle(
                        elevation: MaterialStateProperty.all(3),
                        padding: MaterialStateProperty.all(EdgeInsets.zero),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                      ),
                      onPressed: () {
                        // globalKey.currentState?.validate();
                        globalKey.currentState?.validate();
                        // globalKey.currentState?.callMe();
                      },
                      child: Container(
                        width: double.infinity,
                        height: 50,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          gradient: const LinearGradient(
                            colors: [
                              // Colors.purpleAccent,
                              Color.fromRGBO(40, 57, 86, 1),
                              Color.fromRGBO(59, 82, 154, 1),
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            // stops: [0, 40, 50],
                          ),
                          boxShadow: const [
                            BoxShadow(
                              color: Color.fromRGBO(255, 255, 255, 0.2),
                              offset: Offset(1, 1),
                              blurRadius: 1,
                              spreadRadius: 0.1,
                            )
                          ],
                        ),
                        child: const Text(
                          "Login",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      )),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "Don't  have an account?",
                      style: TextStyle(
                        color: Colors.white70,
                      ),
                    ),
                    InkWell(
                      child: Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          "Sign up",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline,
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
    );
  }
}
