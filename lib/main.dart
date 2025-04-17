import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

// Authentication
import 'package:authentication_repository/authentication_repository.dart';
import 'package:firebase_authentication_api/firebase_authentication_api.dart';

// Recipes
import 'package:recipe_api/recipe_api.dart' hide Recipe;
import 'package:firebase_recipe_api/firebase_recipe_api.dart';
import 'package:recipe_repository/recipe_repository.dart';
import 'package:recipewise/home/home.dart';

// Local
import 'firebase_options.dart';

import 'package:recipewise/authentication/authentication.dart';

import 'package:recipewise/bloc_observer.dart';
import 'package:recipewise/core/theme/theme.dart';

// https://cors-proxy.logmeinmail.workers.dev/?url=https://www.allrecipes.com/cranberry-cheese-ball-recipe-8726774

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = const AppBlocObserver();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  // Authentication Repository
  FirebaseAuthenticationApi firebaseAuthenticationApi =
      FirebaseAuthenticationApi();

  final authenticationRepository = AuthenticationRepository(
    authenticationApi: firebaseAuthenticationApi,
  );
  await authenticationRepository.user.first;

  // ///
  // /// TEMPORARY
  // ///
  // await authenticationRepository.signInWithEmailAndPassword(
  //   email: 'recipewise.6d9l7@passmail.net',
  //   password: 'Squishier3-Unburned7-Ripening6-Retaining8-Epidermis9',
  // );

  RecipeApi recipeApi = FirebaseRecipeApi(database: FirebaseFirestore.instance);

  runApp(
    MultiRepositoryProvider(
      providers: [
        RepositoryProvider(create: (context) => authenticationRepository)
      ],
      child: BlocProvider(
        create: (context) => AuthenticationBloc(
          authenticationRepository: context.read<AuthenticationRepository>(),
        ),
        child: MaterialApp(
          title: 'RecipeWise',
          theme: lightTheme(),
          darkTheme: darkTheme(),
          themeMode: ThemeMode.system,
          debugShowCheckedModeBanner: false,
          home: BlocBuilder<AuthenticationBloc, AuthenticationState>(
            builder: (context, state) {
              return state.status == AuthenticationStatus.authenticated
                  ? RepositoryProvider(
                      create: (context) => RecipeRepository(
                          uid: state.user.id, recipeApi: recipeApi),
                      child: const HomePage(),
                    )
                  : const SignInPage();
            },
          ),
        ),
      ),
    ),
  );
}
