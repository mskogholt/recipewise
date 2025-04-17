import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:recipe_repository/recipe_repository.dart';

import 'package:recipewise/core/widgets/recipe_image.dart';
import 'package:recipewise/recipe_page/bloc/recipe_bloc.dart';

class RecipeImageWidget extends StatelessWidget {
  RecipeImageWidget({
    super.key,
    required this.recipe,
  }) : urlController = TextEditingController.fromValue(
          TextEditingValue(text: recipe.imageUrl),
        );

  final Recipe recipe;
  final TextEditingController urlController;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet(
          context: context,
          builder: (innerContext) {
            return BlocProvider.value(
              value: BlocProvider.of<RecipeBloc>(context),
              child: SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.only(
                      bottom: MediaQuery.of(innerContext).viewInsets.bottom),
                  child: EditImageWidget(
                    urlController: urlController,
                  ),
                ),
              ),
            );
          },
          isScrollControlled: true,
        );
      },
      child: RecipeImage(imageUrl: recipe.imageUrl),
    );
  }
}

class EditImageWidget extends StatelessWidget {
  const EditImageWidget({
    super.key,
    required this.urlController,
  });

  final TextEditingController urlController;

  @override
  Widget build(BuildContext context) {
    // TODO(mskogholt): The container and decoration is shared with other components
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor,
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
              maxLines: 4,
              controller: urlController,
              decoration: InputDecoration(
                hintText: 'Image URL',
              ),
              autofocus: true,
              textAlign: TextAlign.center,
              onTapOutside: (event) {
                FocusManager.instance.primaryFocus?.unfocus();
              },
            ),
            const SizedBox(
              height: 20.0,
            ),
            FilledButton(
              onPressed: () {
                context.read<RecipeBloc>().add(
                      RecipeImageUrlChangedEvent(
                        newImageUrl: urlController.text,
                      ),
                    );
                Navigator.pop(context);
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
