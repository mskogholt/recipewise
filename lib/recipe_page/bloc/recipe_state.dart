part of 'recipe_bloc.dart';

final class RecipeState extends Equatable {
  const RecipeState(this.recipe);

  final Recipe recipe;

  @override
  List<Object> get props => [recipe];
}
