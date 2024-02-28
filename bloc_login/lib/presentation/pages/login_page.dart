import 'package:bloc_login/Logic/auth_bloc/auth_bloc.dart';
import 'package:bloc_login/presentation/pages/home_page.dart';
import 'package:bloc_login/presentation/pages/widgets/social_media.dart';
import 'package:bloc_login/presentation/pages/widgets/test_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
//import 'package:flutter/widgets.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state is AuthFailure) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(state.error),
              ),
            );
          }

          if (state is AuthSuccess) {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const HomePAge(),
                ));
          }
        },
        builder: (context, state) {
          if (state is AuthLoading) {
            return const Center(child: CircularProgressIndicator());
          }
          return SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 150,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 15, top: 70),
                  child: Text(
                    "Welcome!",
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
                    'Sign in to continue',
                    style: TextStyle(color: Color.fromARGB(255, 42, 8, 233)),
                  ),
                ),
                const SizedBox(
                  height: 55,
                ),
                OTextField(
                    controller: emailController,
                    hintText: 'Email',
                    obscureText: false),
                const SizedBox(
                  height: 30,
                ),
                PasswordField(
                    controller: passwordController,
                    hintText: 'Password',
                    obscureText: true),
                const SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 140),
                      backgroundColor: const Color.fromARGB(255, 190, 0, 30),
                      foregroundColor: Colors.white,
                    ),
                    icon: const Icon(Icons.login),
                    onPressed: () {
                      context.read<AuthBloc>().add(AuthLoginRequested(
                            email: emailController.text.trim(),
                            password: passwordController.text.trim(),
                          ));
                    },
                    label: const Text('Log in'),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Fogot Password?',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
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
                      'Dont have an Account?',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    GestureDetector(
                      child: const Text(
                        'Sign Up',
                        style: TextStyle(
                          color: Color.fromARGB(255, 190, 0, 30),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onTap: () {},
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
