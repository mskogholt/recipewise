import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:recipe_repository/recipe_repository.dart';

import 'package:recipewise/recipe_page/bloc/recipe_bloc.dart';

class DirectionListWidget extends StatelessWidget {
  DirectionListWidget({
    super.key,
    required this.directions,
  }) : directionsController = TextEditingController.fromValue(
          TextEditingValue(
              text: directions.map((direction) {
            return '${direction.stepNumber}: ${direction.text}';
          }).join("\n\n")),
        );

  final List<Direction> directions;
  final TextEditingController directionsController;

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
                  child: EditDirectionsWidget(
                    directionsController: directionsController,
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
        child: DirectionsList(directions: directions),
      ),
    );
  }
}

class DirectionsList extends StatelessWidget {
  const DirectionsList({
    super.key,
    required this.directions,
  });

  final List<Direction> directions;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Directions:",
          style: textTheme.titleLarge?.copyWith(
            color: Theme.of(context).colorScheme.primary,
            fontWeight: FontWeight.bold,
          ),
        ),
        ...directions.map<Widget>(
          (direction) => DirectionButton(
            direction: direction,
          ),
        ),
      ],
    );
  }
}

class DirectionButton extends StatelessWidget {
  const DirectionButton({
    super.key,
    required this.direction,
  });

  final Direction direction;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text('${direction.stepNumber}: ${direction.text}'),
    );
  }
}

class EditDirectionsWidget extends StatelessWidget {
  const EditDirectionsWidget({super.key, required this.directionsController});
  final TextEditingController directionsController;

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
              controller: directionsController,
              decoration: InputDecoration(
                hintText: 'Directions',
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
                      RecipeDirectionsChangedEvent(
                        newDirections: directionsController.text,
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
