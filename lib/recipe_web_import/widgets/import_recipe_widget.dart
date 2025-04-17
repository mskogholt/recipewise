import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipe_repository/recipe_repository.dart';
import 'package:recipewise/recipe_page/bloc/recipe_bloc.dart';
import 'package:recipewise/recipe_page/views/recipe_page.dart';

class ImportRecipeWidget extends StatelessWidget {
  ImportRecipeWidget({super.key}) : urlController = TextEditingController();

  final TextEditingController urlController;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 50.0,
          top: 20.0,
          right: 50.0,
          bottom: 0.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              keyboardType: TextInputType.multiline,
              maxLines: 4,
              controller: urlController,
              decoration: InputDecoration(
                hintText: 'Input url',
              ),
              autofocus: true,
              textAlign: TextAlign.start,
              onTapOutside: (event) {
                FocusManager.instance.primaryFocus?.unfocus();
              },
            ),
            const SizedBox(
              height: 20.0,
            ),
            FilledButton(
              onPressed: () async {
                List<String> urls = urlController.text.split(RegExp(r'\s+'));
                List<Recipe> recipes = <Recipe>[];
                for (final url in urls) {
                  Recipe recipe = await context.read<RecipeRepository>().extractRecipe(
                        url, //'https://cors-proxy.logmeinmail.workers.dev/?url=$url',
                      );
                  recipes.add(recipe);
                }

                if (context.mounted) {
                  for (int i = 0; i < recipes.length; i++) {
                    if (i == 0) {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (buildContext) {
                            return BlocProvider(
                              create: (innerContext) {
                                return RecipeBloc(
                                  recipe: recipes[i],
                                  recipeRepository: context.read<RecipeRepository>(),
                                );
                              },
                              child: RecipePage(),
                            );
                          },
                        ),
                      );
                    } else {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (buildContext) {
                            return BlocProvider(
                              create: (innerContext) {
                                return RecipeBloc(
                                  recipe: recipes[i],
                                  recipeRepository: context.read<RecipeRepository>(),
                                );
                              },
                              child: RecipePage(),
                            );
                          },
                        ),
                      );
                    }
                  }
                }
              },
              child: const Text("Save"),
            ),
            const SizedBox(
              height: 10.0,
            )
          ],
        ),
      ),
    );
  }
}
