part of 'recipe_list_bloc.dart';

sealed class RecipeListEvent extends Equatable {
  const RecipeListEvent();

  @override
  List<Object> get props => [];
}

final class RecipeListSubscribedEvent extends RecipeListEvent {
  const RecipeListSubscribedEvent();
}

final class RecipeAddedEvent extends RecipeListEvent {
  final Recipe recipeToAdd;
  const RecipeAddedEvent({required this.recipeToAdd});

  @override
  List<Object> get props => [recipeToAdd];
}
