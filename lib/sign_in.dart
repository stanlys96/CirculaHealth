import 'package:circulahealth/components/social_button.dart';
import 'package:circulahealth/map_page.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  RichText(
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text: 'Sign in to your account',
                          style: TextStyle(
                              fontSize: 32.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 10.0),
                    child: Text(
                      "Let's sign in to your account",
                      style: TextStyle(
                        color: Color(0xFF696969),
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(bottom: 10.0),
                    child: Text(
                      "Email",
                      style: TextStyle(
                        color: Color(0xFF696969),
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  TextField(
                    controller: _emailController,
                    decoration: InputDecoration(
                      hintText: 'Your email',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(
                          color: Color(0xFFDFDFDF),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(
                          color: Color(0xFFDFDFDF),
                          width: 1.0,
                        ),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 10.0),
                    child: Text(
                      "Password",
                      style: TextStyle(
                        color: Color(0xFF696969),
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  TextField(
                    controller: _passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: '**********',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(
                          color: Color(0xFFDFDFDF),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(
                          color: Color(0xFFDFDFDF),
                          width: 1.0,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 20,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  isChecked = !isChecked;
                                });
                              },
                              child: Container(
                                width: 20,
                                height: 20,
                                decoration: BoxDecoration(
                                  color: isChecked
                                      ? Colors.blue
                                      : Colors.transparent,
                                  borderRadius: BorderRadius.circular(6),
                                  border: Border.all(
                                    color: isChecked
                                        ? Colors.blue
                                        : const Color(0xFF696969),
                                    width: 1,
                                  ),
                                ),
                                child: isChecked
                                    ? const Icon(Icons.check,
                                        size: 18.0, color: Colors.white)
                                    : null,
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 8.0),
                              child: Text(
                                "Remember me",
                                style: TextStyle(
                                  color: Color(0xFF696969),
                                ),
                              ),
                            )
                          ],
                        ),
                        InkWell(
                          onTap: () {},
                          child: const Text(
                            "Forgot password?",
                            style: TextStyle(
                              color: Color(0xFF216FFF),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const MapPage(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          backgroundColor: const Color(0xFF216FFF),
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                left: 10,
                              ),
                              child: Text(
                                'Sign in',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 10.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Divider(
                            height: 5,
                            thickness: 1,
                            color: Color(0xFFDDDDDD),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16.0),
                          child: Text(
                            "or",
                            style: TextStyle(
                              fontSize: 16,
                              color: Color(0xFFDDDDDD),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Divider(
                            height: 5,
                            thickness: 1,
                            color: Color(0xFFDDDDDD),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SocialButton(
                    title: "Apple",
                    topPadding: 10,
                    iconString: "apple_icon",
                  ),
                  const SocialButton(
                    title: "Google",
                    topPadding: 10,
                    iconString: "google_icon",
                  ),
                  const SocialButton(
                    title: "X",
                    topPadding: 10,
                    iconString: "x_icon",
                  ),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
