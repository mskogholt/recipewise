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
