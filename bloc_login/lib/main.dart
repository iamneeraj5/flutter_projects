import 'package:bloc_login/Logic/auth_bloc/auth_bloc.dart';
import 'package:bloc_login/Logic/landing_page_bloc/landing_page_bloc.dart';
import 'package:bloc_login/presentation/pages/home_page.dart';
import 'package:bloc_login/presentation/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AuthBloc(),
        ),
        // BlocProvider(
        //   create: (context) => LandingPageBloc(),
        // )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: LoginPage(),
        
      ),
    );
  }
}
