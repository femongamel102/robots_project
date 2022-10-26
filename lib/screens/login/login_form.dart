// import 'package:flutter/material.dart';
//
// class LoginForm extends StatelessWidget {
//   const LoginForm({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }
//
//
// class BottomSheetExample extends StatefulWidget {
//   const BottomSheetExample({super.key});
//
//   @override
//   _BottomSheetExampleState createState() => _BottomSheetExampleState();
// }
//
// class _BottomSheetExampleState extends State<BottomSheetExample> {
//   // GlobalKey is needed to show bottom sheet.
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             ElevatedButton(
//               onPressed: () =>
//                   _scaffoldKey
//                       .currentState
//                       ?.showBottomSheet((ctx) => _buildBottomSheet(ctx)),
//               child: const Text('show bottom sheet'),
//             ),
//             ElevatedButton(
//               onPressed: () =>
//
//               child: const Text('show modal bottom sheet'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
// }