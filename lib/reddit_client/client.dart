import 'package:draw/draw.dart';

class RedditClient {
  Reddit reddit;

  RedditClient() {
    final userAgent = 'foobar';
    final configUri = Uri.parse('draw.ini');

    this.reddit = Reddit.createWebFlowInstance(
        userAgent: userAgent, configUri: configUri);

    // Build the URL used for authentication. See `WebAuthenticator`
    // documentation for parameters.
    final auth_url = reddit.auth.url(['*'], 'foobar');

    // ...
    // Complete authentication at `auth_url` in the browser and retrieve
    // the `code` query parameter from the redirect URL.
    // ...

    // Assuming the `code` query parameter is stored in a variable
    // `auth_code`, we pass it to the `authorize` method in the
    // `WebAuthenticator`.
    await reddit.auth.authorize(auth_code);

    // If everything worked correctly, we should be able to retrieve
    // information about the authenticated account.
    print(await reddit.user.me());
  }
}
