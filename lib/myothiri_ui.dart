import 'package:flutter/material.dart';
import 'package:starlight_utils/starlight_utils.dart';

class MyoThiriLoginUi extends StatefulWidget {
  const MyoThiriLoginUi({super.key});

  @override
  State<MyoThiriLoginUi> createState() => _MyoThiriLoginUiState();
}

const Color color = Color.fromRGBO(252, 68, 53, 1);
const Color firstColor = Color.fromRGBO(229, 35, 106, 1);
const LinearGradient gradient = LinearGradient(
  colors: [
    firstColor,
    color,
  ],
  stops: [
    0,
    20,
  ],
  begin: Alignment.bottomLeft,
  end: Alignment.topRight,
);

class _MyoThiriLoginUiState extends State<MyoThiriLoginUi> {
  final GlobalKey<FormState> globalKey = GlobalKey();

  void login() {
    // globalKey.currentState?.validate();
    // StarlightUtils.aboutDialog(
    //     applicationName: "Hello World",
    //     applicationVersion: "1.0.1",
    //     children: [
    //       const Text("hello world"),
    //     ]);

    // StarlightUtils.snackbar(const SnackBar(
    //   content: Text("Hello World"),
    // ));

    // StarlightUtils.push(const LoginUi());
    // StarlightUtils.datePicker(
    //   initialDate: DateTime.now(),
    //   firstDate: DateTime(2000),
    //   lastDate: DateTime(2100),
    // );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: globalKey,
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 330,
                decoration: const BoxDecoration(
                  gradient: gradient,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 120,
                      height: 120,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.white,
                          width: 3,
                        ),
                        shape: BoxShape.circle,
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(4.0),
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://fiverr-res.cloudinary.com/images/t_main1,q_auto,f_auto,q_auto,f_auto/gigs/128009228/original/8e8ad34b012b46ebd403bd4157f8fef6bb2c076b/design-minimalist-flat-cartoon-caricature-avatar-in-6-hours.jpg"),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 30, bottom: 20),
                      child: Text(
                        "Ye Myo Aung",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Text(
                      DateTime.now()
                          .differenceTimeInString(DateTime(1990, 2, 2)),
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                child: TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) => value?.isNotEmpty == true
                      ? value!.isEmail
                          ? null
                          : "Invaild Email"
                      : "Username is requried",
                  decoration: const InputDecoration(
                    labelText: "Username",
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: color,
                      ),
                    ),
                    floatingLabelStyle: TextStyle(
                      color: Colors.black54,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20, left: 20, right: 20),
                child: TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) => value?.isNotEmpty == true
                      ? value!.tryInt == null
                          ? "we only accept number"
                          : null
                      : "Password is requried",
                  decoration: const InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color.fromRGBO(252, 68, 53, 1),
                      ),
                    ),
                    labelText: "Password",
                    floatingLabelStyle: TextStyle(
                      color: Colors.black54,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, bottom: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Text(
                      "Forgot your password?",
                      style: TextStyle(
                        color: color,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 20, right: 20, bottom: 30),
                height: 50,
                width: double.infinity,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(color),
                  ),
                  onPressed: login,
                  child: const Text("SIGN IN"),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "Don't have an account?",
                    style: TextStyle(
                      color: Colors.black45,
                      // fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Sign up",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
