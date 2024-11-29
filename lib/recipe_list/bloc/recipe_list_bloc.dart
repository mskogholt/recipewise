import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:recipe_repository/recipe_repository.dart';

part 'recipe_list_event.dart';
part 'recipe_list_state.dart';

class RecipeListBloc extends Bloc<RecipeListEvent, RecipeListState> {
  final RecipeRepository recipeRepository;

  RecipeListBloc({
    required this.recipeRepository,
  }) : super(
          const RecipeListState(),
        ) {
    //
    on<RecipeListSubscribedEvent>(_onSubscriptionRequested);
    on<RecipeAddedEvent>(_onRecipeAdded);
  }

  Future<void> _onRecipeAdded(
    RecipeAddedEvent event,
    Emitter<RecipeListState> emit,
  ) async {
    recipeRepository.saveRecipe(
      event.recipeToAdd,
    );
  }

  Future<void> _onSubscriptionRequested(
    RecipeListSubscribedEvent event,
    Emitter<RecipeListState> emit,
  ) async {
    emit(state.copyWith(status: RecipeListStatus.loading));

    await emit.forEach<List<Recipe>>(
      recipeRepository.getRecipes(),
      onData: (recipes) => state.copyWith(
        status: RecipeListStatus.success,
        recipes: recipes,
      ),
      onError: (_, __) => state.copyWith(status: RecipeListStatus.failure),
    );
  }
}
