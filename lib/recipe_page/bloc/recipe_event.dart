part of 'recipe_bloc.dart';

final class RecipeEvent extends Equatable {
  const RecipeEvent(this.recipe);

  final Recipe recipe;

  @override
  List<Object> get props => [recipe];
}
