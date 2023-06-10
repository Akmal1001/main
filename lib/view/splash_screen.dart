// import 'package:aplication/auth/register_page.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';

// class SplashPage extends StatelessWidget {
//   const SplashPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Container(
//           width: double.infinity,
//           decoration: const BoxDecoration(
//               gradient: LinearGradient(
//                   begin: Alignment.bottomCenter,
//                   end: Alignment.topCenter,
//                   colors: [Colors.blue, Colors.white10])),
//           child: Column(
//             children: [
//               SvgPicture.asset('assets/title.svg'),
//               Align(
//                 alignment: Alignment.centerRight,
//                 child: SvgPicture.asset('assets/welcome.svg'),
//               )
//             ],
//           ),
//         ),
//       ),
//       floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
//       floatingActionButton: SizedBox(
//           height: MediaQuery.of(context).size.height * 0.06,
//           width: double.infinity,
//           child: Padding(
//             padding: EdgeInsets.symmetric(
//                 horizontal: MediaQuery.of(context).size.width * 0.02),
//             child: ElevatedButton(
//                 style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.white60,
//                     shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(50.0))),
//                 onPressed: () {
//                   Navigator.push(context,
//                       MaterialPageRoute(builder: (context) => RegisterPage()));
//                 },
//                 child: const Text(
//                   'NEXT',
//                   style: TextStyle(
//                     fontSize: 24.0,
//                     fontWeight: FontWeight.w500,
//                   ),
//                 )),
//           )),
//     );
//   }
// }
