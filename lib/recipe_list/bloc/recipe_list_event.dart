part of 'recipe_list_bloc.dart';

sealed class RecipeListEvent extends Equatable {
  const RecipeListEvent();

  @override
  List<Object> get props => [];
}

final class RecipeSubscriptionRequested extends RecipeListEvent {
  const RecipeSubscriptionRequested();
}

final class RecipeAdded extends RecipeListEvent {
  final Recipe recipeToAdd;
  const RecipeAdded({required this.recipeToAdd});

  @override
  List<Object> get props => [recipeToAdd];
}
