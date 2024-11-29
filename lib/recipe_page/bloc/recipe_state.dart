part of 'recipe_bloc.dart';

final class RecipeState extends Equatable {
  const RecipeState({
    required this.recipe,
    this.changed = false,
  });

  final Recipe recipe;
  final bool changed;

  RecipeState copyWith({
    Recipe? recipe,
    bool? changed,
  }) {
    return RecipeState(
      recipe: recipe ?? this.recipe,
      changed: changed ?? this.changed,
    );
  }

  @override
  List<Object> get props => [recipe];
}
