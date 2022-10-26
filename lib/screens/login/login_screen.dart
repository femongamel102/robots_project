import 'package:flutter/material.dart';
import 'package:robots_project/screens/widgets/app_text.dart';

import '../widgets/app_elevated_button.dart';

class LoginScreen extends StatefulWidget {
  static const String routeName = '/login';
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      backgroundColor: const Color(0xFF37B29A),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const AppText(
              text: 'Welcome',
            ),
            Column(
              children: [
                const AppText(
                  text: 'Yuki',
                ),
                const SizedBox(
                  height: 20,
                ),
                AppElevatedButton(
                  title: 'Sign up',
                  onPressed: () => _scaffoldKey.currentState?.showBottomSheet(
                      shape: const RoundedRectangleBorder(
                        // <-- SEE HERE
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(25.0),
                        ),
                      ),
                      (ctx) => _buildSignUp(ctx)),
                ),
                const SizedBox(
                  height: 20,
                ),
                AppElevatedButton(
                  title: 'Sign in',
                  onPressed: () => _scaffoldKey.currentState?.showBottomSheet(
                      shape: const RoundedRectangleBorder(
                        // <-- SEE HERE
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(25.0),
                        ),
                      ),
                      (ctx) => _buildSignIn(ctx)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSignUp(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          const AppText(
            text: 'Sign up',
            color: Colors.black,
          ),
          const TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Enter an integer',
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Enter an integer',
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Enter an integer',
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Enter an integer',
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Enter an integer',
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          AppElevatedButton(
            title: 'Sign Up',
            onPressed: () {},
          ),
        ],
      ),
    );
  }

  Widget _buildSignIn(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          const AppText(
            text: 'Sign In',
            color: Colors.black,
          ),
          const TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Enter an integer',
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Enter an integer',
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const AppText(
            text: 'Forget password ?',
            color: Colors.black,
          ),
          AppElevatedButton(
            title: 'Sign in',
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
