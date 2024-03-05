import 'package:flutter/material.dart';
import 'package:flutter_application_1/mix/dropdown.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool? isChecked = false;
  @override
  Widget build(BuildContext context) {
    final widthSize = MediaQuery.of(context).size.width / 100;
    final heightFactor = MediaQuery.of(context).size.height / 100;

    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(
          top: 70,
          bottom: 20,
        ),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Register",
                style: TextStyle(
                    fontSize: 24,
                    letterSpacing: 0.5,
                    fontWeight: FontWeight.w600),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12.0, vertical: 5.0),
                child: Container(
                  width: 250,
                  color: Colors.transparent,
                  child: const Text(
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    "Choose your country & enter your mobile number to continue",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(height: 2.5 * heightFactor),
              Container(
                  margin: const EdgeInsets.all(20),
                  height: 7 * heightFactor,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                      color: Colors.amber),
                  child: const DropDown()),
              Container(
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(25))),
                height: 50,
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.all(20),
                child: TextField(
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25))),
                    prefix: Row(mainAxisSize: MainAxisSize.min, children: [
                      const Padding(
                        padding: EdgeInsets.all(8),
                        child: Text('+92'),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Container(
                            height: 25, width: 2, color: Colors.black26),
                      ),
                    ]),
                    labelText: "Your mobile number",
                  ),
                ),
              ),
              Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.all(20),
                color: Colors.transparent,
                child: Row(children: [
                  GestureDetector(
                      onTap: () => onCheck(),
                      child: Icon(isChecked!
                          ? Icons.check_circle_rounded
                          : Icons.check_circle_outline)),
                  const SizedBox(
                    width: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 40),
                    child: RichText(
                        text: const TextSpan(
                            text: 'By signing up, you agree the ',
                            style: TextStyle(color: Colors.black),
                            children: <TextSpan>[
                          TextSpan(
                            text: 'terms of \n service ',
                            style: TextStyle(color: Colors.amber),
                          ),
                          TextSpan(text: 'and '),
                          TextSpan(
                            text: ' private poloicy',
                            style: TextStyle(color: Colors.amber),
                          )
                        ])),
                  )
                ]),
              ),
              Container(
                margin: const EdgeInsets.all(20),
                height: 50,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(25))),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xfffdaf17) // Change the background color here
                        ),
                    onPressed: () {},
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text("Next"),
                        SizedBox(
                          width: 20,
                        ),
                        Icon(Icons.arrow_forward)
                      ],
                    )),
              ),
              Container(
                margin: const EdgeInsets.all(20),
                color: Colors.transparent,
                width: MediaQuery.of(context).size.width,
                child: const Row(children: <Widget>[
                  Expanded(child: Divider()),
                  SizedBox(
                    width: 15,
                  ),
                  Text("OR"),
                  SizedBox(
                    width: 15,
                  ),
                  Expanded(child: Divider()),
                ]),
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    //  const       SizedBox(
                    //     width: 20,
                    //   ),
                    Stack(children: [
                      const Padding(
                        padding: EdgeInsets.only(right: 20),
                        child: CircleAvatar(
                          radius: 20,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: CircleAvatar(
                          radius: 10,
                          child: InkWell(
                            onTap: () {},
                            child: const Image(
                                image: AssetImage("lib/images/gmail.png")),
                          ),
                        ),
                      ),
                    ]),

                    //       const SizedBox(
                    //   width: 20,
                    // ),
                    CircleAvatar(
                      radius: 20,
                      child: InkWell(
                          onTap: () {},
                          child: const Icon(Icons.facebook_rounded)),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    CircleAvatar(
                      radius: 20,
                      child: InkWell(
                          onTap: () {}, child: const Icon(Icons.apple_rounded)),
                    ),
                  ],
                ),
              ),
              const Center(
                child: Column(
                  children: [
                    Text(
                      "Already hav an account?",
                      style:
                          TextStyle(color: Color(0xff2a2a2a),fontSize: 16, fontWeight: FontWeight.normal),
                    ),
                    Text(
                      "Sign in",
                      style: TextStyle(color:Color(0xfffdaf17), fontSize: 16),
                    ),
                  ],
                ),
              ),
            ]),
      ),
    ));
  }

  void onCheck() {
    isChecked! ? isChecked = false : isChecked = true;
    setState(() {});
  }
}
