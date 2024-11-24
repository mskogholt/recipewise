import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipewise/authentication/authentication.dart';

// class HomePage extends StatelessWidget {
//   const HomePage({super.key});

//   static Page<void> page() => const MaterialPage<void>(child: HomePage());

//   @override
//   Widget build(BuildContext context) {
//     final textTheme = Theme.of(context).textTheme;
//     final user = context.select((AppBloc bloc) => bloc.state.user);
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Home'),
//         actions: <Widget>[
//           IconButton(
//             key: const Key('homePage_logout_iconButton'),
//             icon: const Icon(Icons.exit_to_app),
//             onPressed: () {
//               context.read<AppBloc>().add(const AppLogoutRequested());
//             },
//           ),
//         ],
//       ),
//       body: SafeArea(
//         child: Align(
//           alignment: const Alignment(0, -1 / 3),
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: <Widget>[
//               Avatar(photo: user.photo),
//               const SizedBox(height: 12),
//               Text(user.email ?? '', style: textTheme.titleLarge),
//               const SizedBox(height: 4),
//               Text(user.name ?? '', style: textTheme.headlineSmall),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "Signed in!",
              ),
              const SizedBox(
                height: 8.0,
              ),
              Text(
                '${context.read<AuthenticationBloc>().state.user.email}',
              ),
            ],
          ),
        ),
      ),
    );
  }
}