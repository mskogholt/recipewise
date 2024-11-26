import 'package:authentication_repository/authentication_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:recipe_repository/recipe_repository.dart';

part 'recipe_list_event.dart';
part 'recipe_list_state.dart';

class RecipeListBloc extends Bloc<RecipeListEvent, RecipeListState> {
  final AuthenticationRepository authenticationRepository;
  final RecipeRepository recipeRepository;

  RecipeListBloc({
    required this.authenticationRepository,
    required this.recipeRepository,
  }) : super(
          const RecipeListState(),
        ) {
    //
    on<RecipeSubscriptionRequested>(_onSubscriptionRequested);
    on<RecipeAdded>(_onRecipeAdded);
  }

  Future<void> _onRecipeAdded(
    RecipeAdded event,
    Emitter<RecipeListState> emit,
  ) async {
    recipeRepository.saveRecipe(
      authenticationRepository.currentUser.id,
      event.recipeToAdd,
    );
  }

  Future<void> _onSubscriptionRequested(
    RecipeSubscriptionRequested event,
    Emitter<RecipeListState> emit,
  ) async {
    emit(state.copyWith(status: RecipeListStatus.loading));

    await emit.forEach<List<Recipe>>(
      recipeRepository.getRecipes(authenticationRepository.currentUser.id),
      onData: (recipes) => state.copyWith(
        status: RecipeListStatus.success,
        recipes: recipes,
      ),
      onError: (_, __) => state.copyWith(status: RecipeListStatus.failure),
    );
  }
}