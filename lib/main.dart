import 'package:flutter/material.dart';
import 'features/auth/view/login_view.dart';
import 'features/auth/view/signup_view.dart';
import 'theme/theme.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:twitter_clone/features/auth/controller/auth_controller.dart';
import 'common/common.dart';
import 'features/home/view/home_view.dart';


void main() {
  runApp(const ProviderScope(child: MyApp()));
}
class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme.theme,
      //theme: ThemeData.dark(),
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        // primarySwatch: Colors.blue,
      home: ref.watch(currentUserAccountProvider).when(
            data: (user) {
              if (user != null) {
                return const HomeView();
              }
              return const SignUpView();
            },
            error: (error, stackTrace) => ErrorPage(
              error: error.toString(),
            ),
            loading: () => const LoadingPage(),
          ),
    );
  }
}