import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:recipe_repository/recipe_repository.dart';
import 'package:recipewise/core/widgets/expandable_fab.dart';

import 'package:recipewise/recipe_list/bloc/recipe_list_bloc.dart';
import 'package:recipewise/recipe_list/widgets/recipe_list.dart';
import 'package:recipewise/recipe_web_import/widgets/import_recipe_widget.dart';

import 'package:recipewise/recipe_page/bloc/recipe_bloc.dart';
import 'package:recipewise/recipe_page/views/recipe_page.dart';

class RecipeListPage extends StatelessWidget {
  const RecipeListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // TODO(mskogholt): should come from theme
      // backgroundColor: Colors.white,
      floatingActionButton: ExpandableFab(
        distance: 50,
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (buildContext) {
                    return BlocProvider(
                      create: (innerContext) {
                        return RecipeBloc(
                          recipe: Recipe.empty(),
                          recipeRepository: context.read<RecipeRepository>(),
                        );
                      },
                      child: RecipePage(),
                    );
                  },
                ),
              );
            },
            child: Text('Create new recipe'),
          ),
          ElevatedButton(
            onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (innerContext) {
                  return RepositoryProvider.value(
                    value: RepositoryProvider.of<RecipeRepository>(context),
                    child: SingleChildScrollView(
                      child: Container(
                        padding: EdgeInsets.only(
                            bottom: MediaQuery.of(innerContext).viewInsets.bottom),
                        child: ImportRecipeWidget(),
                      ),
                    ),
                  );
                },
                isScrollControlled: true,
              );
            },
            // style: TextButton.styleFrom(
            //   backgroundColor: Theme.of(context).colorScheme.primary,
            //   foregroundColor: Colors.white,
            // ),
            child: Text('Import from the web'),
          ),
        ],
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
