import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import 'package:recipe_repository/recipe_repository.dart';

part 'recipe_event.dart';
part 'recipe_state.dart';

class RecipeBloc extends Bloc<RecipeEvent, RecipeState> {
  final RecipeRepository recipeRepository;

  RecipeBloc({
    required Recipe recipe,
    required this.recipeRepository,
  }) : super(RecipeState(recipe: recipe)) {
    on<RecipeEvent>(_onRecipeEvent);
    on<RecipeUpdatedEvent>(_onRecipeUpdated);
    on<RecipeSavedEvent>(_onRecipeSaved);

    on<RecipeTitleChangedEvent>(_onRecipeTitleChanged);
    on<RecipeAuthorChangedEvent>(_onRecipeAuthorChanged);
    on<RecipeDescriptionChangedEvent>(_onRecipeDescriptionChanged);

    on<RecipeServingsIncrementedEvent>(_onRecipeServingsIncremented);
    on<RecipeServingsDecrementedEvent>(_onRecipeServingsDecremented);

    on<RecipeIngredientAddedEvent>(_onRecipeIngredientAdded);
    on<RecipeIngredientDeletedEvent>(_onRecipeIngredientDeleted);
    on<RecipeIngredientChangedEvent>(_onRecipeIngredientChanged);
  }

  void _onRecipeEvent(
    RecipeEvent event,
    Emitter<RecipeState> emit,
  ) {
    emit(state.copyWith(changed: true));
  }

  void _onRecipeTitleChanged(
    RecipeTitleChangedEvent event,
    Emitter<RecipeState> emit,
  ) {
    emit(
      state.copyWith(
        recipe: state.recipe.copyWith(
          title: event.newTitle,
        ),
      ),
    );
  }

  void _onRecipeAuthorChanged(
    RecipeAuthorChangedEvent event,
    Emitter<RecipeState> emit,
  ) {
    emit(
      state.copyWith(
        recipe: state.recipe.copyWith(
          author: event.newAuthor,
        ),
      ),
    );
  }

  void _onRecipeDescriptionChanged(
    RecipeDescriptionChangedEvent event,
    Emitter<RecipeState> emit,
  ) {
    emit(
      state.copyWith(
        recipe: state.recipe.copyWith(
          description: event.newDescription,
        ),
      ),
    );
  }

  void _onRecipeServingsIncremented(
    RecipeServingsIncrementedEvent event,
    Emitter<RecipeState> emit,
  ) {
    emit(
      state.copyWith(
        recipe: state.recipe.changeServingSize(
          newServings: state.recipe.servings + 1,
        ),
      ),
    );
  }

  void _onRecipeServingsDecremented(
    RecipeServingsDecrementedEvent event,
    Emitter<RecipeState> emit,
  ) {
    emit(
      state.copyWith(
        recipe: state.recipe.changeServingSize(
          newServings: state.recipe.servings - 1,
        ),
      ),
    );
  }

  void _onRecipeIngredientAdded(
    RecipeIngredientAddedEvent event,
    Emitter<RecipeState> emit,
  ) {
    emit(
      state.copyWith(
        recipe: state.recipe.addIngredient(newIngredient: event.newIngredient),
      ),
    );
  }

  void _onRecipeIngredientDeleted(
    RecipeIngredientDeletedEvent event,
    Emitter<RecipeState> emit,
  ) {
    emit(
      state.copyWith(
        recipe: state.recipe.deleteIngredient(
          ingredientToDelete: event.ingredientToDelete,
        ),
      ),
    );
  }

  void _onRecipeIngredientChanged(
    RecipeIngredientChangedEvent event,
    Emitter<RecipeState> emit,
  ) {
    emit(
      state.copyWith(
        recipe: state.recipe.changeIngredient(
          currentIngredient: event.currentIngredient,
          newIngredient: event.newIngredient,
        ),
      ),
    );
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
      state.recipe,
    );
  }
}
