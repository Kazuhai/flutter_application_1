# Vicente Application 1 - Flutter Newsfeed

## Lab Activity 1: Discussion

This activity enhances the newsfeed by separating repeated visual elements into reusable Flutter widgets.

### Laboratory Discussion

Discuss how you integrate the Image to the newsfeed_card.dart and make it dynamic whether it has an image or not.

The post image is integrated through the reusable `PostImage` widget in `lib/widgets/post_image.dart`. `NewsfeedCard` exposes an optional `imageUrl` parameter. The card uses a widget-level condition: if `imageUrl` is null or empty, the `PostImage` widget is not rendered, so posts without images do not reserve an image area. When a URL is supplied, `NewsfeedCard` creates `PostImage`, and the widget uses `Image.network` with `BoxFit.cover`, a loading indicator, and an error fallback.

The user profile image uses the reusable `ProfileAvatar` widget, implemented with `CircleAvatar`. It displays the profile photo with `Image.network` and shows a person icon when the image cannot load. The Like, Comment, and Share controls use the reusable `FeedActionButton` widget. This implementation displays the like count directly and does not use reaction icons; pressing Like increments or decrements only the displayed count.

### Run the application

```bash
flutter pub get
flutter run
```
