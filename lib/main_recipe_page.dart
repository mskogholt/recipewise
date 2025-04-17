import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipe_repository/recipe_repository.dart';
import 'package:recipewise/core/theme/theme.dart';
import 'package:recipewise/recipe_page/bloc/recipe_bloc.dart';
import 'package:recipewise/recipe_page/views/recipe_page.dart';

void main() async {
  Recipe recipe = Recipe(
    id: 'CranBall',
    title: "Cranberry Cheeseball",
    description:
        "This cranberry cheese ball with orange zest, sharp white Cheddar cheese, and garlic is simply delicious. The red and green color combination from cranberries and chives make it look extra festive and it's the perfect holiday appetizer.",
    // imageUrl:
    // "https://www.allrecipes.com/thmb/2oUZc4nK-xuUYYPkIhGLD5SU6Yg=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/8726774-Cranberry-Cheese-Ball-ddmfs-hero-4x3-17403-29c16f7a15dc41df9434296721e8e641.jpg",
    imageUrl: 'https://www.themediterraneandish.com/wp-content/uploads/2022/12/'
        'greek-fish-with-onions-and-tomatoes-12.jpg',
    author: 'Juliana Hale',
    datePublished: DateTime.parse("2024-11-09"),
    source: "https://www.allrecipes.com/cranberry-cheese-ball-recipe-8726774",
    servings: 16,
    timePrep: 15,
    timeTotal: 255,
    categories: "Snack",
    tags: 'Cheesy Snacks',
    collections: 'Cheesy Goodness',
    directions: const [
      Direction(
        stepNumber: 1,
        text: 'Gather all ingredients. ',
        url:
            'https://www.allrecipes.com/thmb/6pZBhSnVzCXYrJ3222cP7m-5GuI=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/8726774-Cranberry-Cheese-Ball-ddmfs-Step-01-17155-4e00ac4308224c499547279f25ec0e75.jpg',
      ),
      Direction(
        stepNumber: 2,
        text:
            'Bring cranberry juice just to a boil in a small saucepan. Remove from heat. Add 1/4 cup dried cranberries. Cover; set aside.',
        url:
            'https://www.allrecipes.com/thmb/EMMqTZfdOvcxtX7bSjSvwwvhBYc=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/8726774-Cranberry-Cheese-Ball-ddmfs-Step-02-17159-2bcd388e73624eb8a4c416fbc616adc6.jpg',
      ),
      Direction(
        stepNumber: 3,
        text:
            'Place cream cheese, Cheddar cheese, and butter in a large bowl. Let stand at room temperature for 30 minutes.',
        url:
            'https://www.allrecipes.com/thmb/0sSs_LPda_k_iYdBJmmkFzeguCw=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/8726774-Cranberry-Cheese-Ball-ddmfs-Step-03-17162-6dac37838d1c4a26b2c97038669f6f23.jpg',
      ),
      Direction(
        stepNumber: 4,
        text:
            'Drain cranberries, reserving 1 tablespoon juice. Add plumped cranberries and reserved juice to the bowl with the cheese mixture. Add 1 tablespoon chives, orange zest, brown sugar, and garlic powder. Beat with an electric mixer on medium until light and fluffy. ',
        url:
            'https://www.allrecipes.com/thmb/rvH5jKaUjrpbNQ8mwsw-1k8a2PQ=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/8726774-Cranberry-Cheese-Ball-ddmfs-Step-04-17164-583c59c8e596436aa3f6c09d0c7199de.jpg',
      ),
      Direction(
        stepNumber: 5,
        text:
            'Place cheese mixture on a sheet of plastic wrap. Use the plastic wrap to shape the mixture into a ball (it won’t be a perfect shape at this point). Wrap in the plastic wrap and chill in the refrigerator for 3 to 24 hours.',
        url:
            'https://www.allrecipes.com/thmb/Bwt-Ze5sappOMqvG6zDnsZns8sM=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/8726774-Cranberry-Cheese-Ball-ddmfs-Step-05-17167-dbb0fb5c6aba4c649339d7d63d893639.jpg',
      ),
      Direction(
        stepNumber: 6,
        text:
            'Now you can make a better ball shape by rolling the wrapped mixture on your work surface.',
        url:
            'https://www.allrecipes.com/thmb/-EOwqt61n0HSUJv83MwmReJP0yU=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/8726774-Cranberry-Cheese-Ball-ddmfs-Step-06-17352-460d3f3a8c5a4b27a88e84fa7fde964d.jpg',
      ),
      Direction(
        stepNumber: 7,
        text:
            'Sprinkle remaining 1/4 cup dried cranberries, remaining 1 tablespoon chives, and the pecans on a sheet of plastic wrap or waxed paper. Roll cheese ball in the mixture to coat.',
        url:
            'https://www.allrecipes.com/thmb/XBNS-1zgWxi2rgBYeACKhCqmUxw=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/8726774-Cranberry-Cheese-Ball-ddmfs-Step-07-17355-0fac98aeae4747e7ac882722e0b9d9ae.jpg',
      ),
      Direction(
        stepNumber: 8,
        text:
            'Let stand 15 minutes before serving with crackers, crostini, or vegetable dippers.',
        url:
            'https://www.allrecipes.com/thmb/s7F7X2dlGMYK4JUA0n7rzTLE6cM=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/8726774-Cranberry-Cheese-Ball-ddmfs-Step-08-17359-7f2300c121a14d5ba143226c58c8ae88.jpg',
      ),
    ],
    ingredients: const [
      Ingredient(
        name: 'cranberry juice cocktail',
        amount: 0.25,
        unit: Cup(),
      ),
      Ingredient(
        name: 'dried cranberries, snipped, divided',
        amount: 0.5,
        unit: Cup(),
      ),
      Ingredient(
        name: '(8-ounce) pkg. cream cheese',
        amount: 1,
        unit: NoUnit(),
      ),
      Ingredient(
        name: 'sharp white cheddar cheese, shredded (1 cup)',
        amount: 4,
        unit: Ounce(),
      ),
      Ingredient(
        name: 'butter',
        amount: 0.25,
        unit: Cup(),
      ),
      Ingredient(
        name: 'snipped fresh chives, divided',
        amount: 2,
        unit: Tablespoon(),
      ),
      Ingredient(
        name: 'orange zest',
        amount: 0.5,
        unit: Teaspoon(),
      ),
      Ingredient(
        name: 'packed brown sugar',
        amount: 0.5,
        unit: Teaspoon(),
      ),
      Ingredient(
        name: 'garlic powder',
        amount: 0.5,
        unit: Teaspoon(),
      ),
      Ingredient(
        name: 'pecans, toasted and finely chopped',
        amount: 0.25,
        unit: Cup(),
      ),
      Ingredient(
        name: 'Crackers, crostini, and/or vegetable dippers',
        amount: 0,
        unit: NoUnit(),
      ),
    ],
  );

  WidgetsFlutterBinding.ensureInitialized();
  RecipeRepository recipeRepository = DummyRecipeRepository();

  recipeRepository.saveRecipe(recipe);

  runApp(MultiRepositoryProvider(
    providers: [
      RepositoryProvider(
        create: (context) => recipeRepository,
      ),
    ],
    child: MaterialApp(
      title: 'RecipeWise',
      theme: lightTheme(),
      darkTheme: darkTheme(),
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
        create: (context) {
          return RecipeBloc(
            recipe: recipe,
            recipeRepository: context.read<RecipeRepository>(),
          );
        },
        child: RecipePage(),
      ),
    ),
  ));
}
