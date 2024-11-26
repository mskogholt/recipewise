// import 'package:flutter/material.dart';
// import 'package:recipes_repository/recipes_repository.dart';

// class RecipePage extends StatefulWidget {
//   Recipe recipe;

//   RecipePage({super.key, required this.recipe});

//   @override
//   State<RecipePage> createState() => _RecipePageState(recipe: recipe);
// }

// class _RecipePageState extends State<RecipePage> {
//   Recipe recipe;

//   _RecipePageState({required this.recipe});

//   @override
//   Widget build(BuildContext context) {
//     final textTheme = Theme.of(context).textTheme;

//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         title: const Text('Ingredients'),
//         actions: <Widget>[
//           // IconButton(
//           //   key: const Key('RecipePage_logout_iconButton'),
//           //   icon: const Icon(Icons.exit_to_app),
//           //   onPressed: () {
//           //     context.read<AppBloc>().add(const AppLogoutRequested());
//           //   },
//           // ),
//           IconButton(
//             onPressed: () {
//               Navigator.pop(context, recipe);
//             },
//             icon: const Icon(Icons.exit_to_app),
//           )
//         ],
//       ),
//       body: SafeArea(
//         child: Center(
//           child: ListView(
//             children: [
//               Image.network(
//                   'https://cors-proxy.logmeinmail.workers.dev/?url=${recipe.imageUrl}'),
//               TitleWidget(recipe: recipe, textTheme: textTheme),
//               Container(
//                 margin: EdgeInsets.fromLTRB(8, 30, 8, 30),
//                 child: Text(recipe.description),
//               ),
//               // Ingredients
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: IngredientsWidget(
//                   recipe: recipe,
//                   textTheme: textTheme,
//                 ),
//               ),
//               // Directions
//               Text(
//                 "Directions:",
//                 style: textTheme.titleLarge,
//               ),
//               Text(
//                 recipe.directions,
//               ),
//             ],
//           ),
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           showModalBottomSheet(
//             context: context,
//             builder: (context) => SingleChildScrollView(
//               child: Container(
//                 padding: EdgeInsets.only(
//                     bottom: MediaQuery.of(context).viewInsets.bottom),
//                 child: AddTaskScreen(
//                   callback: (controller) {
//                     // Provider.of<Tasks>(context, listen: false).addTask(
//                     //   Task(name: controller.text),
//                     // );
//                     setState(() {
//                       recipe.title = controller.text;
//                     });
//                     Navigator.pop(context);
//                   },
//                 ),
//               ),
//             ),
//             isScrollControlled: true,
//           );
//         },
//         backgroundColor: Colors.lightBlueAccent,
//         child: const Icon(
//           Icons.add,
//           color: Colors.white,
//         ),
//       ),
//     );
//   }
// }

// // class RecipePage extends StatelessWidget {
// //   Recipe recipe;

// //   const RecipePage({super.key, required this.recipe});

// //   @override
// //   Widget build(BuildContext context) {
// //     final textTheme = Theme.of(context).textTheme;

// //     return Scaffold(
// //       backgroundColor: Colors.white,
// //       // appBar: AppBar(
// //       //   title: const Text('Ingredients'),
// //       //   actions: <Widget>[
// //       //     IconButton(
// //       //       key: const Key('RecipePage_logout_iconButton'),
// //       //       icon: const Icon(Icons.exit_to_app),
// //       //       onPressed: () {
// //       //         context.read<AppBloc>().add(const AppLogoutRequested());
// //       //       },
// //       //     ),
// //       //   ],
// //       // ),
// //       body: SafeArea(
// //         child: Center(
// //           child: ListView(
// //             children: [
// //               Image.network(
// //                   'https://cors-proxy.logmeinmail.workers.dev/?url=${recipe.imageUrl}'),
// //               TitleWidget(recipe: recipe, textTheme: textTheme),
// //               Container(
// //                 margin: EdgeInsets.fromLTRB(8, 30, 8, 30),
// //                 child: Text(recipe.description),
// //               ),
// //               // Ingredients
// //               Padding(
// //                 padding: const EdgeInsets.all(8.0),
// //                 child: IngredientsWidget(
// //                   recipe: recipe,
// //                   textTheme: textTheme,
// //                 ),
// //               ),
// //               // Directions
// //               Text(
// //                 "Directions:",
// //                 style: textTheme.titleLarge,
// //               ),
// //               Text(
// //                 recipe.directions,
// //               ),
// //             ],
// //           ),
// //         ),
// //       ),
// //       floatingActionButton: FloatingActionButton(
// //         onPressed: () {
// //           showModalBottomSheet(
// //             context: context,
// //             builder: (context) => SingleChildScrollView(
// //               child: Container(
// //                 padding: EdgeInsets.only(
// //                     bottom: MediaQuery.of(context).viewInsets.bottom),
// //                 child: AddTaskScreen(
// //                   callback: (controller) {
// //                     // Provider.of<Tasks>(context, listen: false).addTask(
// //                     //   Task(name: controller.text),
// //                     // );
// //                     recipe = recipe.copyWith(title: controller.text);
// //                     Navigator.pop(context);
// //                   },
// //                 ),
// //               ),
// //             ),
// //             isScrollControlled: true,
// //           );
// //         },
// //         backgroundColor: Colors.lightBlueAccent,
// //         child: const Icon(
// //           Icons.add,
// //           color: Colors.white,
// //         ),
// //       ),
// //     );
// //   }

// // }

// class AddTaskScreen extends StatelessWidget {
//   final TextEditingController controller = TextEditingController();
//   final Function callback;
//   AddTaskScreen({super.key, required this.callback});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: const BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.only(
//           topLeft: Radius.circular(20.0),
//           topRight: Radius.circular(20.0),
//         ),
//       ),
//       child: Padding(
//         padding: const EdgeInsets.only(
//           left: 50.0,
//           top: 20.0,
//           right: 50.0,
//           bottom: 0.0,
//         ),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             const Center(
//               child: Text(
//                 "Add Task",
//                 style: TextStyle(
//                   color: Colors.lightBlueAccent,
//                   fontSize: 32.0,
//                   fontWeight: FontWeight.w600,
//                 ),
//               ),
//             ),
//             const SizedBox(
//               height: 10.0,
//             ),
//             TextField(
//               controller: controller,
//               autofocus: true,
//               textAlign: TextAlign.center,
//               decoration: const InputDecoration(
//                 enabledBorder: UnderlineInputBorder(
//                     borderSide: BorderSide(
//                   color: Colors.lightBlueAccent,
//                 )),
//                 focusedBorder: UnderlineInputBorder(
//                   borderSide: BorderSide(
//                     color: Colors.lightBlue,
//                     width: 2.0,
//                   ),
//                 ),
//               ),
//             ),
//             const SizedBox(
//               height: 20.0,
//             ),
//             TextButton(
//               style: TextButton.styleFrom(
//                 backgroundColor: Colors.lightBlueAccent,
//                 foregroundColor: Colors.white,
//                 textStyle: const TextStyle(fontSize: 20, color: Colors.white),
//               ),
//               onPressed: () {
//                 callback(controller);
//               },
//               child: const Text("Add"),
//             ),
//             const SizedBox(
//               height: 10.0,
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

// List<Widget> _ingredientsList(List<Ingredient> ingredients) {
//   return ingredients
//       .map<Widget>((ingredient) => OutlinedButton(
//             onPressed: () {},
//             // style: OutlinedButton.styleFrom(foregroundColor: Colors.black),
//             child: Text(ingredient.toString()),
//           ))
//       .toList();
// }

// class IngredientsWidget extends StatelessWidget {
//   const IngredientsWidget({
//     super.key,
//     required this.recipe,
//     required this.textTheme,
//   });

//   final Recipe recipe;
//   final TextTheme textTheme;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(10.0),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.grey.shade600,
//             offset: Offset(0, 2),
//             blurRadius: 5,
//           ),
//         ],
//       ),
//       child: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             Text(
//               "Ingredients",
//               style: textTheme.titleLarge?.copyWith(
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             ..._ingredientsList(recipe.ingredients),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class TitleWidget extends StatelessWidget {
//   const TitleWidget({
//     super.key,
//     required this.recipe,
//     required this.textTheme,
//   });

//   final Recipe recipe;
//   final TextTheme textTheme;

//   @override
//   Widget build(BuildContext context) {
//     Color textColor = Theme.of(context).colorScheme.tertiary;
//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: Container(
//         decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.circular(10.0),
//           boxShadow: [
//             BoxShadow(
//               color: Colors.grey.shade600,
//               offset: Offset(0, 2),
//               blurRadius: 5,
//             ),
//           ],
//         ),
//         child: Padding(
//           padding: const EdgeInsets.all(20.0),
//           child: Center(
//             child: Column(
//               children: [
//                 Text(
//                   "RECIPE",
//                   style: textTheme.titleMedium?.copyWith(
//                     color: textColor,
//                     fontStyle: FontStyle.italic,
//                     fontWeight: FontWeight.w300,
//                   ),
//                 ),
//                 Text(
//                   recipe.title,
//                   style: textTheme.titleLarge?.copyWith(
//                     color: textColor,
//                     fontWeight: FontWeight.w900,
//                   ),
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Text(
//                       "by ",
//                       style: textTheme.titleMedium?.copyWith(
//                         color: textColor,
//                         fontWeight: FontWeight.w900,
//                       ),
//                     ),
//                     Text(
//                       recipe.author,
//                       style: textTheme.titleMedium?.copyWith(
//                         color: textColor,
//                         fontWeight: FontWeight.w300,
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
