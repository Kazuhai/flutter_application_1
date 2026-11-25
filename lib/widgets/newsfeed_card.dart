import 'package:material_ui/material_ui.dart';
import 'package:vicente_application_1/widgets/feed_action_button.dart';
import 'package:vicente_application_1/widgets/post_image.dart';
import 'package:vicente_application_1/widgets/profile_avatar.dart';

class NewsfeedCard extends StatefulWidget {
  const NewsfeedCard({
    super.key,
    this.imageUrl = 'https://i.pinimg.com/736x/90/56/43/905643ce9de034b119d4dbedf672d72f.jpg',
  });

  final String? imageUrl;

  @override
  State<NewsfeedCard> createState() => _NewsfeedCardState();
}

class _NewsfeedCardState extends State<NewsfeedCard> {
  static const _profileImageUrl =
      'https://i.pinimg.com/736x/55/4b/85/554b85b3b5150c46b579186d0ee6ea3e.jpg';
  var _isLiked = false;
  var _likes = 177;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.zero,
      clipBehavior: Clip.antiAlias,
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(14, 14, 8, 10),
            child: Row(
              children: [
                const ProfileAvatar(imageUrl: _profileImageUrl),
                const SizedBox(width: 10),
                const Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Mitya',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 3),
                      Text(
                        'October 11 · 🌐',
                        style: TextStyle(color: Colors.black54, fontSize: 12),
                      ),
                    ],
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  tooltip: 'More options',
                  icon: const Icon(Icons.more_horiz),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(14, 0, 14, 8),
            child: Text(
  "I don't know what we're doing, but apparently, we're doing it together. "
  "One minute we're minding our own business, and the next we're somehow "
  "caught up in the same chaos. Nobody knows the plan, nobody knows what's "
  "going on, but somehow everyone is committed to making it work. "
  "At this point, we're just going with the flow, trusting each other, "
  "and hoping for the best. Whatever happens next, at least we're all "
  "confused together.",
),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(14, 0, 14, 12),
            child: Text('#hashtag', style: TextStyle(color: Color(0xFF1877F2))),
          ),
          if (widget.imageUrl != null && widget.imageUrl!.trim().isNotEmpty)
            PostImage(imageUrl: widget.imageUrl!),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
            child: Row(
              children: [
                Icon(
                  Icons.thumb_up,
                  size: 17,
                  color: Theme.of(context).colorScheme.primary,
                ),
                const SizedBox(width: 6),
                Text('$_likes', style: const TextStyle(color: Colors.black54)),
                const Spacer(),
                const Text(
                  '42 Comments  ·  5 Shares',
                  style: TextStyle(color: Colors.black54),
                ),
              ],
            ),
          ),
          const Divider(height: 1, indent: 12, endIndent: 12),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Row(
              children: [
                Expanded(
                  child: FeedActionButton(
                    icon: _isLiked ? Icons.thumb_up : Icons.thumb_up_outlined,
                    label: 'Like',
                    color: _isLiked
                        ? Theme.of(context).colorScheme.primary
                        : Colors.black54,
                    onPressed: () {
                      setState(() {
                        _isLiked = !_isLiked;
                        _likes += _isLiked ? 1 : -1;
                      });
                    },
                  ),
                ),
                Expanded(
                  child: FeedActionButton(
                    icon: Icons.mode_comment_outlined,
                    label: 'Comment',
                    onPressed: () {},
                  ),
                ),
                Expanded(
                  child: FeedActionButton(
                    icon: Icons.share_outlined,
                    label: 'Share',
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
          const Divider(height: 1, indent: 12, endIndent: 12),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              children: [
                const ProfileAvatar(imageUrl: _profileImageUrl, radius: 17),
                const SizedBox(width: 8),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Write a comment...',
                      isDense: true,
                      filled: true,
                      fillColor: Colors.grey.shade100,
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 14,
                        vertical: 10,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(22),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
