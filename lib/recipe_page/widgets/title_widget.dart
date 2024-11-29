import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipewise/recipe_page/bloc/recipe_bloc.dart';

class TitleWidget extends StatelessWidget {
  const TitleWidget({
    super.key,
    required this.title,
    required this.author,
  });

  final String title;
  final String author;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final textColor = Theme.of(context).colorScheme.primary;
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
                  child: EditTitleWidget(
                    title: title,
                    author: author,
                  ),
                ),
              ),
            );
          },
          isScrollControlled: true,
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10.0),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade600,
                offset: Offset(0, 2),
                blurRadius: 5,
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Center(
              child: Column(
                children: [
                  Text(
                    "RECIPE",
                    style: textTheme.titleMedium?.copyWith(
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  Text(
                    title,
                    style: textTheme.titleLarge?.copyWith(
                      color: textColor,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "by ",
                        style: textTheme.titleMedium?.copyWith(
                          color: textColor,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      Text(
                        author,
                        style: textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class EditTitleWidget extends StatelessWidget {
  EditTitleWidget({
    super.key,
    required this.title,
    required this.author,
  })  : titleController = TextEditingController.fromValue(
          TextEditingValue(text: title),
        ),
        authorController = TextEditingController.fromValue(
          TextEditingValue(text: author),
        );

  final String title;
  final String author;
  final TextEditingController titleController;
  final TextEditingController authorController;

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
              controller: titleController,
              decoration: InputDecoration(
                hintText: 'Title',
              ),
              autofocus: true,
              textAlign: TextAlign.center,
              onTapOutside: (event) {
                FocusManager.instance.primaryFocus?.unfocus();
              },
            ),
            const SizedBox(
              height: 10.0,
            ),
            TextField(
              controller: authorController,
              decoration: InputDecoration(hintText: 'Author'),
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
                      RecipeTitleChangedEvent(
                        newTitle: titleController.text,
                      ),
                    );
                context.read<RecipeBloc>().add(
                      RecipeAuthorChangedEvent(
                        newAuthor: authorController.text,
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
