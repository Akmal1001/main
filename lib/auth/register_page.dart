// import 'package:aplication/core/response_handler.dart';
// import 'package:aplication/server/service.dart';
// import 'package:aplication/view/home_page.dart';
// import 'package:flutter/material.dart';

// class RegisterPage extends StatelessWidget {
//   TextEditingController userNameController = TextEditingController();
//   TextEditingController emailController = TextEditingController();
//   TextEditingController passwordController = TextEditingController();
//   RegisterPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('Register')),
//       body: Column(
//         children: [
//           TextFormField(
//             controller: userNameController,
//             decoration: const InputDecoration(hintText: 'User Name'),
//           ),
//           TextFormField(
//             controller: emailController,
//             decoration: const InputDecoration(hintText: 'Email'),
//           ),
//           TextFormField(
//             controller: passwordController,
//             decoration: const InputDecoration(hintText: 'Password'),
//           ),
//         ],
//       ),
//       floatingActionButton: FloatingActionButton.extended(
//           onPressed: () async {
//             dynamic response = await AuthService.register(
//                 username: userNameController.text,
//                 email: emailController.text,
//                 password: passwordController.text);

//             userNameController.clear();
//             emailController.clear();
//             passwordController.clear();

//             if (response is SuccessResponse) {
//               Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(),));
//             } else if (response is ErrorResponse) {
//               ScaffoldMessenger.of(context)
//                   .showSnackBar(SnackBar(content: Text(response.toString())));
//               return;
//             } else if (response is ExceptionResponse) {
//               ScaffoldMessenger.of(context)
//                   .showSnackBar(SnackBar(content: Text(response.toString())));
//             }
//           },
//           label: Text('Register')),
//     );
//   }
// }
