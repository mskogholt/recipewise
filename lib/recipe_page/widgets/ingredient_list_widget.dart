import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fraction/fraction.dart';
import 'package:recipe_repository/recipe_repository.dart';
import 'package:recipewise/recipe_page/bloc/recipe_bloc.dart';

class IngredientListWidget extends StatelessWidget {
  const IngredientListWidget({
    super.key,
    required this.ingredients,
    required this.servings,
  });

  final List<Ingredient> ingredients;
  final int servings;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Container(
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
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Ingredients",
                    style: textTheme.titleLarge?.copyWith(
                      color: Theme.of(context).colorScheme.primary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  ServingsMultiplierWidget(
                    servings: servings,
                  )
                ],
              ),
            ),
            ...ingredients.map<Widget>(
              (ingredient) => IngredientButton(
                ingredient: ingredient,
              ),
            ),
            NewIngredientButton(),
          ],
        ),
      ),
    );
  }
}

class IngredientButton extends StatelessWidget {
  const IngredientButton({
    super.key,
    required this.ingredient,
  });

  final Ingredient ingredient;

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;

    colorScheme.onSecondaryContainer;

    final double amount = ingredient.amount;

    final fraction = MixedFraction.fromDouble(amount, precision: 0.011);

    final String amountText =
        fraction.whole == 0.0 ? '' : fraction.whole.toString();
    final String fractionalAmountText = fraction.numerator == 0
        ? ''
        : '${fraction.numerator}/${fraction.denominator}';
    final bool hasAmount = fraction.whole > 0 || fraction.numerator > 0;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
      child: FilledButton(
        style: FilledButton.styleFrom(
          backgroundColor:
              Theme.of(context).colorScheme.primary.withOpacity(0.08),
          foregroundColor: Colors.black,
        ),
        onLongPress: () {
          context.read<RecipeBloc>().add(
                RecipeIngredientDeletedEvent(
                  ingredientToDelete: ingredient,
                ),
              );
        },
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (innerContext) {
              return BlocProvider.value(
                value: BlocProvider.of<RecipeBloc>(context),
                child: SingleChildScrollView(
                  child: Container(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(innerContext).viewInsets.bottom),
                    child: EditIngredientWidget(
                      ingredient: ingredient,
                    ),
                  ),
                ),
              );
            },
            isScrollControlled: true,
          );
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 12.0,
            horizontal: 0.0,
          ),
          child: Row(
            children: [
              SizedBox(
                width: 128.0,
                child: Row(
                  children: [
                    Expanded(
                      child: RichText(
                        text: TextSpan(
                          text: amountText,
                          style: DefaultTextStyle.of(context).style,
                          children: [
                            TextSpan(
                              text: fractionalAmountText,
                              style: TextStyle(
                                fontFeatures: <FontFeature>[
                                  FontFeature.fractions(),
                                ],
                              ),
                            ),
                            TextSpan(
                              text: hasAmount
                                  ? ' ${ingredient.unit}'
                                  : ingredient.unit,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Text(
                  ingredient.name,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class NewIngredientButton extends StatelessWidget {
  const NewIngredientButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          // foregroundColor: Colors.black,
          side: BorderSide(
            color: Theme.of(context).colorScheme.primary,
            width: 1.0,
          ),
        ),
        onPressed: () {
          final ingredient = Ingredient(
            name: '',
            amount: 0,
            unit: '',
          );
          context.read<RecipeBloc>().add(
                RecipeIngredientAddedEvent(
                  newIngredient: ingredient,
                ),
              );
          showModalBottomSheet(
            context: context,
            builder: (innerContext) {
              return BlocProvider.value(
                value: BlocProvider.of<RecipeBloc>(context),
                child: SingleChildScrollView(
                  child: Container(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(innerContext).viewInsets.bottom),
                    child: EditIngredientWidget(
                      ingredient: ingredient,
                    ),
                  ),
                ),
              );
            },
            isScrollControlled: true,
          );
        },
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.add,
              size: 18.0,
            ),
            SizedBox(
              width: 8.0,
            ),
            Flexible(
              child: SizedBox(
                width: double.infinity,
                child: Text('Add ingredients to recipe'),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class EditIngredientWidget extends StatelessWidget {
  EditIngredientWidget({
    super.key,
    required this.ingredient,
  })  : nameController = TextEditingController.fromValue(
          TextEditingValue(text: ingredient.name),
        ),
        amountController = TextEditingController.fromValue(
          TextEditingValue(text: ingredient.amount.toString()),
        ),
        unitController = TextEditingController.fromValue(
          TextEditingValue(text: ingredient.unit),
        );

  final TextEditingController nameController;
  final TextEditingController amountController;
  final TextEditingController unitController;

  final Ingredient ingredient;

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
              controller: nameController,
              decoration: InputDecoration(
                hintText: 'Name of the ingredient',
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
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: amountController,
                    decoration: InputDecoration(hintText: 'Amount'),
                    autofocus: true,
                    textAlign: TextAlign.center,
                    onTapOutside: (event) {
                      FocusManager.instance.primaryFocus?.unfocus();
                    },
                    minLines: 1,
                    maxLines: 1,
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      FilteringTextInputFormatter.allow(RegExp(r'[0-9\.]')),
                    ],
                  ),
                ),
                Expanded(
                  child: TextField(
                    controller: unitController,
                    decoration: InputDecoration(hintText: 'Unit of Measure'),
                    autofocus: true,
                    textAlign: TextAlign.center,
                    onTapOutside: (event) {
                      FocusManager.instance.primaryFocus?.unfocus();
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20.0,
            ),
            FilledButton(
              onPressed: () {
                try {
                  context.read<RecipeBloc>().add(
                        RecipeIngredientChangedEvent(
                          currentIngredient: ingredient,
                          newIngredient: Ingredient(
                            name: nameController.text,
                            amount: double.parse(amountController.text),
                            unit: unitController.text,
                          ),
                        ),
                      );
                  Navigator.pop(context);
                } on FormatException catch (e) {
                  showDialog<void>(
                    context: context,
                    barrierDismissible: false, // user must tap button!
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: const Text('Invalid number entered!'),
                        content: SingleChildScrollView(
                          child: ListBody(
                            children: <Widget>[
                              Text('${e.source} is not a valid number.'),
                              Text(''),
                              Text(
                                'The number must contain only digits and'
                                ' optionally a . for decimals',
                              ),
                              Text(''),
                              Text('Click OK to try again'),
                            ],
                          ),
                        ),
                        actions: <Widget>[
                          TextButton(
                            child: const Text('OK'),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      );
                    },
                  );
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

class ServingsMultiplierWidget extends StatelessWidget {
  const ServingsMultiplierWidget({
    super.key,
    required this.servings,
  });

  final int servings;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {
            context.read<RecipeBloc>().add(
                  RecipeServingsDecrementedEvent(),
                );
          },
          icon: Icon(Icons.remove),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 8.0),
          child: Text(
            '$servings',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        IconButton(
          onPressed: () {
            context.read<RecipeBloc>().add(
                  RecipeServingsIncrementedEvent(),
                );
          },
          icon: Icon(Icons.add),
        ),
      ],
    );
  }
}
