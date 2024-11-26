import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:recipe_repository/recipe_repository.dart';

part 'recipe_event.dart';
part 'recipe_state.dart';

class RecipeBloc extends Bloc<RecipeEvent, RecipeState> {
  RecipeBloc(Recipe recipe) : super(RecipeState(recipe)) {
    on<RecipeEvent>((event, emit) {
      emit(RecipeState(event.recipe));
    });
  }
}
