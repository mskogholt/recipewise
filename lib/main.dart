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
import 'package:recipewise/recipe_list/views/recipe_list_page.dart';

// Local
import 'firebase_options.dart';

import 'package:recipewise/authentication/authentication.dart';

import 'package:recipewise/bloc_observer.dart';
import 'package:recipewise/core/theme/theme.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = const AppBlocObserver();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  // Authentication Repository
  FirebaseAuthenticationApi firebaseAuthenticationApi =
      FirebaseAuthenticationApi();

  final authenticationRepository = AuthenticationRepository(
    authenticationApi: firebaseAuthenticationApi,
  );
  await authenticationRepository.user.first;

  // await authenticationRepository.signInWithEmailAndPassword(
  //   email: 'recipewise.6d9l7@passmail.net',
  //   password: 'Squishier3-Unburned7-Ripening6-Retaining8-Epidermis9',
  // );

  RecipeApi recipeApi = FirebaseRecipeApi(database: FirebaseFirestore.instance);

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
        child: MaterialApp(
          title: 'RecipeWise',
          theme: lightTheme(),
          darkTheme: darkTheme(),
          themeMode: ThemeMode.light,
          debugShowCheckedModeBanner: false,
          home: BlocBuilder<AuthenticationBloc, AuthenticationState>(
            builder: (context, state) {
              return state.status == AuthenticationStatus.authenticated
                  ? RepositoryProvider(
                      create: (context) => RecipeRepository(
                        uid: state.user.id,
                        recipeApi: recipeApi,
                      ),
                      child: const RecipeListPage(),
                    )
                  : const SignInPage();
            },
          ),
        ),
      ),
    ),
  );
}

// class App extends StatelessWidget {
//   const App({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'RecipeWise',
//       theme: lightTheme(),
//       darkTheme: darkTheme(),
//       themeMode: ThemeMode.light,
//       debugShowCheckedModeBanner: false,
//       home: BlocBuilder<AuthenticationBloc, AuthenticationState>(
//         builder: (context, state) {
//           return state.status == AuthenticationStatus.authenticated
//               ? RepositoryProvider(
//                   create: (context) => RecipeRepository(recipeApi: recipeApi),
//                   child: const RecipeListPage(),
//                 )
//               : const SignInPage();
//         },
//       ),
//     );
//   }
// }
