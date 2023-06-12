import 'package:flutter/material.dart';
import 'package:untitled/your_goal.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 30),
          width: double.maxFinite,
          child: Column(
            children: [
              const Text(
                'Hey There,',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 16,
                  color: Color(0xFF1D1617),
                ),
              ),
              const Text(
                'Create an Account',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              ),
              const SizedBox(height: 30),
              TextField(
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.all(10),
                  enabledBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(14)),
                    borderSide: BorderSide(color: Colors.transparent),
                  ),
                  filled: true,
                  fillColor: Colors.grey[200],
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(14)),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.all(Radius.circular(14)),
                  ),
                  hintText: 'First Name',
                  prefixIcon: const Icon(
                    Icons.person,
                    color: Color(0xFF7B6F72),
                  ),
                  hintStyle: const TextStyle(color: Color(0xFFADA4A5)),
                ),
                cursorColor: const Color(0xFFADA4A5),
                style: const TextStyle(fontSize: 12, fontFamily: 'Poppins'),
                maxLines: 1,
              ),
              const SizedBox(height: 15),
              TextField(
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.all(10),
                  enabledBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(14)),
                    borderSide: BorderSide(color: Colors.transparent),
                  ),
                  filled: true,
                  fillColor: Colors.grey[200],
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(14)),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.all(Radius.circular(14)),
                  ),
                  hintText: 'Last Name',
                  prefixIcon: const Icon(
                    Icons.person,
                    color: Color(0xFF7B6F72),
                  ),
                  hintStyle: const TextStyle(color: Color(0xFFADA4A5)),
                ),
                cursorColor: const Color(0xFFADA4A5),
                style: const TextStyle(fontSize: 12, fontFamily: 'Poppins'),
                maxLines: 1,
              ),
              const SizedBox(height: 15),
              TextField(
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.all(10),
                  enabledBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(14)),
                    borderSide: BorderSide(color: Colors.transparent),
                  ),
                  filled: true,
                  fillColor: Colors.grey[200],
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(14)),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.all(Radius.circular(14)),
                  ),
                  hintText: 'Email',
                  prefixIcon: const Icon(
                    Icons.mail,
                    color: Color(0xFF7B6F72),
                  ),
                  hintStyle: const TextStyle(color: Color(0xFFADA4A5)),
                ),
                cursorColor: const Color(0xFFADA4A5),
                style: const TextStyle(fontSize: 12, fontFamily: 'Poppins'),
                maxLines: 1,
              ),
              const SizedBox(height: 15),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.all(10),
                  enabledBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(14)),
                    borderSide: BorderSide(color: Colors.transparent),
                  ),
                  filled: true,
                  fillColor: Colors.grey[200],
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(14)),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.all(Radius.circular(14)),
                  ),
                  hintText: 'Password',
                  prefixIcon: const Icon(
                    Icons.lock,
                    color: Color(0xFF7B6F72),
                  ),
                  suffixIcon:
                      const Icon(Icons.visibility_off, color: Color(0xFF7B6F72)),
                  hintStyle: const TextStyle(color: Color(0xFFADA4A5)),
                ),
                cursorColor: const Color(0xFFADA4A5),
                style: const TextStyle(fontSize: 12, fontFamily: 'Poppins'),
                maxLines: 1,
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  SizedBox(
                    width: 24,
                    height: 24,
                    child: Checkbox(
                      value: false,
                      onChanged: (value) {
                      },
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(3))),
                      side: const BorderSide(width: 1, color: Color(0xFFADA4A5)),
                    ),
                  ),
                  const SizedBox(width: 10),
                  const Flexible(
                    child: Text(
                      'By continuing you accept our Privacy Policy\nand Term of Use',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 10,
                          color: Color(0xFFADA4A5)),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 100),
              Container(
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color(0xFF9DCEFF),
                      Color(0xFF92A3FD),
                    ],
                  ),
                  borderRadius: BorderRadius.circular(99),
                ),
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.transparent),
                    elevation: MaterialStateProperty.all<double>(0),
                    fixedSize: MaterialStateProperty.all<Size>(
                      const Size(double.maxFinite,
                          60), // Remplacez width et height par les valeurs souhaitées
                    ),
                    shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(99),
                      ),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) =>  const YourGoal()));
                  },
                  child: const Text(
                    'Register',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Divider(
                        color: Color(0xFFADA4A5),
                        height: 1,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        'Or',
                        style: TextStyle(fontSize: 12, fontFamily: 'Poppins'),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        color: Color(0xFFADA4A5),
                        height: 1,
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(Radius.circular(10)),
                        border:
                            Border.all(width: 1, color: const Color(0xFFADA4A5))),
                    child: Image.asset('assets/images/logos/google.png'),
                  ),
                  const SizedBox(width: 30),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(Radius.circular(10)),
                        border:
                            Border.all(width: 1, color: const Color(0xFFADA4A5))),
                    child: Image.asset('assets/images/logos/facebook.png'),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              RichText(
                text: const TextSpan(
                  children: [
                    TextSpan(
                      text: 'Already have an Account? ',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 14,
                        color: Colors.black,
                      ),
                    ),
                    TextSpan(
                      text: 'Login',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFC58BF2),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
