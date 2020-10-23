import 'package:firefly/providers/subreddit_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() {
  runApp(ProviderScope(child: FireflyApp()));
}

class FireflyApp extends HookWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Firefly for Reddit',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: FireflyHomePage(),
    );
  }
}

class FireflyHomePage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final currentSubreddit = useProvider(subredditProvider);
    final postsOfSubreddit = useProvider(postProvider)
    return Container(
      child: Column(
        children: subreddits
            .map((subreddit) => Card(
                  child: Text(subreddit.name),
                ))
            .toList(growable: false),
      ),
    );
  }
}
