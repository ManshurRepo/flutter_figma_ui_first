import 'package:flutter/material.dart';
import 'package:flutter_slicing_figma_two/presentations/pages/login_page.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.7,
                child: Image.asset(
                  'assets/images/logo.png',
                ),
              ),
              SizedBox(height: 60),
              const Text(
                'Welcome to Ajheryuk',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff303030)),
              ),
              SizedBox(
                height: 10,
              ),
              const Text(
                'Best and popular apps for live education course from home',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                  color: Color(0xff8C8C8C),
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                width: MediaQuery.sizeOf(context).width,
                // width: 100,
                height: 56,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginPage(),
                      ),
                    );
                  },
                  child: const Text(
                    'Get Started',
                    style: TextStyle(
                        color: Color(0xffFFFFFF),
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xffEC5F5F),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
