part of 'recipe_bloc.dart';

final class RecipeState extends Equatable {
  const RecipeState({
    required this.recipe,
  });

  final Recipe recipe;

  RecipeState copyWith({
    Recipe? recipe,
  }) {
    return RecipeState(
      recipe: recipe ?? this.recipe,
    );
  }

  @override
  List<Object> get props => [recipe];
}
