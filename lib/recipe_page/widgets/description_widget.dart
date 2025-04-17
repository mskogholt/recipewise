import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipewise/recipe_page/bloc/recipe_bloc.dart';

class DescriptionWidget extends StatelessWidget {
  DescriptionWidget({
    super.key,
    required this.description,
  }) : descriptionController = TextEditingController.fromValue(
          TextEditingValue(text: description),
        );

  final String description;
  final TextEditingController descriptionController;

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
                  child: EditDescriptionWidget(
                    descriptionController: descriptionController,
                  ),
                ),
              ),
            );
          },
          isScrollControlled: true,
        );
      },
      child: Padding(
        padding: const EdgeInsets.fromLTRB(
          24.0,
          30.0,
          24.0,
          30.0,
        ),
        child: Text(description),
      ),
    );
  }
}

class EditDescriptionWidget extends StatelessWidget {
  const EditDescriptionWidget({
    super.key,
    required this.descriptionController,
  });

  final TextEditingController descriptionController;

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
              keyboardType: TextInputType.multiline,
              maxLines: 10,
              // expands: true,
              controller: descriptionController,
              decoration: InputDecoration(
                hintText: 'Description',
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
              onPressed: () {
                context.read<RecipeBloc>().add(
                      RecipeDescriptionChangedEvent(
                        newDescription: descriptionController.text,
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
