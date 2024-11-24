import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

import 'package:recipewise/authentication/authentication.dart';
import 'package:recipewise/home/home.dart';

import 'package:recipewise/bloc_observer.dart';
import 'package:recipewise/core/theme/theme.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = const AppBlocObserver();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  // In firebase case it is safe to wait for user.first
  // final authenticationRepository = AuthenticationRepository(
  //   authenticationApi: FirebaseAuthenticationApi(),
  // );
  // await authenticationRepository.user.first;

  final authenticationRepository = AuthenticationRepository(
    authenticationApi: DummyAuthenticationApi(),
  );

  runApp(
    MultiRepositoryProvider(
      providers: [
        RepositoryProvider(
          create: (context) => authenticationRepository,
        ),
      ],
      child: BlocProvider(
        create: (context) => AuthenticationBloc(
          authenticationRepository: context.read<AuthenticationRepository>(),
        ),
        child: const App(),
      ),
    ),
  );
}

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RecipeWise',
      theme: lightTheme(),
      darkTheme: darkTheme(),
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      home: BlocBuilder<AuthenticationBloc, AuthenticationState>(
        builder: (context, state) {
          return state.status == AuthenticationStatus.authenticated
              ? const HomePage()
              : const SignInPage();
        },
      ),
    );
  }
}
