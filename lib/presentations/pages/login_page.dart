import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slicing_figma_two/presentations/pages/home_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: ListView(
            children: [
              SizedBox(
                  height: 140,
                  // color: Colors.amber,
                  child: Image.asset(
                    'assets/images/logo_noname.png',
                    fit: BoxFit.contain,
                  )),
              const TextField(
                decoration: InputDecoration(
                  labelText: 'email',
                  labelStyle: TextStyle(color: Color(0xff9D9FA0)),
                  fillColor: Color(0xffF6F7FA),
                  filled: true,
                  border: InputBorder.none,
                ),
              ),
              const SizedBox(height: 15),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                    labelText: 'password',
                    labelStyle: const TextStyle(color: Color(0xff9D9FA0)),
                    filled: true,
                    border: InputBorder.none,
                    fillColor: const Color(0xffF6F7FA),
                    suffixIcon: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.remove_red_eye_outlined,
                          color: Color(0xff9D9FA0),
                        ))),
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: 58,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomePage(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xffEC5F5F),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: const Text(
                    'Login',
                    style: TextStyle(
                        color: Color(0xffFFFFFF),
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              const SizedBox(height: 8),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'Forgot Password?',
                  style: TextStyle(
                      color: Color(0xff0082CD),
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(right: 10),
                      height: 1,
                      color: const Color(0xffC7C9D9),
                    ),
                  ),
                  const Text(
                    'or',
                    style: TextStyle(
                        color: Color(0xff8C8C8C),
                        fontSize: 16,
                        fontWeight: FontWeight.normal),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(left: 10),
                      height: 1,
                      color: const Color(0xffC7C9D9),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              SizedBox(
                height: 56,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff0082CD),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/icons/facebook.png'),
                      const SizedBox(width: 10),
                      const Text(
                        'Log in with Facebook',
                        style: TextStyle(
                            color: Color(0xffFFFFFF),
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Container(
                height: 56,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xffF6F7FA),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/icons/google.png'),
                      const SizedBox(width: 10),
                      const Text(
                        'Log in with Google',
                        style: TextStyle(
                            color: Color(0xff303030),
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 85),
              Center(
                child: Text.rich(
                  TextSpan(
                    children: [
                      const TextSpan(
                        text: 'Don’t have an account?',
                        style: TextStyle(
                          color: Color(0xff9D9FA0),
                        ),
                      ),
                      TextSpan(
                        text: ' Sign Up',
                        style: const TextStyle(color: Color(0xff0082CD)),
                        recognizer: TapGestureRecognizer()..onTap = () {},
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
