import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:authentication_repository/authentication_repository.dart';
import 'package:recipe_repository/recipe_repository.dart';

import 'package:recipewise/recipe_list/bloc/recipe_list_bloc.dart';
import 'package:recipewise/recipe_page/bloc/recipe_bloc.dart';
import 'package:recipewise/recipe_page/views/recipe_page.dart';

class RecipeListPage extends StatelessWidget {
  const RecipeListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RecipeListBloc(
        authenticationRepository: context.read<AuthenticationRepository>(),
        recipeRepository: context.read<RecipeRepository>(),
      )..add(const RecipeSubscriptionRequested()),
      child: RecipeListView(),
    );
  }
}

class RecipeListView extends StatelessWidget {
  const RecipeListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // context.read<RecipeListBloc>().add(
          //       RecipeAdded(
          //         recipeToAdd: Recipe(
          //           id: 'Cranberry Cheeseball',
          //           title: 'Cranberry Cheeseball',
          //           description:
          //               "This cranberry cheese ball with orange zest, sharp white Cheddar cheese, and garlic is simply delicious. The red and green color combination from cranberries and chives make it look extra festive and it's the perfect holiday appetizer.",
          //           imageUrl:
          //               'https://www.allrecipes.com/thmb/2oUZc4nK-xuUYYPkIhGLD5SU6Yg=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/8726774-Cranberry-Cheese-Ball-ddmfs-hero-4x3-17403-29c16f7a15dc41df9434296721e8e641.jpg',
          //         ),
          //       ),
          //     );
        },
        child: Icon(Icons.add),
      ),
      body: SafeArea(
        child: BlocBuilder<RecipeListBloc, RecipeListState>(
          builder: (context, state) {
            switch (state.status) {
              case RecipeListStatus.initial:
                return Text('Initial');
              case RecipeListStatus.loading:
                return Text('Loading');
              case RecipeListStatus.success:
                List<Recipe> recipes = state.recipes;
                if (recipes.isEmpty) {
                  return Text('Empty Recipes!');
                }
                return RecipeList(recipes: recipes);
              case RecipeListStatus.failure:
                return Text('Uh oh, something went wrong');
            }
          },
        ),
      ),
    );
  }
}

class RecipeList extends StatelessWidget {
  const RecipeList({
    super.key,
    required this.recipes,
  });

  final List<Recipe> recipes;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return ListView.builder(
      itemBuilder: (context, index) {
        Recipe recipe = recipes[index];
        return ListTile(
          onTap: () async {
            await Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return BlocProvider(
                    create: (context) {
                      return RecipeBloc(recipe);
                    },
                    child: RecipePage(),
                  );
                },
              ),
            );
            // Recipe? recip = await Navigator.push<Recipe>(
            //     context,
            //     MaterialPageRoute(
            //         builder: (context) => RecipePage(recipe: recipe)));
            // recipes.update(index, recip);
          },
          leading: Image.network(
              'https://cors-proxy.logmeinmail.workers.dev/?url=${recipe.imageUrl}'),
          title: Text(
            recipe.title,
            style: textTheme.displaySmall?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          trailing: Icon(Icons.chevron_right),
        );
      },
      itemCount: recipes.length,
    );
  }
}
