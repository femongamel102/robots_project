import 'package:flutter/material.dart';
import 'package:robots_project/screens/login/login_screen.dart';
import 'package:robots_project/screens/widgets/app_text.dart';

import '../widgets/app_elevated_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFF37B29A),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(),
            const AppText(text: 'welcome yuki',),
            Column(
              children: [
                AppElevatedButton(title: 'parent',onPressed: (){
                  Navigator.of(context).pushNamed(LoginScreen.routeName);
                }),
                const SizedBox(height: 20,),
                AppElevatedButton(title: 'child', onPressed: () {
                  Navigator.of(context).pushNamed(LoginScreen.routeName);
                },),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
