import 'package:flutter/material.dart';
import 'package:news_application/views/home_view.dart';
import 'package:news_application/views/register_screen.dart';
import 'package:news_application/widgets/custom_button.dart';
import 'package:news_application/widgets/custom_textfield.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown.shade300,
      appBar: AppBar(
        title: Text('Login Page'),
        backgroundColor: Colors.brown.shade200,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 100),
            Text(
              'Login',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
            ),
            CustomFormTextField(
              hintText: 'Email',
            ),
            SizedBox(
              height: 20,
            ),
            CustomFormTextField(
              hintText: 'Password',
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
                child: CustomButon(text: 'Login'),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return HomeView();
                  }));
                }),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'dont\'t have an account?',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return RegisterPage();
                    }));
                  },
                  child: Text(
                    '  SignUp',
                    style: TextStyle(
                      color: Colors.brown,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
