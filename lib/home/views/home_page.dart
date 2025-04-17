import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipe_repository/recipe_repository.dart';
import 'package:recipewise/recipe_list/recipe_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RecipeListBloc(
        recipeRepository: context.read<RecipeRepository>(),
      )..add(const RecipeListSubscribedEvent()),
      child: RecipeListPage(),
    );
  }
}
