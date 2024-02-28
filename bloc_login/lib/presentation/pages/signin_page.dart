import 'package:bloc_login/Logic/signin_bloc/signin_bloc.dart';
import 'package:bloc_login/presentation/pages/login_page.dart';
import 'package:bloc_login/presentation/pages/widgets/social_media.dart';
import 'package:bloc_login/presentation/pages/widgets/test_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SigninPage extends StatelessWidget {
  SigninPage({super.key});

  final username = TextEditingController();
  final email = TextEditingController();
  final password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<SigninBloc, SigninState>(
        listener: (context, state) {
          if (state is SigninFailure) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(state.error),
              ),
            );
          }

          if (state is SigninSuccess) {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LoginPage(),
                ));
          }
        },
        builder: (context, state) {
          if (state is SigninLoading) {
            return const Center(child: CircularProgressIndicator());
          }
          return SingleChildScrollView(
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 15, top: 50),
                  child: Text(
                    "Hi!",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Padding(
                  padding: EdgeInsets.only(
                    left: 15,
                  ),
                  child: Text(
                    'Create a new Account',
                    style: TextStyle(color: Color.fromARGB(255, 42, 8, 233)),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                OTextField(
                  controller: username,
                  hintText: 'Your Name',
                  obscureText: false,
                ),
                const SizedBox(
                  height: 30,
                ),
                OTextField(
                  controller: email,
                  hintText: 'Email',
                  obscureText: false,
                ),
                const SizedBox(
                  height: 30,
                ),
                PasswordField(
                  controller: password,
                  hintText: 'Password',
                  obscureText: true,
                ),
                const SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 140),
                      backgroundColor: const Color.fromARGB(255, 190, 0, 30),
                      foregroundColor: Colors.white,
                    ),
                    icon: const Icon(Icons.login),
                    onPressed: () {
                      // FirebaseAuth.instance
                      //     .createUserWithEmailAndPassword(
                      //         email: email.text, password: password.text)
                      //     .then((value) {
                      //   print('Created new acc');
                      //   Navigator.push(
                      //       context,
                      //       MaterialPageRoute(
                      //           builder: (context) => const LoginPage()));
                      // }).onError((error, stackTrace) {
                      //   print('Error ${error.toString()}');
                      // });
                      context.read<SigninBloc>().add(SigninRequest(
                          email: email.text.trim(),
                          password: password.text.trim()));
                    },
                    label: const Text('SignUp'),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          color: Colors.grey[400],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Text('or'),
                      ),
                      Expanded(
                        child: Divider(
                          color: Colors.grey[400],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Social Media Login',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocialMediaLogin(
                      imagePath: 'assets/Google.png',
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    SocialMediaLogin(
                      imagePath: 'assets/facebook.png',
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    SocialMediaLogin(
                      imagePath: 'assets/apple.png',
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Do you have an Account?',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    GestureDetector(
                      child: const Text(
                        'Login',
                        style: TextStyle(
                          color: Color.fromARGB(255, 190, 0, 30),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginPage(),
                          ),
                        );
                      },
                    ),
                  ],
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
