import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import 'package:recipe_repository/recipe_repository.dart';
import 'package:authentication_repository/authentication_repository.dart';

part 'recipe_event.dart';
part 'recipe_state.dart';

class RecipeBloc extends Bloc<RecipeEvent, RecipeState> {
  final RecipeRepository recipeRepository;
  final AuthenticationRepository authenticationRepository;

  RecipeBloc({
    required Recipe recipe,
    required this.recipeRepository,
    required this.authenticationRepository,
  }) : super(RecipeState(recipe: recipe)) {
    on<RecipeUpdatedEvent>(_onRecipeUpdated);

    on<RecipeSavedEvent>(_onRecipeSaved);
  }

  void _onRecipeUpdated(
    RecipeUpdatedEvent event,
    Emitter<RecipeState> emit,
  ) {
    emit(state.copyWith(recipe: event.recipe));
  }

  void _onRecipeSaved(
    RecipeSavedEvent event,
    Emitter<RecipeState> emit,
  ) {
    recipeRepository.saveRecipe(
      authenticationRepository.currentUser.id,
      state.recipe,
    );
  }
}
