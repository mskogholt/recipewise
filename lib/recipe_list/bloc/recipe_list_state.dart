part of 'recipe_list_bloc.dart';

enum RecipeListStatus { initial, loading, success, failure }

final class RecipeListState extends Equatable {
  const RecipeListState({
    this.status = RecipeListStatus.initial,
    this.recipes = const [],
  });

  final RecipeListStatus status;
  final List<Recipe> recipes;

  RecipeListState copyWith({
    RecipeListStatus? status,
    List<Recipe>? recipes,
  }) {
    return RecipeListState(
      status: status ?? this.status,
      recipes: recipes ?? this.recipes,
    );
  }

  @override
  List<Object> get props => [status, recipes];
}
