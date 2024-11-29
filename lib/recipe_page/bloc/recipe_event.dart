part of 'recipe_bloc.dart';

sealed class RecipeEvent extends Equatable {
  const RecipeEvent();

  @override
  List<Object> get props => [];
}

final class RecipeUpdatedEvent extends RecipeEvent {
  const RecipeUpdatedEvent({required this.recipe});

  final Recipe recipe;

  @override
  List<Object> get props => [recipe];
}

final class RecipeSavedEvent extends RecipeEvent {
  const RecipeSavedEvent();
}

final class RecipeDeletedEvent extends RecipeEvent {
  const RecipeDeletedEvent();
}

final class RecipeTitleChangedEvent extends RecipeEvent {
  final String newTitle;
  const RecipeTitleChangedEvent({required this.newTitle});
  @override
  List<Object> get props => [newTitle];
}

final class RecipeAuthorChangedEvent extends RecipeEvent {
  final String newAuthor;
  const RecipeAuthorChangedEvent({required this.newAuthor});
  @override
  List<Object> get props => [newAuthor];
}

final class RecipeDescriptionChangedEvent extends RecipeEvent {
  final String newDescription;
  const RecipeDescriptionChangedEvent({required this.newDescription});
  @override
  List<Object> get props => [newDescription];
}

final class RecipeServingsIncrementedEvent extends RecipeEvent {
  const RecipeServingsIncrementedEvent();
}

final class RecipeServingsDecrementedEvent extends RecipeEvent {
  const RecipeServingsDecrementedEvent();
}

final class RecipeIngredientAddedEvent extends RecipeEvent {
  final Ingredient newIngredient;
  const RecipeIngredientAddedEvent({required this.newIngredient});
}

final class RecipeIngredientDeletedEvent extends RecipeEvent {
  final Ingredient ingredientToDelete;
  const RecipeIngredientDeletedEvent({required this.ingredientToDelete});
}

final class RecipeIngredientChangedEvent extends RecipeEvent {
  final Ingredient currentIngredient;
  final Ingredient newIngredient;

  const RecipeIngredientChangedEvent({
    required this.currentIngredient,
    required this.newIngredient,
  });
}
